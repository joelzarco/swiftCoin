//
//  CoinDetailsView.swift
//  swiftCoin
//
//  Created by Johel Zarco on 09/12/22.
//

import SwiftUI

struct CoinDetailsView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                // chart
                
                // overview
                CoinDetailsSection()
                    .padding(.vertical)
                // additional details
                CoinDetailsSection()
                    .padding(.vertical)
            } // scroll
            .padding()
            .navigationTitle("Bitcoin")
        } // nav
    }
}

//struct CoinDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinDetailsView()
//    }
//}
