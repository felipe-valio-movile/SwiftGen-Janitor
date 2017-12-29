//
//  ImagesParser.swift
//  SwiftGen-Janitor
//
//  Created by Felipe B. Valio on 29/12/17.
//  Copyright © 2017 Felipe B. Valio. All rights reserved.
//

import Cocoa

struct ImageAssets {
    let enumName: String
    let images: [String]
    let colors: [String]
}

class AssetsParser {

    func parseAssets(fromFile filepath: String) -> ImageAssets? {
        let fileHelper = FileHelper()
        
        guard let fileContent = fileHelper.contentOfFile(at: filepath) else {
            return nil
        }

        let enumName = self.enumName(fromFileContent: fileContent)
        
        let images = allImages(fromFileContent: fileContent)
        
        return ImageAssets(enumName: enumName, images: images, colors: [])
    }

    private func enumName(fromFileContent fileContent: String) -> String {
        return fileContent.string(after: "\nenum ", before: " {")
    }
    
    private func allImages(fromFileContent fileContent: String) -> [String] {
        let imagesContent = fileContent.string(after: "static let allImages: [ImageAsset] = [", before: "]")
        
        return allItems(fromContent: imagesContent)
    }
    
    private func allColors(fromFileContent fileContent: String) -> [String] {
        let colorsContent = fileContent.string(after: "static let allColors: [ColorAsset] = [", before: "]")
        
        return allItems(fromContent: colorsContent)
    }
    
    private func allItems(fromContent content: String) -> [String] {
        let imageLines = content.components(separatedBy: "\n")
        
        let images: [String] = imageLines.flatMap { line in
            let sanitized = line
                .trimmingCharacters(in: CharacterSet.whitespaces)
                .replacingOccurrences(of: ",", with: "")
            
            return (sanitized.count > 0) ? sanitized : nil
        }
        
        return images
    }
}
