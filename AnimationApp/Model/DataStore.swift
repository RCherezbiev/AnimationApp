//
//  DataStore.swift
//  AnimationApp
//
//  Created by Rustam Cherezbiev on 26.01.2024.
//

import Foundation
import SpringAnimation

final class DataStore {
    let animationList = AnimationPreset.allCases
//    [
//        "pop",
//        "slideLeft",
//        "slideRight",
//        "slideDown",
//        "slideUp",
//        "squeezeLeft",
//        "squeezeRight",
//        "squeezeDown",
//        "squeezeUp",
//        "fadeIn",
//        "fadeOut",
//        "fadeOutIn",
//        "fadeInLeft",
//        "fadeInRight",
//        "fadeInDown",
//        "fadeInUp",
//        "zoomIn",
//        "zoomOut",
//        "fall",
//        "shake",
//        "flipX",
//        "flipY",
//        "morph",
//        "squeeze",
//        "flash",
//        "wobble",
//        "swing",
//    ]

    let curveList = AnimationCurve.allCases
    
    let force = Double.random(in: 1.0...5.0)
    let delay = Double.random(in: 1.0...5.0)
    let duration = Double.random(in: 0.5...5.0)

    func getRandomAnimation() -> String {
        animationList.randomElement()?.rawValue ?? ""
    }

    func getRandomCurve() -> String {
        curveList.randomElement()?.rawValue ?? ""
    }
    
}
