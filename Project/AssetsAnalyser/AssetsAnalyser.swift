//
//  AssetsAnalyser.swift
//  AssetsAnalyser
//
//  Created by Felipe Braunger Valio on 28/04/17.
//  Copyright © 2017 Movile. All rights reserved.
//

import Cocoa

struct Asset: Equatable {
    let namespace: String
    let name: String
    
    fileprivate var compound: String {
        return "\(namespace).\(name)"
    }
    
    static func ==(lhs: Asset, rhs: Asset) -> Bool {
        return lhs.compound == rhs.compound
    }
}

public class Analyser {
    private let fileHelper = FileHelper()
    
    func analyse(projectPath: String, assetClasses: [String]) -> [Asset] {
        let startTime = Date().timeIntervalSince1970
        
        defer {
            print("Time to analyse assets: \(Date().timeIntervalSince1970 - startTime)")
        }
        
        let assetPaths = pathOfAssetFilesIn(projectPath: projectPath, assetClasses: assetClasses)
        
        let assets = assetsFromFilepaths(assetPaths)
        
        let sourceCodePaths = fileHelper.exclude(paths: assetPaths.map {$0.1}, fromPaths: fileHelper.sourceCodesAt(projectPath: projectPath))
        
        let unusedAssetsInSourceCode = unusedAssetsInSourceCodePaths(sourceCodePaths, assets: assets)
        let unusedAssetsInInterface = unusedAssetsInInterfaceFilesAt(projectPath: projectPath, assets: assets)
        
        let unusedAssets = assets.filter {
            unusedAssetsInSourceCode.contains($0) && unusedAssetsInInterface.contains($0)
        }
        
        return unusedAssets
    }
    
    
    private func unusedAssetsInSourceCodePaths(_ sourceCodePaths: [String], assets: [Asset]) -> [Asset] {
        var assets = assets
        sourceCodePaths.forEach { sourceCodePath in
            guard let fileContent = fileHelper.openFileAt(sourceCodePath) else {
                return
            }
            let currentAssets = assets
            currentAssets.forEach { asset in
                if isAsset(asset, usedInSourceCodeContent: fileContent) {
                    assets = assets.filter {$0 != asset}
                }
            }
        }
        
        return assets
    }

    private func unusedAssetsInInterfaceFilesAt(projectPath: String, assets: [Asset]) -> [Asset] {
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
    
    private func assetsFromFilepaths(_ paths: [(String, String)]) -> [Asset] {
        return paths.reduce([]) { assets, path in
            return assets + assetsFromFileAt(path.1).map {
                return Asset(namespace: path.0, name: $0)
            }
        }
    }
    
    private func pathOfAssetFilesIn(projectPath: String, assetClasses: [String]) -> [(String, String)] {
        return assetClasses.flatMap { asset in
            return fileHelper.filepathsEndingWith("\(asset).swift", inPath: projectPath).first.flatMap {
                return (asset, $0)
            }
        }
    }

    private func isAsset(_ asset: Asset, usedInInterfaceContent str: String, afterIndex: String.Index? = nil) -> Bool {
        let afterRange: Range<String.Index> = (afterIndex ?? str.startIndex)..<str.endIndex
        
        if str.range(of: "\"\(asset.name)\"", options: .literal, range: afterRange, locale: nil) != nil {
            return true
        }
        
        if str.range(of: "\\\"\(asset.name)\\\"", options: .literal, range: afterRange, locale: nil) != nil {
            return true
        }
        
        return false
    }
    
    private func isAsset(_ asset: Asset, usedInSourceCodeContent content: String) -> Bool {
        return existsAsset(asset, inString: content)
    }
    
    private func existsAsset(_ asset: Asset, inString str: String, afterIndex: String.Index? = nil) -> Bool {
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
    
    private func isUsedAsset(_ asset: Asset, inString str: String, atRange range: Range<String.Index>) -> Bool {
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
    
    private func assetsFromFileAt(_ path: String) -> [String] {
        guard let str = fileHelper.openFileAt(path) else {
            return []
        }
        
        let lines = str.components(separatedBy: "\n")
        
        let caseLines = lines.filter { line in
            return line.contains(" case ") && !line.contains(":")
        }
        
        let enumCases: [String] = caseLines.flatMap { caseLine in
            return caseLine
                .replacingOccurrences(of: " case ", with: "")
                .replacingOccurrences(of: "`", with: "")
                .components(separatedBy: "=").first?
                .components(separatedBy: "(").first?
                .trimmingCharacters(in: CharacterSet.whitespaces)
        }
        
        return enumCases
    }
}
