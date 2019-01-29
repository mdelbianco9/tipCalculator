//
//  ViewController.swift
//  tipCalculator
//
//  Created by Marcus Del Bianco on 1/27/19.
//  Copyright © 2019 Marcus Del Bianco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
//Tap Function to Dismiss Key Board
    @IBAction func onTap(_ sender: Any) {
        print("Hello")
//        Dismisses Keyboard
        view.endEditing(true)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
//        Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
//        Calculate tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
//        Second part acts like a for loop
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
//        Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

