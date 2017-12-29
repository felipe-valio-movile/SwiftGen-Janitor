//
//  AssetsParserTests.swift
//  SwiftGen-JanitorTests
//
//  Created by Felipe B. Valio on 29/12/17.
//  Copyright © 2017 Felipe B. Valio. All rights reserved.
//

import XCTest

class AssetsParserTests: XCTestCase {

    func testParseAssets() {
        let assets = AssetsParser().parseAssets(fromFile: "\(projectPath)/SwiftGen-JanitorTests/AssetFiles/ImageAsset.swift")
        
        XCTAssertNotNil(assets)
        XCTAssertEqual(assets?.enumName, "Asset")
        XCTAssertEqual(assets?.images.count, 54)
        XCTAssertEqual(assets?.colors.count, 0)
    }
}
