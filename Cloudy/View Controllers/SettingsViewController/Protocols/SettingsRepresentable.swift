//
//  SettingsRepresentable.swift
//  Cloudy
//
//  Created by user on 6/16/18.
//  Copyright © 2018 Cocoacasts. All rights reserved.
//

import UIKit

protocol SettingsRepresentable {
    
    var text: String { get }
    var accessoryType: UITableViewCellAccessoryType { get }
    
}
