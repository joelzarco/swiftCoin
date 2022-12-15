//
//  HomeViewModel.swift
//  swiftCoin
//
//  Created by Johel Zarco on 01/12/22.
//

import Foundation
import SwiftUI

class HomeViewModel : ObservableObject{
    
    @Published var coins = [Coin]()
    @Published var topMovingCoins = [Coin]()
    
    init(){
        fetchCoinData()
    }
    
    func fetchCoinData(){
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=20&page=1&sparkline=true&price_change_percentage=24h"
        
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url){ data, response, error in
            if let error = error{
                print("DEBUG: Error \(error.localizedDescription)")
                return
            }
            if let response = response as? HTTPURLResponse{
                print("DEBUG : \(response.statusCode)")
            }
            guard let data = data else { return }
            print("DEBUG : Data \(data)")
//            let dataAsString = String(data: data, encoding: .utf8)
//            print("DEBUG : \(dataAsString!)")
            
            do{
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                print("DEBug: lastUpated: \(coins.first?.lastUpdated)")
                print("DEBUG: sparkline \(coins.first?.sparklineIn7D)")
                DispatchQueue.main.async {
                    self.coins = coins
                    self.configureTopMovingCoins()
                }
            }
            catch let error{
                print("DEBUG: Failed to decode with error: \(error)")
            }
        } // urlss
        .resume()
    } // fetch
    
    func configureTopMovingCoins(){
        // array or five most variable coins %
        let topMovers = coins.sorted(by: { $0.priceChangePercentage24H > $1.priceChangePercentage24H})
        self.topMovingCoins = Array(topMovers.prefix(5))
    }
    
}
