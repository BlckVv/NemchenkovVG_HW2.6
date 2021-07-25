//
//  ViewController.swift
//  NemchenkovVG_HW2.6
//
//  Created by Владимир Немченков on 25.07.2021.
//

import UIKit



class SettingsViewController: UIViewController {
    
    @IBOutlet weak var redStateLabel: UILabel!
    @IBOutlet weak var greenStateLabel: UILabel!
    @IBOutlet weak var blueStateLabel: UILabel!
    
    @IBOutlet weak var redStateTextField: UITextField!
    @IBOutlet weak var greenStateTextField: UITextField!
    @IBOutlet weak var blueStateTextField: UITextField!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var doneButton: UIButton!
    
    @IBOutlet weak var settingsRGBView: UIView!
    
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        redStateTextField.text = String(redSlider.value)
        //        greenStateTextField.text = String(greenSlider.value)
        //        blueStateTextField.text = String(blueSlider.value)
        
        redStateLabel.text = String(format: "%.2f", redSlider.value)
        greenStateLabel.text = String(format: "%.2f", greenSlider.value)
        blueStateLabel.text = String(format: "%.2f", blueSlider.value)
        
        //        redStateTextField.text = String(format: "%.2f", redSlider.value)
        //        greenStateTextField.text = String(format: "%.2f", greenSlider.value)
        //        blueStateTextField.text = String(format: "%.2f", blueSlider.value)
        
        setColor()
        setValue(for: redStateLabel, greenStateLabel,blueStateLabel)
        
    }
    
    
    @IBAction func rgbAction(_ sender: UISlider) {
        
        setColor()
        
        switch sender {
        case redSlider: setValue(for: redStateLabel)
        case greenSlider: setValue(for: greenStateLabel)
        default: setValue(for: blueStateLabel)
        }
        
        //        redStateTextField.text = String(round(100 * redSlider.value) / 100)
        //        greenStateTextField.text = String(round(100 * greenSlider.value) / 100)
        //        blueStateTextField.text = String(round(100 * blueSlider.value) / 100)
        
    }
    
    @IBAction func doneButtonPressed() {
        delegate.setNewColor(for: settingsRGBView.backgroundColor ?? UIColor.clear)
        dismiss(animated: true)
    }
    
    private func setColor() {
        settingsRGBView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

extension SettingsViewController {
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redStateLabel:
                label.text = string(from: redSlider)
            case greenStateLabel:
                label.text = string(from: greenSlider)
            default:
                label.text = string(from: blueSlider)
            }
        }
    }
}
