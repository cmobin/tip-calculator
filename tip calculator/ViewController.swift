//
//  ViewController.swift
//  tip calculator
//
//  Created by Mobin Uddin Chowdhury on 7/29/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalPerson: UITextField!
    @IBOutlet weak var eachPay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ontap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }

    @IBAction func calculatetip(_ sender: Any) {
            // Get the bill amount
            let bill = Double(billField.text!) ?? 0
            let totalperson = Double(totalPerson.text!) ?? 0
            //Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let finalpay = total/totalperson
            //update the tip and total
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        eachPay.text = String(format: "$%.2f", finalpay)
    }
}

