//
//  CustomLoadingIndicator.swift
//  swiftCoin
//
//  Created by Johel Zarco on 20/12/22.
//

import SwiftUI

struct CustomLoadingIndicator: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(.circular)
            .tint(.white)
            .scaleEffect(x: 1.5, y: 1.5, anchor: .center)
            .frame(width: 80, height: 80)
            .background(Color(.systemGray))
            .cornerRadius(20)
    }
}

//struct CustomLoadingIndicator_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomLoadingIndicator()
//    }
//}
