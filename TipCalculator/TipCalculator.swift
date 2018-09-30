// A simple tip calculator app. The user enters
// the bill and how much they would like to tip, and the
// app calculates how much the user should tip and what
// the total amount owed comes to
// CPSC 315
// Programming Assignment #4
// Kevin Mattappally
// 09/30/2018
// TipCalculator.swift

import Foundation

// Model TipCalculator class that keeps track of
// the bill, tip percent, tip amount, and total bill
class TipCalculator {
    var bill : Double
    var tipPercent: Double
    // calculates how much the user should tip
    var tipAmount: Double {
        return bill * tipPercent
    }
    // calculates the user's total bill
    var totalBillAmount: Double {
        return bill * tipPercent + bill
    }
    
    // default initializer that sets the bill to be 30 dollars
    // and the tip percent to be 20%
    init() {
        bill = 30
        tipPercent = 20
    }
    
    // initializes the bill to be whatever the user wants
    // the bill and tip percent to be
    init(bill: Double, tipPercent: Double) {
        self.bill = bill
        self.tipPercent = tipPercent
    }
    
    // formats the output so that no more or no less
    // than two decimal places are outputed. 
    func getNumbersFormatted(number: Double) -> String {
        let billFormat = NumberFormatter()
        billFormat.numberStyle = .currency
        billFormat.minimumFractionDigits = 2
        billFormat.maximumFractionDigits = 2
        return billFormat.string(for: number)!
    }
}
