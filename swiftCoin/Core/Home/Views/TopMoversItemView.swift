//
//  TopMoversItemView.swift
//  swiftCoin
//
//  Created by Johel Zarco on 28/11/22.
//

import SwiftUI

struct TopMoversItemView: View {
    let coin : Coin
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2){
            // image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            // coin info
            HStack(spacing: 4){
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                Text("\(coin.currentPrice)")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            // coin percent change
            Text("\(coin.priceChangePercentage24H)")
                .font(.title)
                .foregroundColor(.green)
        } // VS
        .frame(width: 140, height: 140)
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
