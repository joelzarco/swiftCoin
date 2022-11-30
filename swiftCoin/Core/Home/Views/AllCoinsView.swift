//
//  AllCoinsView.swift
//  swiftCoin
//
//  Created by Johel Zarco on 29/11/22.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("All Coin$")
                .font(.headline)
                .padding()
            HStack{
                Text("Coin")
                Spacer()// to move elements to edges
                Text("Price$")
                
            }.font(.caption)// apply to entire HStack
                .foregroundColor(.gray)
                .padding(.horizontal)
            
            ScrollView{
                VStack{
                    ForEach(0..<20, id: \.self){ _ in
                        CoinRowView()
                    }
                }
            } // scroll
        } // VS
    } // someV
} // V

//struct AllCoinsView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinsView()
//    }
//}
