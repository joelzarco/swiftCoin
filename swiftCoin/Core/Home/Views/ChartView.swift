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
                    .foregroundStyle(viewModel.chartLineColor)
        
            } // forE
        } //Chart
        .chartXScale(domain: ClosedRange(uncheckedBounds: (lower: viewModel.startDate, upper: viewModel.endDate)))
        .chartXAxis{
            AxisMarks(position: .bottom, values: viewModel.xAxisValues){ value in
                AxisGridLine()
                // formatt dates
                AxisValueLabel(){
                    if let dateValue = value.as(Date.self){
                        Text(dateValue.asShortDateString())
                    }
                }
            }
        }
        .chartYScale(domain: ClosedRange(uncheckedBounds: (lower: viewModel.minPrice, upper: viewModel.maxPrice)))
        .chartYAxis{
            AxisMarks(position: .leading, values: viewModel.yAxisValues){ value in
                AxisGridLine()
                // format yAxis label with double ext method
                AxisValueLabel(){
                    if let doubleValue = value.as(Double.self){
                        Text(doubleValue.formattedWithAbbreviations())
                    }
                } // AxisV
            } // AxisM
        } // ChartYA
    } // someV
}

//struct ChartView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChartView()
//    }
//}
