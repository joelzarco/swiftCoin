//
//  Date.swift
//  swiftCoin
//
//  Created by Johel Zarco on 14/12/22.
//

import Foundation

extension Date{
    // "2022-12-15T00:08:59.307Z"
    init(coinGeckoString : String){
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ" // from data example above
        let date = formatter.date(from: coinGeckoString) ?? Date() // needs a default value
        self.init(timeInterval: 0, since: date)
    }
    
    // date formatter for chartView
    private var shortDateFormatter : DateFormatter{
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd"
        return formatter
    }
    
    func asShortDateString()-> String{
        return shortDateFormatter.string(from: self)
    }
    
}
