//
//  Animation.swift
//  AnimationApp
//
//  Created by Rustam Cherezbiev on 25.01.2024.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getValues() -> Animation {
        Animation(
            preset: DataStore.shared.animationPreset.randomElement()?.rawValue ?? "",
            curve: DataStore.shared.animationCurve.randomElement()?.rawValue ?? "",
            force: CGFloat.random(in: 0.1...5.0),
            duration: CGFloat.random(in: 0.5...5.0),
            delay: CGFloat.random(in: 0.1...5.0)
        )
    }
}
