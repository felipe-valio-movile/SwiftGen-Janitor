//
//  StringWordTests.swift
//  SwiftGen-Janitor
//
//  Created by Felipe Braunger Valio on 16/05/17.
//  Copyright © 2017 Movile. All rights reserved.
//

import XCTest

class StringWordTests: XCTestCase {

    func test() {
        
        let str = "qwe.asd"
        let index = str.index(str.startIndex, offsetBy: 3)
        let word = str.wordBeforeIndex(index)
        
        XCTAssertEqual(word, "qwe")
        
    }
}
