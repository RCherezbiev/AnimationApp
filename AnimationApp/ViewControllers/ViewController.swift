//
//  ViewController.swift
//  AnimationApp
//
//  Created by Rustam Cherezbiev on 25.01.2024.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var runAnimateButton: UIButton!
    
    private var startAnimation = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presetLabel.text = "squeezeUp"
        curveLabel.text = "easeOut"
        forceLabel.text = "1.24"
        durationLabel.text = "0.82"
        delayLabel.text = "0.30"
    }

    @IBAction func runAnimateAction() {
        if startAnimation {
            updateAnimationValues()
            animationView.animate()
            runAnimateButton.setTitle("Run \(presetLabel.text ?? "")", for: .normal)
            startAnimation.toggle()
        } else {
            getRandomValues()
            updateAnimationValues()
            animationView.animate()
            runAnimateButton.setTitle("Run \(presetLabel.text ?? "")", for: .normal)

        }
        
    }
    
    func getRandomValues() {
        presetLabel.text = Animation.getValues().title
        curveLabel.text = Animation.getValues().curve
        forceLabel.text = String(Animation.getValues().force)
        durationLabel.text = String(Animation.getValues().duration)
        delayLabel.text = String(Animation.getValues().delay)
        
    }
    
    func updateAnimationValues() {
        animationView.animation = presetLabel.text ?? ""
        animationView.curve = curveLabel.text ?? ""
        animationView.force = CGFloat(Double(forceLabel.text ?? "0") ?? 0.0)
        animationView.duration = CGFloat(Double(durationLabel.text ?? "0") ?? 0.0)
        animationView.delay = CGFloat(Double(delayLabel.text ?? "0") ?? 0.0)
        
    }
}

