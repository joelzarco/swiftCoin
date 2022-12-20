//
//  LazyNavigationView.swift
//  swiftCoin
//
//  Created by Johel Zarco on 20/12/22.
//

import Foundation
import SwiftUI

struct LazyNavigationView<Content : View> : View{
    let build : () -> Content
    
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    var body : Content{
        build()
    }
}
