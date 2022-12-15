//
//  ChartData.swift
//  swiftCoin
//
//  Created by Johel Zarco on 14/12/22.
//

import Foundation

struct ChartData : Identifiable{
    let id = UUID().uuidString
    let date : Date
    let value : Double
}
