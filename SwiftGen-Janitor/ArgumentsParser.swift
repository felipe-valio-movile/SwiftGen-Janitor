//
//  ArgumentsParser.swift
//  AssetsAnalyser
//
//  Created by Felipe Braunger Valio on 28/04/17.
//  Copyright © 2017 Movile. All rights reserved.
//

import Cocoa

class ArgumentsParser {
    func parse(arguments: [String]) -> [String: String]? {
        guard arguments.count % 2 == 1, arguments.count > 1 else {
            return nil
        }
        
        var pairs: [(String, String)] = []
        
        for i in 1...arguments.count/2 {
            let arg1 = arguments[2*i-1]
            let arg2 = arguments[2*i]
            pairs.append((arg1, arg2))
        }
        
        var dict: [String: String] = [:]
        
        pairs.forEach {
            let key = $0.0.replacingOccurrences(of: "-", with: "")
            let value = $0.1
            dict[key] = value
        }
        
        return dict
    }
}
