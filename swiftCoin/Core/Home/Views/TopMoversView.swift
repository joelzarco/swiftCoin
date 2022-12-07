//
//  TopMoversView.swift
//  swiftCoin
//
//  Created by Johel Zarco on 28/11/22.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel : HomeViewModel

    var body: some View {
        VStack(alignment: .leading){
            Text("Top Mover$")
                .font(.headline)
            ScrollView(.horizontal){
                HStack(spacing : 16){
                    ForEach(viewModel.topMovingCoins){ coin in
                        TopMoversItemView(coin: coin)
                    } //for
                } //HS
            } //Scr
        } // VS
        .padding()
    } // someV
}

//struct TopMoversView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversView()
//    }
//}
