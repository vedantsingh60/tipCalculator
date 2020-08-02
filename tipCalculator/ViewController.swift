//
//  ViewController.swift
//  tipCalculator
//
//  Created by Vedant Singh on 7/23/20.
//  Copyright © 2020 Vedant Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
  
    
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        let defaults = UserDefaults.standard
        
        let intValue = defaults.integer(forKey: "myInt")
        calculateTip(intValue)
        
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Calculator"
        billAmountTextField.becomeFirstResponder()

    }

    
    @IBAction func tipChanged(_ sender: UISlider) {
        splitSlider.value = roundf(sender.value)
        
        
    }
    
        
    

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
   
    @IBOutlet weak var splitSlider: UISlider!
    
    @IBOutlet weak var noOfPeople: UILabel!
    
    @IBAction func calculateTip(_ sender: Any) {
        
        noOfPeople.text = String(Int(splitSlider.value))
        
        let bill = Double(billAmountTextField.text!) ?? 0
        
    
        let tipPercent = [0.15, 0.18, 0.20]
        let tip = bill * tipPercent[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        let eachTip = total/Double(Int(splitSlider.value))
        
        splitLabel.text = String(format: "$%.2f" , eachTip)
        
        tipLabel.text = String(format: "$%.2f" , tip)
        
        totalLabel.text = String(format: "$%.2f" , total)
        
    }
    
}

