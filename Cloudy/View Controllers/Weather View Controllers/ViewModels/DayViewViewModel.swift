//
//  DayViewViewModel.swift
//  Cloudy
//
//  Created by user on 6/15/18.
//  Copyright © 2018 Cocoacasts. All rights reserved.
//

import UIKit

struct DayViewViewModel {
    let weatherData: WeatherData
    
    private let dateFormatter = DateFormatter()
    private let timeFormatter = DateFormatter()
    
    var date: String {
        dateFormatter.dateFormat = "EE, MMMM d"
        return dateFormatter.string(from: weatherData.time)
    }
    
    var time: String {
        timeFormatter.dateFormat = UserDefaults.timeNotation().timeFormat
        return timeFormatter.string(from: weatherData.time)
    }
    
    var summary: String {
        return weatherData.summary
    }
    
    var temperature: String {
        let temperature = weatherData.temperature
        
        switch UserDefaults.temperatureNotation() {
        case .fahrenheit:
            return String(format: "%.1f °F", temperature)
        case .celsius:
            return String(format: "%.1f °C", temperature)
        }
    }
    
    var windSpeed: String {
        let windSpeed = weatherData.windSpeed
        
        switch UserDefaults.unitsNotation() {
        case .imperial:
            return String(format: "%.f MPH", windSpeed)
        case .metric:
            return String(format: "%.f KPH", windSpeed.toKPH())
        }
    }
    
    var image: UIImage? {
        return UIImage.imageForIcon(withName: weatherData.icon)
    }
}
