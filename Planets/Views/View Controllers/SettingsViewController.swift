//
//  SettingsViewController.swift
//  Planets
//
//  Created by Michael Flowers on 5/2/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

extension String {
    static let shouldShowPlutoKey = "shouldShowPlutoKey"
}

class SettingsViewController: UIViewController {

    @IBOutlet weak var shouldShowPlutoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
    }
    
    @IBAction func plutoSwitchToggled(_ sender: UISwitch) {
        //update the save data
        let userDefaults = UserDefaults.standard
        
        //isOn is a boolean value. we are assgning the boolean
        userDefaults.set(sender.isOn, forKey: .shouldShowPlutoKey)
    }
    
    private func updateViews(){
        //TODO: Update the switch based on saved data
       shouldShowPlutoSwitch.isOn = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
    }
    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
