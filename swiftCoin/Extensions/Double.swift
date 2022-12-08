//
//  Double.swift
//  swiftCoin
//
//  Created by Johel Zarco on 08/12/22.
//

import Foundation

// number formatter

extension Double{
    
    private var currencyFormatter : NumberFormatter{
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2 // min and max digits
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    private var numberFormatter : NumberFormatter{
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2 // min and max digits
        formatter.maximumFractionDigits = 4
        return formatter
    }
    
    func toCurrency() -> String{
        return currencyFormatter.string(for: self) ?? "$0.00"
    }
    
    func toPercentageString() -> String{
        // in this case self references to the Double type
        guard let numberAsString = numberFormatter.string(for: self) else { return ""}
        return numberAsString + "%"
    }
}
