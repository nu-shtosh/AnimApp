//
//  ViewController.swift
//  AnimApp
//
//  Created by Илья Дубенский on 02.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var animationView: SpringView!

    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()
    }

    // MARK: - Private properties
    private var randomAnimation = Animation.getRandomAnimation()

    // MARK: - IBActions
    @IBAction func runButtonDidTapped(_ sender: UIButton) {
        setLabels()

        animationView.animation = randomAnimation.name
        animationView.curve = randomAnimation.curve
        animationView.force = CGFloat(randomAnimation.force)
        animationView.duration = CGFloat(randomAnimation.duration)
        animationView.delay = CGFloat(randomAnimation.delay)
        animationView.animate()

        randomAnimation = Animation.getRandomAnimation()
        sender.setTitle("Run \(randomAnimation.name)", for: .normal)
    }
}

// MARK: - Private Methods
extension ViewController {
    private func setLabels() {
        presetLabel.text = "Preset: \(randomAnimation.name)"
        curveLabel.text = "Curve: \(randomAnimation.curve)"
        forceLabel.text = "Force: \(String(format: "%.2f", randomAnimation.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f", randomAnimation.duration))"
        delayLabel.text = "Delay: \(String(format: "%.2f", randomAnimation.delay))"
    }
}
