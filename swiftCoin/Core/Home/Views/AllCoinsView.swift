//
//  AllCoinsView.swift
//  swiftCoin
//
//  Created by Johel Zarco on 29/11/22.
//

import SwiftUI

struct AllCoinsView: View {
    // in order to receive changes from published, already init'd no need do it again
    @StateObject var viewModel : HomeViewModel
    
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
                    ForEach(viewModel.coins){ coin in
                        NavigationLink {
                            CoinDetailsView()
                        } label: {
                            CoinRowView(coin: coin)
                        }

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
