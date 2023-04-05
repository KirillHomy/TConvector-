//
//  ViewController.swift
//  TConvector
//
//  Created by Кирилл on 16.03.2021.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Private IBOutlet
    @IBOutlet private weak var cenliusLabel: UILabel!
    @IBOutlet private weak var fahrenheitLabel: UILabel!
    @IBOutlet private weak var slader: UISlider! {
        didSet {
            slader.maximumValue = 100
            slader.minimumValue = 0
            slader.value = 0
        }
    }

    // MARK: - Private IBAction
    @IBAction private func sladerChanger(_ sender: UISlider) {
        setupSladerChanger(sender)
    }

}

// MARK: - private extension
private extension ViewController {

    func setupSladerChanger(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        cenliusLabel.text = "\(temperatureCelsius)ºC"

        let fahrenheitTemperature = Int (round (sender.value * 9 / 5) + 32 )
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
    }

}
