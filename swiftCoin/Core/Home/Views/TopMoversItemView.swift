//
//  TopMoversItemView.swift
//  swiftCoin
//
//  Created by Johel Zarco on 28/11/22.
//

import SwiftUI

struct TopMoversItemView: View {
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
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                Text("$20,666.00")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            // coin percent change
            Text("+1.99")
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
