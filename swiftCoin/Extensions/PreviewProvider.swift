//
//  PreviewProvider.swift
//  swiftCoin
//
//  Created by Johel Zarco on 13/12/22.
//

import Foundation
import SwiftUI

extension PreviewProvider{
    static var dev : DeveloperPreview{
        return DeveloperPreview.instance
    }
}

class DeveloperPreview{
    static let instance = DeveloperPreview()
    
//    let stat1 = StatiscticModel(title: "Overview", value: "99.99", percentageChange: "23.69")  // it's NOT recognized by the compiler
}
