//
//  AssetsAnalyser.swift
//  AssetsAnalyser
//
//  Created by Felipe Braunger Valio on 28/04/17.
//  Copyright © 2017 Movile. All rights reserved.
//

import Cocoa

struct SwiftGenAsset: Equatable {
    let namespace: String
    let name: String
    
    fileprivate var compound: String {
        return "\(namespace).\(name)"
    }
    
    static func ==(lhs: SwiftGenAsset, rhs: SwiftGenAsset) -> Bool {
        return lhs.compound == rhs.compound
    }
}

public class Analyser {
    private let fileHelper = FileHelper()
    
    func analyse(projectPath: String, stringsFilename: String? = nil, imagesFilename: String? = nil) -> [SwiftGenAsset] {
        let startTime = Date().timeIntervalSince1970
        
        defer {
            print("Time to analyse assets: \(Date().timeIntervalSince1970 - startTime)")
        }
        
        let assets = self.assets(inProjectPath: projectPath, stringsFilename: stringsFilename, imagesFilename: imagesFilename)

        let assetPaths = pathOfAssetFilesIn(projectPath: projectPath, stringsFilename: stringsFilename, imagesFilename: imagesFilename)

        let sourceCodePaths = fileHelper.exclude(paths: assetPaths.map {$0.1}, fromPaths: fileHelper.sourceCodesAt(projectPath: projectPath))
        
        let unusedAssetsInSourceCode = unusedAssetsInSourceCodePaths(sourceCodePaths, assets: assets)
        let unusedAssetsInInterface = unusedAssetsInInterfaceFilesAt(projectPath: projectPath, assets: assets)
        
        let unusedAssets = assets.filter {
            unusedAssetsInSourceCode.contains($0) && unusedAssetsInInterface.contains($0)
        }
        
        return unusedAssets
    }
    
    private func pathOfAssetFilesIn(projectPath: String, stringsFilename: String? = nil, imagesFilename: String? = nil) -> [(String, String)] {
        let stringsPath = stringsFilename.flatMap { asset in
            return fileHelper.filepathsEndingWith("\(asset).swift", inPath: projectPath).first.flatMap {
                return (asset, $0)
            }
        }
        
        let imagesPath = stringsFilename.flatMap { asset in
            return fileHelper.filepathsEndingWith("\(asset).swift", inPath: projectPath).first.flatMap {
                return (asset, $0)
            }
        }
        
        return [stringsPath, imagesPath].flatMap { $0 }
    }

    private func assets(inProjectPath projectPath: String, stringsFilename: String? = nil, imagesFilename: String? = nil) -> [SwiftGenAsset] {
        var stringAssets: [SwiftGenAsset] = []
        var imageAssets: [SwiftGenAsset] = []
        
        if let stringsFilename = stringsFilename {
            if let stringsPath = pathOfAssetFile(inProjectPath: projectPath, asset: stringsFilename) {
                stringAssets = stringsFromFile(atPath: stringsPath.1).map {
                    return SwiftGenAsset(namespace: stringsPath.0, name: $0)
                }
            }
        }

        if let imagesFilename = imagesFilename {
            if let imagesPath = pathOfAssetFile(inProjectPath: projectPath, asset: imagesFilename) {
                imageAssets = imageAssetsFromFile(atPath: imagesPath.1)
            }
        }
        
        return imageAssets + stringAssets
    }
    
    private func unusedAssetsInSourceCodePaths(_ sourceCodePaths: [String], assets: [SwiftGenAsset]) -> [SwiftGenAsset] {
        var assets = assets
        sourceCodePaths.forEach { sourceCodePath in
            guard let fileContent = fileHelper.openFileAt(sourceCodePath) else {
                return
            }
            let currentAssets = assets
            currentAssets.forEach { asset in
                if asset.name == "btnPlayer" {
                    print(sourceCodePath)
                    print()
                }
                if isAsset(asset, usedInSourceCodeContent: fileContent) {
                    assets = assets.filter {$0 != asset}
                }
            }
        }
        
        return assets
    }

