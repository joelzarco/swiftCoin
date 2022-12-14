//
//  CoinDetailsViewModel.swift
//  swiftCoin
//
//  Created by Johel Zarco on 13/12/22.
//

import Foundation

class CoinDetailsViewModel{
    
    private let coin : Coin
    
    var overviewSectionModel : CoinDetailsSectionModel{
        // price stats
        let price = coin.currentPrice.toCurrency()
        let pricePercentageChange = coin.priceChangePercentage24H
        let priceStats = StatiscticModel(title: "CurrentPrice", value: price, percentageChange: pricePercentageChange)
        
        // market stats
        let marketCap = coin.marketCap
        let marketCapPercentageChange = coin.marketCapChangePercentage24H
        let marketCapStat = StatiscticModel(title: "Market Cap", value: "\(marketCap)", percentageChange: marketCapPercentageChange)
        
        // rank stats
        let rank = coin.marketCapRank
        let rankStat = StatiscticModel(title: "Rank", value: "\(rank)", percentageChange: nil)
        
        // volume stats
        let volume = coin.totalVolume
        let volumeStat = StatiscticModel(title: "Volume", value: "\(volume)", percentageChange: nil)
        
        return CoinDetailsSectionModel(title: "Overview", stats: [priceStats, marketCapStat, rankStat, volumeStat])
    }
    
    var additionalDetailsSectionModel : CoinDetailsSectionModel{
        // 24H high
        let high = coin.high24H?.toCurrency() ?? "n/a"
        let highStat = StatiscticModel(title: "24H High", value: high, percentageChange: nil)
        
        // 24H low
        let low = coin.low24H?.toCurrency() ?? "n/a"
        let lowStat = StatiscticModel(title: "low", value: low, percentageChange: nil)
        
        // 24H price change
        let priceChange24H = coin.priceChange24H.toCurrency()
        let percentageChange24H = coin.priceChangePercentage24H
        let priceChangeStat = StatiscticModel(title: "24H priceChange", value: priceChange24H, percentageChange: percentageChange24H)
        
        // 24H market cap
        let marketCapChange = coin.marketCapChange24H?.toCurrency() ?? "n/a"
        let marketCapChangePercentage = coin.marketCapChangePercentage24H
        let marketStat = StatiscticModel(title: "24H Market CapChange", value: "\(marketCapChange)", percentageChange: marketCapChangePercentage)
        
        return CoinDetailsSectionModel(title: "Additional details", stats: [highStat, lowStat, priceChangeStat, marketStat])
    }
    
    init(coin: Coin) {
        self.coin = coin
    }
}
