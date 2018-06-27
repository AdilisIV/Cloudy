//
//  SettingsViewTemperatureViewModel.swift
//  Cloudy
//
//  Created by user on 6/16/18.
//  Copyright © 2018 Cocoacasts. All rights reserved.
//

import UIKit


struct SettingsViewTemperatureViewModel {
    
    let temperatureNotation: TemperatureNotation
    
    var text: String {
        switch temperatureNotation {
        case .fahrenheit:
            return "Fahrenheit"
        case .celsius:
            return "Celcius"
        }
    }
    
    var accessoryType: UITableViewCellAccessoryType {
        if temperatureNotation == UserDefaults.temperatureNotation() {
            return .checkmark
        } else {
            return .none
        }
    }
    
}

extension SettingsViewTemperatureViewModel: SettingsRepresentable {
    
}
