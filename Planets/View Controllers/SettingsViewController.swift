//
//  SettingsViewController.swift
//  Planets
//
//  Created by Peggy Wollenhaupt on 6/11/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var shouldShowPlutoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        // get whether pluto should be a planet from UserDefaults
        let shouldShowPluto = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
        shouldShowPlutoSwitch.isOn = shouldShowPluto
    }
    
    @IBAction func done(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func changeShouldShowPluto(_ sender: Any) {
        
        // set whether pluto should be a planet or not in UserDefaults
        UserDefaults.standard.set(shouldShowPlutoSwitch.isOn, forKey: .shouldShowPlutoKey)
        
    }
    
}
