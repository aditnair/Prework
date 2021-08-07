//
//  ViewController.swift
//  Prework
//
//  Created by Aditya Nair on 8/6/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmount: UITextField!
    
    @IBOutlet weak var tipAmount: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalAmount: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tipCalculate(_ sender: Any) {
        
        let bill = Double(billAmount.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipAmount.text = String(format: "$%.2f", tip)
        
        totalAmount.text = String(format: "$%.2f", total)
        
    }
    
    

}

