//
//  String+Character.swift
//  AssetsAnalyser
//
//  Created by Felipe Braunger Valio on 28/04/17.
//  Copyright © 2017 Movile. All rights reserved.
//

import Cocoa

extension String {
    subscript (i: Int) -> Character {
        let index = self.index(self.startIndex, offsetBy: i)
        return self[index]
    }
    
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    subscript (r: Range<Int>) -> String {
        let start = self.index(self.startIndex, offsetBy: r.lowerBound)
        let end   = self.index(self.startIndex, offsetBy: r.upperBound - r.lowerBound)
        return String(self[Range(start ..< end)])
    }
}

extension String {
    func wordBeforeIndex(_ index: String.Index) -> String? {
        guard index > self.startIndex else {
            return ""
        }
        
        let char = String(self[self.index(before: index)])
        
        guard char.isAlphanumeric else {
            return nil
        }

        if let previousWord = wordBeforeIndex(self.index(before: index)) {
            return previousWord + char
        } else {
            return char
        }
    }
}
