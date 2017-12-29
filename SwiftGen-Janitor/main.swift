//
//  main.swift
//  SwiftGen-Janitor
//
//  Created by Felipe Braunger Valio on 28/04/17.
//  Copyright © 2017 Movile. All rights reserved.
//

import Foundation

let projectName = "SwiftGen-Janitor"

guard let arguments = ArgumentsParser().parse(arguments: CommandLine.arguments) else {
    print("error: [\(projectName)] Missing parameters")
    exit(1)
}

guard let projectPath = arguments["path"] else {
    print("error: [\(projectName)] Missing project path parameter")
    exit(1)
}

let strings = arguments["strings"]
let images  = arguments["images"]

let unusedAssets = Janitor().analyse(projectPath: projectPath, stringsFilename: strings, imagesFilename: images)

if unusedAssets.count == 0 {
    print("All assets are well used \\(^~^)/")
} else {
    print("Found \(unusedAssets.count) unused assets (ˇ෴ˇ)")
    
    unusedAssets.forEach { asset in
        print("warning: (•̀o•́)ง \(asset.namespace) \(asset.name) unused")
    }
}

