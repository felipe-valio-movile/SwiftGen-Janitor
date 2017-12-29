//
//  StringsParser.swift
//  SwiftGen-Janitor
//
//  Created by Felipe B. Valio on 29/12/17.
//  Copyright © 2017 Felipe B. Valio. All rights reserved.
//

import Cocoa

struct StringAssets {
    let enumName: String
    let strings: [String]
}

class StringsParser {

    func parseStrings(fromFile filepath: String) -> StringAssets? {
        let fileHelper = FileHelper()
        
        guard let fileContent = fileHelper.contentOfFile(at: filepath) else {
            return nil
        }
        
        let enumContent = contentOfEnum(in: fileContent)
        
        let enumLines = enumContent.components(separatedBy: "\n")
        
        let enumItems = enumLines.filter { line in
            return line.contains("static let") || line.contains("static func")
        }
        
        let strings: [String] = enumItems.flatMap { item in
            return string(fromEnumItem: item)
        }
        
        let enumName = self.enumName(fromFileContent: fileContent)
        
        return StringAssets(enumName: enumName, strings: strings)
    }
    
    private func enumName(fromFileContent fileContent: String) -> String {
        return fileContent.string(after: "\nenum ", before: " {")
    }
    
    private func string(fromEnumItem item: String) -> String? {
        if item.range(of: "static let") != nil {
            return item.string(after: "static let ", before: " =")
        }
        
        if item.range(of: "static func") != nil {
            return item.string(after: "static func ", before: "(")
        }
        
        return nil
    }
    
    private func contentOfEnum(in str: String) -> String {
        guard let enumStartRange = firstOccurrence(ofRegex: "enum\\s\\w+\\s\\{\n", in: str) else {
            return ""
        }
        
        let enumContentToEndOfFile = str[enumStartRange.upperBound..<str.endIndex.encodedOffset]
        
        guard let enumEndRange = enumContentToEndOfFile.range(of: "\n}") else {
            return ""
        }
        
        let enumContent = enumContentToEndOfFile[0..<enumEndRange.lowerBound.encodedOffset]
        
        return enumContent
    }
    
    private func firstOccurrence(ofRegex pattern: String, in str: String) -> NSRange? {
        do {
            let regex = try NSRegularExpression(pattern: pattern)
            
            let results = regex.matches(in: str, range: NSRange(str.startIndex..., in: str))
            
            return results.first?.range

        } catch let error {
            print("invalid regex: \(error.localizedDescription)")
            return nil
        }
    }
}
