//
//  ViewController.swift
//  TipCalculator
//
//  Created by Kevin Mattappally on 9/29/18.
//  Copyright © 2018 Kevin Mattappally. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tipCalculatorModel = TipCalculator()
    @IBOutlet var tipAmount: UILabel!
    @IBOutlet var totalBill: UILabel!
    @IBOutlet var tipPercentTextField: UITextField!
    @IBOutlet var billAmountTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func calculatePressed() {
        if let tipText = tipPercentTextField.text, let billText = billAmountTextField.text,
        let numTipText: Double = Double(tipText), let numBillText: Double = Double(billText) {
            tipCalculatorModel.tipPercent = numTipText * 0.01
            tipCalculatorModel.bill = numBillText
            tipAmount.text = String(tipCalculatorModel.tipAmount)
            totalBill.text = String(tipCalculatorModel.totalBillAmount)
        } else {
            print("Invaild entry")
        }
    }
    
    


}

