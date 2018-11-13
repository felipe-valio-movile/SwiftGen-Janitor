//
//  Janitor.swift
//  SwiftGen-Janitor
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

public class Janitor {
    private let fileHelper = FileHelper()
    
    func analyse(projectPath: String, stringsFilename: String? = nil, imagesFilename: String? = nil) -> [SwiftGenAsset] {
        let startTime = Date().timeIntervalSince1970
        
        defer {
            print("Time to analyse assets: \(Date().timeIntervalSince1970 - startTime)")
        }
        
        let stringsPath = pathOfAssetFile(inProjectPath: projectPath, filename: stringsFilename)
        let imagesPath  = pathOfAssetFile(inProjectPath: projectPath, filename: imagesFilename)

        let assets = self.assets(fromStringsFilepath: stringsPath, imagesFilepath: imagesPath)
        
        let assetPaths: [String] = [stringsPath, imagesPath].compactMap { $0 }

        let sourceCodePaths = fileHelper.exclude(paths: assetPaths, fromPaths: fileHelper.sourceCodesAt(projectPath: projectPath))
        
        let unusedAssetsInSourceCode = self.unusedAssets(inSourceCodePaths: sourceCodePaths, assets: assets)
        let unusedAssetsInLayout = unusedAssetsInLayoutFiles(atProjectPath: projectPath, assets: assets)
        
        let unusedAssets = assets.filter {
            unusedAssetsInSourceCode.contains($0) && unusedAssetsInLayout.contains($0)
        }
        
        return unusedAssets
    }
    
    private func pathOfAssetFile(inProjectPath projectPath: String, filename: String? = nil) -> String? {
        guard let filename = filename else {
            return nil
        }
        
        return fileHelper.filepaths(endingWith: "\(filename).swift", inPath: projectPath).first
    }
    
    private func assets(fromStringsFilepath stringsFilepath: String? = nil, imagesFilepath: String? = nil) -> [SwiftGenAsset] {
        var assets: [SwiftGenAsset] = []
        
        if let stringsFilepath = stringsFilepath {
            if let strings = StringsParser().parseStrings(fromFile: stringsFilepath) {
                assets += strings.strings.map {
                    return SwiftGenAsset(namespace: strings.enumName, name: $0)
                }
            }
        }

        if let imagesFilepath = imagesFilepath {
            if let images = AssetsParser().parseAssets(fromFile: imagesFilepath) {
                assets += images.images.map {
                    return SwiftGenAsset(namespace: images.enumName, name: $0)
                }
            }
        }
        
        return assets
    }
    
    private func unusedAssets(inSourceCodePaths sourceCodePaths: [String], assets: [SwiftGenAsset]) -> [SwiftGenAsset] {
        var assets = assets
        
        sourceCodePaths.forEach { sourceCodePath in
            guard let fileContent = fileHelper.contentOfFile(at: sourceCodePath) else {
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

    private func unusedAssetsInLayoutFiles(atProjectPath projectPath: String, assets: [SwiftGenAsset]) -> [SwiftGenAsset] {
        let xibPaths = fileHelper.filepaths(endingWith: ".xib", inPath: projectPath)
        let storyboardPaths = fileHelper.filepaths(endingWith: ".storyboard", inPath: projectPath)
        
        let paths = xibPaths + storyboardPaths
        
        var assets = assets
        
        paths.forEach { path in
            guard let fileContent = fileHelper.contentOfFile(at: path) else {
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
        return fileHelper.filepaths(endingWith: "\(asset).swift", inPath: projectPath).first.flatMap {
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
}
