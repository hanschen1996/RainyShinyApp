//
//  CurrentWeather.swift
//  RainyShiny
//
//  Created by Apple on 2017/8/15.
//  Copyright © 2017年 Hans. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemp: Double!
    
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today, \(currentDate)"
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    
    var currentTemp: Double {
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
        return _currentTemp
    }
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        // Alamofire download
        Alamofire.request(CURRENT_WEATHER_URL, method: .get).responseJSON { response in
            let result = response.result
            if let jsonDict = result.value as? Dictionary<String, Any> {
                if let name = jsonDict["name"] as? String {
                    self._cityName = name.capitalized
                }
                
                if let weather = jsonDict["weather"] as? [Dictionary<String, Any>] {
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                    }
                }
                
                if let main = jsonDict["main"] as? Dictionary<String, Any> {
                    if let temperature = main["temp"] as? Double {
                        self._currentTemp = temperature - 273.15 // convert to celsius
                    }
                }
            }
            completed()
        }
        
    }
}
