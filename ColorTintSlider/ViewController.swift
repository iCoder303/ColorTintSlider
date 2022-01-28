//
//  ViewController.swift
//  ColorTintSlider
//
//  Created by Владимир Усов on 22.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorPalette: UIView!
    
    @IBOutlet weak var labelRedValue: UILabel!
    @IBOutlet weak var labelGreenValue: UILabel!
    @IBOutlet weak var labelBlueValue: UILabel!
    
    @IBOutlet weak var redSliderSet: UISlider!
    @IBOutlet weak var greenSliderSet: UISlider!
    @IBOutlet weak var blueSliderSet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorPalette.layer.cornerRadius = 10
    }
    
    @IBAction func setRedColor() {
        labelRedValue.text = String(round(redSliderSet.value * 100) / 100)
    }
    
    @IBAction func setGreenColor() {
        labelGreenValue.text = String(round(greenSliderSet.value * 100) / 100)
    }
    
    @IBAction func setBlueColor() {
        labelBlueValue.text = String(round(blueSliderSet.value * 100) / 100)
    }
    
    override func viewWillLayoutSubviews() {
        colorPalette.layer.backgroundColor = CGColor(
            red: CGFloat(redSliderSet.value),
            green: CGFloat(greenSliderSet.value),
            blue: CGFloat(blueSliderSet.value),
            alpha: CGFloat(1.0)
        )
    }
}



