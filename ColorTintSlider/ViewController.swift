//
//  ViewController.swift
//  ColorTintSlider
//
//  Created by Владимир Усов on 22.01.2022.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var colorPalette: UIView!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorPalette.layer.cornerRadius = 10
    }

    
    @IBAction func changeRedColor() {
        redValue.text = String(round(redSlider.value * 100) / 100)
        
    }
    
    @IBAction func changeGreenColor() {
        greenValue.text = String(round(greenSlider.value * 100) / 100)
        
    }
    
    
    @IBAction func changeBlueColor() {
        blueValue.text = String(round(blueSlider.value * 100) / 100)
        
    }
}


