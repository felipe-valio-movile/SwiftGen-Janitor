//
//  String+Search.swift
//  SwiftGen-Janitor
//
//  Created by Felipe B. Valio on 28/12/17.
//  Copyright © 2017 Felipe B. Valio. All rights reserved.
//

import Cocoa

extension String {

    func string(after: String, before: String) -> String {
        
        guard let range1 = self.range(of: after) else {
            return ""
        }

        let str1 = self[range1.upperBound..<self.endIndex]

        guard let range2 = str1.range(of: before) else {
            return ""
        }
        
        let str2 = str1[str1.startIndex..<range2.lowerBound]

        return String(str2)
    }
}