    private func unusedAssetsInInterfaceFilesAt(projectPath: String, assets: [SwiftGenAsset]) -> [SwiftGenAsset] {
        let xibPaths = fileHelper.filepathsEndingWith(".xib", inPath: projectPath)
        let storyboardPaths = fileHelper.filepathsEndingWith(".storyboard", inPath: projectPath)
        
        let paths = xibPaths + storyboardPaths
        
        var assets = assets
        paths.forEach { path in
            guard let fileContent = fileHelper.openFileAt(path) else {
                return
            }
            let currentAssets = assets
            currentAssets.forEach { asset in
                if isAsset(asset, usedInInterfaceContent: fileContent) {
                    assets = assets.filter {$0 != asset}
                }
            }
        }
        
        return assets
    }
    
    private func pathOfAssetFile(inProjectPath projectPath: String, asset: String) -> (String, String)? {
        return fileHelper.filepathsEndingWith("\(asset).swift", inPath: projectPath).first.flatMap {
            return (asset, $0)
        }
    }

    private func isAsset(_ asset: SwiftGenAsset, usedInInterfaceContent str: String, afterIndex: String.Index? = nil) -> Bool {
        let afterRange: Range<String.Index> = (afterIndex ?? str.startIndex)..<str.endIndex
        
        if str.range(of: "\"\(asset.name)\"", options: .literal, range: afterRange, locale: nil) != nil {
            return true
        }
        
        if str.range(of: "\\\"\(asset.name)\\\"", options: .literal, range: afterRange, locale: nil) != nil {
            return true
        }
        
        return false
    }
    
    private func isAsset(_ asset: SwiftGenAsset, usedInSourceCodeContent content: String) -> Bool {
        return existsAsset(asset, inString: content)
    }
    
    private func existsAsset(_ asset: SwiftGenAsset, inString str: String, afterIndex: String.Index? = nil) -> Bool {
        let afterRange: Range<String.Index> = (afterIndex ?? str.startIndex)..<str.endIndex
        
        guard let range = str.range(of: ".\(asset.name)", options: .literal, range: afterRange, locale: nil) else {
            return false
        }
        
        if isUsedAsset(asset, inString: str, atRange: range) {
            return true
        } else {
            return existsAsset(asset, inString: str, afterIndex: range.upperBound)
        }
    }
    
    private func isUsedAsset(_ asset: SwiftGenAsset, inString str: String, atRange range: Range<String.Index>) -> Bool {
        let nextCharacter = String(str[range.upperBound])
        
        guard !nextCharacter.isAlphanumeric else {
            return false
        }

        let previousCharacter = String(str[range.lowerBound])
        
        guard previousCharacter == "." else {
            return false
        }
        
        guard let previousWord = str.wordBeforeIndex(range.lowerBound) else {
            return true
        }
        
        return previousWord == asset.namespace || !previousWord.isAlphanumeric
    }
    
    private func imageAssetsFromFile(atPath path: String) -> [SwiftGenAsset] {
        guard let str = fileHelper.openFileAt(path) else {
            return []
        }
        
        let imageLines = str.string(after: "static let allImages: [ImageAsset] = [", before: "]")
        
        let lines: [String] = imageLines.components(separatedBy: "\n")
        
        let sanitizedLines: [String] = lines.map { line in
            return line
                .trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
                .replacingOccurrences(of: ",", with: "")
        }
        
        let nonEmptyLines = sanitizedLines.filter {
            $0.count > 0
        }
        
        return nonEmptyLines.map { image in
            return SwiftGenAsset(namespace: "Asset", name: image)
        }
    }

    private func stringsFromFile(atPath path: String) -> [String] {
        guard let str = fileHelper.openFileAt(path) else {
            return []
        }
        
        let lines = str.components(separatedBy: "\n")
        
        let caseLines = lines.filter { line in
            // "    static let aboutText = Localization.tr(\"Localizable\", \"ABOUT_TEXT\")"
            return (line.contains(" case ") && !line.contains(":")) || line.contains("static let ")
        }
        
        let enumCases: [String] = caseLines.flatMap { caseLine in
            return caseLine
                .replacingOccurrences(of: "static let ", with: "")
                .replacingOccurrences(of: "`", with: "")
                .components(separatedBy: "=").first?
                .components(separatedBy: "(").first?
                .trimmingCharacters(in: CharacterSet.whitespaces)
        }
        
        return enumCases
    }
}
