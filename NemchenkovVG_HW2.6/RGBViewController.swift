//
//  RGBViewController.swift
//  NemchenkovVG_HW2.6
//
//  Created by Владимир Немченков on 25.07.2021.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewColor(for rgbView: UIColor)
}

class RGBViewController: UIViewController {
    
    @IBOutlet var rgbViewVC: UIView!
        
//   хз надо или нет var rgbVCColor = UIColor.black
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension RGBViewController: SettingsViewControllerDelegate {
    func setNewColor(for rgbView: UIColor) {
        rgbViewVC.backgroundColor = rgbView
    }
}
    
