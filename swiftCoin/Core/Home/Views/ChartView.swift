//
//  ChartView.swift
//  swiftCoin
//
//  Created by Johel Zarco on 15/12/22.
//

import SwiftUI
import Charts

struct ChartView: View {
    let viewModel : CoinDetailsViewModel
    
    var body: some View {
        
        Chart{
            ForEach(viewModel.charData){ item in
    
                LineMark(x: .value("Date", item.date), y: .value("Price", item.value))
                    .interpolationMethod(.cardinal)
        
            } // forE
        } //Chart
        .chartXScale(domain: ClosedRange(uncheckedBounds: (lower: viewModel.startDate, upper: viewModel.endDate)))
        .chartXAxis{
            AxisMarks(position: .bottom, values: viewModel.xAxisValues)
        }
        .chartYScale(domain: ClosedRange(uncheckedBounds: (lower: viewModel.minPrice, upper: viewModel.maxPrice)))
        .chartYAxis{
            AxisMarks(position: .leading, values: viewModel.yAxisValues)
        }

    } // someV
}

//struct ChartView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChartView()
//    }
//}
