//
//  CoinRowView.swift
//  swiftCoin
//
//  Created by Johel Zarco on 29/11/22.
//

import SwiftUI

struct CoinRowView: View {
    var body: some View {
        HStack{
            // market cap rank
            Text("1")
                .font(.caption)
                .foregroundColor(.gray)
            // image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            // coin name info
            VStack(alignment: .leading, spacing: 4){
                Text("Bitcoin")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                Text("BTC")
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            Spacer()
            // coin price
            VStack(alignment: .trailing, spacing: 4){
                Text("20,000.69")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                Text("-6.90%")
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundColor(.pink)
            }
        } // HS
        .padding(.horizontal)
        .padding(.vertical, 4)
    } // someV
} // V

//struct CoinRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinRowView()
//    }
//}
