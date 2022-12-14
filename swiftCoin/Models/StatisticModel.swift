//
//  StatisticModel.swift
//  swiftCoin
//
//  Created by Johel Zarco on 13/12/22.
//

import Foundation

struct StatiscticModel : Identifiable{
    
    let id = UUID().uuidString
    let title : String
    let value : String
    let percentageChange : Double?
}
