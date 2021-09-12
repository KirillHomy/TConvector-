//
//  ViewController.swift
//  TConvector
//
//  Created by Кирилл on 16.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cenliusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slader: UISlider!{
        didSet {
            slader.maximumValue = 100
            slader.minimumValue = 0
            slader.value = 0
        }
    }
    
    @IBAction func sladerChanger(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        cenliusLabel.text = "\(temperatureCelsius)ºC"
        
        let fahrenheitTemperature = Int (round (sender.value * 9 / 5) + 32 )
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
    }
    
    
}

