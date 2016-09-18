//
//  CurrentWeather.swift
//  Weathery
//
//  Created by Diaconu Marius on 9/16/16.
//  Copyright © 2016 Diaconu Stefan. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    private var _cityName: String!
    private var _weatherType: String!
    private var _currentTemp: Double!
    private var _date: String!
    
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
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
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        
        let currentDate = dateFormatter.string(from: Date())
        
        self._date = "Today \(currentDate)"
        
        return _date
    }
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
            Alamofire.request(TEST_URL).responseJSON { response in
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, AnyObject>  {
                if let name = dict["name"] as? String {
                    self._cityName = name.capitalized
                }
                
                if let weatherDict = dict["weather"] as? [Dictionary<String,AnyObject>] {
                    if let weathertype = weatherDict[0]["main"] as? String {
                        self._weatherType = weathertype.capitalized
                    }
                }
                
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    if let currentTemp = main["temp"] as? Double {
                        let temperature = currentTemp - KELVIN_TO_CELCIUS_MOD
                        self._currentTemp = temperature.rounded()
                    }
                }
            }
            completed()
        }
    }
}
