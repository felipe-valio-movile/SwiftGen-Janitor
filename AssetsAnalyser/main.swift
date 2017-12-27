//
//  main.swift
//  AssetsAnalyser
//
//  Created by Felipe Braunger Valio on 28/04/17.
//  Copyright © 2017 Movile. All rights reserved.
//

import Foundation

guard let arguments = ArgumentsParser().parse(arguments: CommandLine.arguments) else {
    print("error: [Assets Analyser] Missing parameters")
    exit(1)
}

guard let projectPath = arguments["path"] else {
    print("error: [Assets Analyser] Missing project path parameter")
    exit(1)
}

guard let assetsRaw = arguments["assets"] else {
    print("error: [Assets Analyser] Missing assets parameter")
    exit(1)
}

let assetsList = assetsRaw.components(separatedBy: ",").map {
    $0.trimmingCharacters(in: CharacterSet.whitespaces)
}

let unusedAssets = Analyser().analyse(projectPath: projectPath, assetClasses: assetsList)

if unusedAssets.count == 0 {
    print("All assets are well used \\(^~^)/")
} else {
    print("Found \(unusedAssets.count) unused assets (ˇ෴ˇ)")
    
    unusedAssets.forEach { asset in
        print("warning: (•̀o•́)ง \(asset.namespace) \(asset.name) unused")
    }
}

