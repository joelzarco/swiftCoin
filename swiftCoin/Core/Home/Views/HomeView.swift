//
//  HomeView.swift
//  swiftCoin
//
//  Created by Johel Zarco on 28/11/22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView{
            ZStack {
                ScrollView(.vertical, showsIndicators: false){
                    
                    // top movers view
                    TopMoversView(viewModel: viewModel)
                    
                    Divider()
                    // all coins view
                    AllCoinsView(viewModel: viewModel)
                } // Sc
                if viewModel.isLoadingData{
                    CustomLoadingIndicator()
                }
            } //ZS
            .navigationTitle("Live Price$")
        } //nav
    } //someV
} // homeV

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
