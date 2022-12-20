//
//  CoinDetailsView.swift
//  swiftCoin
//
//  Created by Johel Zarco on 09/12/22.
//

import SwiftUI

struct CoinDetailsView: View {
    let coin : Coin
    let viewModel : CoinDetailsViewModel  // class level property
    
    init(coin: Coin) {
        self.coin = coin
        self.viewModel = CoinDetailsViewModel(coin: coin)
    }
    
    var body: some View {
            ScrollView(showsIndicators: false){ // to hide scrollV side lines
                // chart
                ChartView(viewModel: viewModel)
                    .frame(height: 250)
                    .padding(.vertical)
                    .shadow(color: viewModel.chartLineColor , radius: 10)
                // overview
                CoinDetailsSection(model: viewModel.overviewSectionModel)
                    .padding(.vertical)
                // additional details
                CoinDetailsSection(model: viewModel.additionalDetailsSectionModel)
                    .padding(.vertical)
            } // scroll
            .padding()
            .navigationTitle(coin.name)
    } // someV
}

//struct CoinDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinDetailsView()
//    }
//}
