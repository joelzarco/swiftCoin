//
//  Color.swift
//  swiftCoin
//
//  Created by Johel Zarco on 09/12/22.
//

import Foundation
import SwiftUI
// to avoid mispelling color

extension Color{
    static let theme = ColorTheme()
}

struct ColorTheme{
    let primaryColor = Color("PrimaryTextColor")
    let itemBackgroundColor = Color("ItemBackgroundColor")
}
