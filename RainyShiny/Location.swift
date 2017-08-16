//
//  Location.swift
//  RainyShiny
//
//  Created by Apple on 2017/8/16.
//  Copyright © 2017年 Hans. All rights reserved.
//

import Foundation
import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {
        
    }
    
    var latitude: Double!
    var longitude: Double!
    
}
