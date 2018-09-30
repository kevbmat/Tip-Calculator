//
//  TipCalculator.swift
//  TipCalculator
//
//  Created by Kevin Mattappally on 9/29/18.
//  Copyright © 2018 Kevin Mattappally. All rights reserved.
//

import Foundation

class TipCalculator {
    var bill : Double
    var tipPercent: Double
    var tipAmount: Double {
        return bill * tipPercent
    }
    var totalBillAmount: Double {
        return bill * tipPercent + bill
    }
    
    init() {
        bill = 30
        tipPercent = 20
    }
    
    init(bill: Double, tipPercent: Double) {
        self.bill = bill
        self.tipPercent = tipPercent
    }
    
    func getNumbersFormatted(number: Double) -> String {
        let billFormat = NumberFormatter()
        billFormat.minimumFractionDigits = 2
        billFormat.maximumFractionDigits = 2
        return billFormat.string(for: number)!
    }
}
