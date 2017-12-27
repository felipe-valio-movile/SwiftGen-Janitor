//
//  ArgumentsParserTests.swift
//  AssetsAnalyser
//
//  Created by Felipe Braunger Valio on 28/04/17.
//  Copyright © 2017 Movile. All rights reserved.
//

import XCTest

class ArgumentsParserTests: XCTestCase {
    
    func testParseNoArguments() {
        let arguments = ArgumentsParser().parse(arguments: [])
        XCTAssertNil(arguments)
    }
    
    func testParse1Argument() {
        let arguments = ArgumentsParser().parse(arguments: ["bla"])
        XCTAssertNil(arguments)
    }
    
    func testParse2Arguments() {
        let arguments = ArgumentsParser().parse(arguments: ["qwe", "asd"])
        XCTAssertNil(arguments)
    }
    
    func testParse3Arguments() {
        let arguments = ArgumentsParser().parse(arguments: ["arg1", "arg2", "arg3"])
        XCTAssertNotNil(arguments)
        XCTAssertEqual(arguments?["arg2"], "arg3")
    }
}
