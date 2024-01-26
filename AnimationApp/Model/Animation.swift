//
//  Animation.swift
//  AnimationApp
//
//  Created by Rustam Cherezbiev on 25.01.2024.
//

import Foundation

struct Animation {
    var title: String
    var curve: String
    
    var force: Double
    var delay: Double
    var duration: Double
    
    
    static func getValues() -> Animation {
        Animation(
            title: DataStore().getRandomAnimation(),
            curve: DataStore().getRandomCurve(),
            force: (DataStore().force * 100.0).rounded() / 100.0,
            delay: (DataStore().delay * 100.0).rounded() / 100.0,
            duration: (DataStore().duration * 100.0).rounded() / 100.0
        )
    }
}
