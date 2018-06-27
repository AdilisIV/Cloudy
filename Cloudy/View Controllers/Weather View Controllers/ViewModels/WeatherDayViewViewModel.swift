//
//  WeatherDayViewViewModel.swift
//  Cloudy
//
//  Created by user on 6/16/18.
//  Copyright © 2018 Cocoacasts. All rights reserved.
//

import UIKit

struct WeatherDayViewViewModel {
    
    let weatherDayData: WeatherDayData
    
    private let dayFormatter = DateFormatter()
    private let dateFormatter = DateFormatter()
    
    
    var day: String {
        dayFormatter.dateFormat = "EEEE"
        return dayFormatter.string(from: weatherDayData.time)
    }
    
    var date: String {
        dateFormatter.dateFormat = "MMMM d"
        return dateFormatter.string(from: weatherDayData.time)
    }
    
    var temperature: String {
        let min = format(temperature: weatherDayData.temperatureMin)
        let max = format(temperature: weatherDayData.temperatureMax)
        return "\(min) - \(max)"
    }
    
    var windSpeed: String {
        let windSpeed = weatherDayData.windSpeed
        
        switch UserDefaults.unitsNotation() {
        case .imperial:
            return String(format: "%.f MPH", windSpeed)
        case .metric:
            return String(format: "%.f KPH", windSpeed)
        }
    }
    
    var image: UIImage? {
        return UIImage.imageForIcon(withName: weatherDayData.icon)!
    }
    
    
    private func format(temperature: Double) -> String {
        switch UserDefaults.temperatureNotation() {
        case .fahrenheit:
            return String(format: "%.0f°", temperature)
        case .celsius:
            return String(format: "%.0f°", temperature)
        }
    }
    
}

extension WeatherDayViewViewModel: WeatherDayRepresentable {
    
}
