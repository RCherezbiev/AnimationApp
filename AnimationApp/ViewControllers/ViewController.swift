//
//  ViewController.swift
//  AnimationApp
//
//  Created by Rustam Cherezbiev on 25.01.2024.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var runAnimateButton: UIButton!
    
    private var randomAnimation = Animation.getValues()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomValues()
    }

    @IBAction func runAnimateAction() {
        getRandomValues()
        updateAnimationValues()
        animationView.animate()
        
        randomAnimation = Animation.getValues()
        runAnimateButton.setTitle("Run \(randomAnimation.preset)", for: .normal)
    }
    
    private func getRandomValues() {
        presetLabel.text = randomAnimation.preset
        curveLabel.text = randomAnimation.curve
        forceLabel.text = String(format: "%.2f", randomAnimation.force)
        durationLabel.text = String(format: "%.2f", randomAnimation.duration)
        delayLabel.text = String(format: "%.2f", randomAnimation.delay)
    }
    
    private func updateAnimationValues() {
        animationView.animation = presetLabel.text ?? ""
        animationView.curve = curveLabel.text ?? ""
        animationView.force = Double(forceLabel.text ?? "0") ?? 0.0
        animationView.duration = Double(durationLabel.text ?? "0") ?? 0.0
        animationView.delay = Double(delayLabel.text ?? "0") ?? 0.0
    }
}

