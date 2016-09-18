//
//  Constants.swift
//  Weathery
//
//  Created by Diaconu Marius on 9/16/16.
//  Copyright © 2016 Diaconu Stefan. All rights reserved.
//

import Foundation

let BASE_URL: String = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "051a8d4d96b787238bc56c4ddf705eca"

let TEST_URL = "\(BASE_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(APP_ID)\(API_KEY)"

typealias DownloadComplete = () -> ()

let KELVIN_TO_CELCIUS_MOD: Double = 273.15

let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)&cnt=10&mode=json\(APP_ID)\(API_KEY)"
