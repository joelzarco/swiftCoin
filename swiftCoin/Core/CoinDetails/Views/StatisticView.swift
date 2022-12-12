//
//  StatisticView.swift
//  swiftCoin
//
//  Created by Johel Zarco on 12/12/22.
//

import SwiftUI

struct StatisticView: View {
    // reusable element coin statistics data
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            Text("Current price")
                .font(.caption)
            
            Text("$21,233.69")
                .font(.headline)
            
            HStack(spacing: 4){
                Image(systemName: "triangle.fill")
                    .font(.caption)
                
                Text("1.69%")
                    .font(.caption)
                    .bold()
            } // HS
            .foregroundColor(.green)
        } // VS
    } // V
}

//struct StatisticView_Previews: PreviewProvider {
//    static var previews: some View {
//        StatisticView()
//    }
//}
