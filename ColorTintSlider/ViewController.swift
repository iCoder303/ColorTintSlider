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
        labelRedValue.text = String(format: "%.2f",redSliderSet.value)
    }
    
    @IBAction func setGreenColor() {
        labelGreenValue.text = String(format: "%.2f", greenSliderSet.value)
    }
    
    @IBAction func setBlueColor() {
        labelBlueValue.text = String(format: "%.2f", blueSliderSet.value)
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



