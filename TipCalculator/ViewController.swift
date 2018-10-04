// A simple tip calculator app. The user enters
// the bill and how much they would like to tip, and the
// app calculates how much the user should tip and what
// the total amount owed comes to
// CPSC 315
// Programming Assignment #4
// Kevin Mattappally
// 09/30/2018
// ViewController.swift

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
    
    // does all the calculations and formatting of the app. If the user
    // entered an invalid format, an alert is shown, otherwise, the tip amount
    // and total bill is calculated and shown on the app
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
        tipPercentTextField.text = tipCalculatorModel.getNumbersFormatted(number: numTipText * 0.01, isCurrency: false)
        tipCalculatorModel.tipPercent = numTipText
        tipCalculatorModel.bill = numBillText
        tipAmount.text = tipCalculatorModel.getNumbersFormatted(number: tipCalculatorModel.tipAmount, isCurrency: true)
        totalBill.text = tipCalculatorModel.getNumbersFormatted(number: tipCalculatorModel.totalBillAmount, isCurrency: true)
    }
}


