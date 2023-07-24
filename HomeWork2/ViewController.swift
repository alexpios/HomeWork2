//
//  ViewController.swift
//  HomeWork2
//
//  Created by Alex on 24.07.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redNumber: UILabel!
    
    @IBOutlet var blueNumber: UILabel!
    @IBOutlet var greenNumber: UILabel!
 
    @IBOutlet var viewColor: UIView!
    
    @IBOutlet var sliderRed: UISlider!
    
    @IBOutlet var sliderGreen: UISlider!
    
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 255
        sliderRed.minimumTrackTintColor = .red
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 255
        sliderBlue.minimumTrackTintColor = .blue
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 255
        sliderGreen.minimumTrackTintColor = .green
        
        
    }

    @IBAction func redChange(_ sender: Any) {
        redNumber.text = String(Int(sliderRed.value))
        
    }
    
}

