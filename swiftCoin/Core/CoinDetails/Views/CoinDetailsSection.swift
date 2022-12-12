//
//  CoinDetailsSection.swift
//  swiftCoin
//
//  Created by Johel Zarco on 12/12/22.
//

import SwiftUI

struct CoinDetailsSection: View {
    // using grid! 2x2
    private let columns : [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]
    
    
    var body: some View {
        VStack{
            Text("Overview")
                .font(.title).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            LazyVGrid(columns: columns, alignment: .leading, spacing: 20){
                ForEach(0..<4, id: \.self){ _ in
                    StatisticView()
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
