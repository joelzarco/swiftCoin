//
//  TopMoversItemView.swift
//  swiftCoin
//
//  Created by Johel Zarco on 28/11/22.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin : Coin
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2){
            // image
//            Image(systemName: "bitcoinsign.circle.fill")
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            // coin info
            HStack(spacing: 4){
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.primaryColor)
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            // coin percent change
            Text(coin.priceChangePercentage24H.toPercentageString())
                .font(.title)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
        } // VS
        .frame(width: 140, height: 140)
        .background(Color.theme.itemBackgroundColor)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        }
    }
}

//struct TopMoversItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversItemView()
//    }
//}
