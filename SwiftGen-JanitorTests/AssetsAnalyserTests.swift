//
//  AssetsAnalyserTests.swift
//  AssetsAnalyserTests
//
//  Created by Felipe Braunger Valio on 28/04/17.
//  Copyright © 2017 Movile. All rights reserved.
//

import XCTest

class AssetsAnalyserTests: XCTestCase {

    func testAnalyseAllAssets() {
        let projectPath = "/Users/felipe.valio/projetos/ios/SwiftGen-Janitor"
        let unusedAssets = Analyser().analyse(projectPath: projectPath, stringsFilename: "Localization", imagesFilename: "ImageAsset").map {
            "\($0.namespace) \($0.name)"
        }
        
        XCTAssertGreaterThan(unusedAssets.count, 0)
        
        XCTAssertFalse(unusedAssets.contains("Localization journeyPopup"))
        XCTAssertFalse(unusedAssets.contains("Localization aboutSatyanatha"))
        XCTAssertFalse(unusedAssets.contains("Localization reminderTime"))
        XCTAssertFalse(unusedAssets.contains("Asset btnPlayer"))
        XCTAssertFalse(unusedAssets.contains("Asset ilustrTime"))

        XCTAssertTrue(unusedAssets.contains("Localization changeTime"))
        XCTAssertTrue(unusedAssets.contains("Localization reminder"))
        XCTAssertTrue(unusedAssets.contains("Localization begin"))
        XCTAssertTrue(unusedAssets.contains("Asset Categories.ilustrCatMomentos"))
        
        unusedAssets.forEach {
            print("\($0)")
        }
    }
}
