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
        guard let tipText = tipPercentTextField.text, let billText = billAmountTextField.text,
        let numTipText: Double = Double(tipText), let numBillText: Double = Double(billText) else {
            let title = "Invalid Entry"
            let message = "Please enter a valid number"
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            return
        }
        billAmountTextField.text = tipCalculatorModel.getNumbersFormatted(number: numBillText, isCurrency: true)
        tipPercentTextField.text = tipCalculatorModel.getNumbersFormatted(number: numTipText, isCurrency: false)
        tipCalculatorModel.tipPercent = numTipText
        tipCalculatorModel.bill = numBillText
        tipAmount.text = tipCalculatorModel.getNumbersFormatted(number: tipCalculatorModel.tipAmount, isCurrency: true)
        totalBill.text = tipCalculatorModel.getNumbersFormatted(number: tipCalculatorModel.totalBillAmount, isCurrency: true)
    }
}


