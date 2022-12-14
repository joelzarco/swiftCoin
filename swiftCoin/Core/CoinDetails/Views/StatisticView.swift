//
//  StatisticView.swift
//  swiftCoin
//
//  Created by Johel Zarco on 12/12/22.
//

import SwiftUI

struct StatisticView: View {
    // reusable element coin with statistics data
    let model : StatiscticModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            Text(model.title)
                .font(.caption)
            
            Text(model.value)
                .font(.headline)
            
            if let percentChange = model.percentageChange{
                HStack(spacing: 4){
                    Image(systemName: "triangle.fill")
                        .font(.caption)
                    
                    Text(percentChange.toPercentageString())
                        .font(.caption)
                        .bold()
                } // HS
                .foregroundColor(.green)
            } // ifLet
        } // VS
    } // someV
}

//struct StatisticView_Previews: PreviewProvider {
//    static var previews: some View {
//        StatisticView()
//    }
//}
