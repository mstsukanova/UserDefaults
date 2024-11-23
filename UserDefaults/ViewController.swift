//
//  ViewController.swift
//  UserDefaults
//
//  Created by Мария Цуканова on 23.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var light: UIImageView!
    
    @IBOutlet weak var dark: UIImageView!
    
    @IBOutlet weak var switcher: UISwitch!
    
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        dark.isHidden = true
        light.isHidden = false
        
    }
    
    
    @IBAction func `switch`(_ sender: UISwitch) {
        if switcher.isOn == true {
            view.backgroundColor = .lightGray
            dark.isHidden = true
            light.isHidden = false
            userDefaults.set(true, forKey: "isDark")
        } else {
            view.backgroundColor = .black
            dark.isHidden = false
            light.isHidden = true
            userDefaults.set(false, forKey: "isDark")
        }
        
    }
}
    


