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
        let topColor = UIColor(red: 15/255.0, green: 118/255.0, blue: 128/255.0, alpha: 1)
        
        let bottomColor = UIColor(red: 84/255.0, green: 187/255.0, blue: 187/255, alpha: 1)
        
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLocations: [Float] = [0.0, 1.0]
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations as [NSNumber]
        
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
     
        
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

