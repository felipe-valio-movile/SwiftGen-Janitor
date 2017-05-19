//
//  ExampleCode.swift
//  AssetsAnalyser
//
//  Created by Felipe Braunger Valio on 28/04/17.
//  Copyright © 2017 Movile. All rights reserved.
//

import Cocoa

class ExampleCode {

    func doNothing() {
        _ = Localization.journeyPopup("banana", "carambola")
        _ = Localization.journeyPopup("banana", "carambola").string
        _ = Localization.aboutSatyanatha.string
        _ = Localization.aboutSatyanatha
        _ = Localization.reminderTime
        _ = ImageAsset.btnPlayer.image
        _ = ImageAsset.btnPlayer
        let _: Localization = .connectionError
        
        self.embeddedVideoAbout()
    }
    
    func embeddedVideoAbout() {
        // decoy method
    }
}
