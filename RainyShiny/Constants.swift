//
//  Constants.swift
//  RainyShiny
//
//  Created by Apple on 2017/8/15.
//  Copyright © 2017年 Hans. All rights reserved.
//

import Foundation

let BASE_URL = "api.openweathermap.org/data/2.5/weather?"
let FORECAST_BASE_URL = "api.openweathermap.org/data/2.5/forecast/daily?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "f5f7abf15155cdc1a22724911d065396"

let CURRENT_WEATHER_URL = "http://\(BASE_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(APP_ID)\(API_KEY)"

let FORECAST_URL = "http://\(FORECAST_BASE_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(APP_ID)\(API_KEY)"
typealias DownloadComplete = () -> ()
