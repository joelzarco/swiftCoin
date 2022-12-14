//
//  CoinDetailsSection.swift
//  swiftCoin
//
//  Created by Johel Zarco on 12/12/22.
//

import SwiftUI

struct CoinDetailsSection: View {
    
    let model : CoinDetailsSectionModel
    // using grid! 2x2
    private let columns : [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]
    
    
    var body: some View {
        VStack{
            Text(model.title)
                .font(.title).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            LazyVGrid(columns: columns, alignment: .leading, spacing: 20){
                ForEach(model.stats){ stat in
                    StatisticView(model : stat)
                }
            }
        }
    }
}

//struct CoinDetailsSection_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinDetailsSection()
//    }
//}
