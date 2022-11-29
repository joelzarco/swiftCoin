//
//  HomeView.swift
//  swiftCoin
//
//  Created by Johel Zarco on 28/11/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                
                // top movers view
                TopMoversView()
                // all coins view
                
            }
            .navigationTitle("Live Price$")
        } //nav
    } //someV
} // homeV

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
