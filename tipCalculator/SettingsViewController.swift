//
//  SettingsViewController.swift
//  tipCalculator
//
//  Created by Vedant Singh on 7/28/20.
//  Copyright © 2020 Vedant Singh. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    let defaults = UserDefaults.standard
        
    @IBAction func defaultSlider(_ sender: UISlider) {
        defaultTipLabel.text = String(Int(sender.value))
        
        defaults.set(Int(sender.value), forKey: "myInt")
        defaults.synchronize()

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
