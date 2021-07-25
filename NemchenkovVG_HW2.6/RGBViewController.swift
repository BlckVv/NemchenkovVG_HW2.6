//
//  RGBViewController.swift
//  NemchenkovVG_HW2.6
//
//  Created by Владимир Немченков on 25.07.2021.
//

import UIKit

class RGBViewController: UIViewController {
    
    @IBOutlet var rgbViewVC: UIView!
    
//   хз надо или нет var rgbVCColor = UIColor.black
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let rgbVC = segue.destination as? SettingsViewController else { return }
//        rgbVC.rgbView.backgroundColor = rgbVCColor или rgbViewVC
    }
}
