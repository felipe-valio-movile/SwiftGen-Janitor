//
//  StringsParserTests.swift
//  SwiftGen-JanitorTests
//
//  Created by Felipe B. Valio on 29/12/17.
//  Copyright © 2017 Felipe B. Valio. All rights reserved.
//

import XCTest

class StringsParserTests: XCTestCase {

    func testParseStrings() {
        let strings = StringsParser().parseStrings(fromFile: "\(projectPath)/SwiftGen-JanitorTests/AssetFiles/Localization.swift")
        
        XCTAssertNotNil(strings)
        XCTAssertEqual(strings?.enumName, "Localization")
        XCTAssertEqual(strings?.strings.count, 232)
    }
}
