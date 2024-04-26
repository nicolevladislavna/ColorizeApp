//
//  ViewController.swift
//  ColorizeApp
//
//  Created by Veronika Iskandarova on 26.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainColorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainColorView.layer.cornerRadius = 20
        updateColor()
    }

    @IBAction func colorizedRed() {
        redLabel.text = "Red: \(round(redSlider.value * 100) / 100)"
        updateColor()
    }
    
    @IBAction func colorizedGreen() {
        greenLabel.text = "Green: \(round(greenSlider.value * 100) / 100)"
        updateColor()
    }
    
    @IBAction func colorizedBlue() {
        blueLabel.text = "Blue: \(round(blueSlider.value * 100) / 100)"
        updateColor()
    }
    private func updateColor() {
            let red = CGFloat(redSlider.value)
            let green = CGFloat(greenSlider.value)
            let blue = CGFloat(blueSlider.value)
            mainColorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
}

