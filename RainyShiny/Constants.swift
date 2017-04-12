//
//  Constants.swift
//  RainyShiny
//
//  Created by Raghav Vashisht on 09/04/17.
//  Copyright © 2017 Raghav Vashisht. All rights reserved.
//

import Foundation

//\(Location.sharedInstance.latitude!)
//\(Location.sharedInstance.longitude!)
let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat=\(Location.sharedInstance.latitude!)"
let LONGITUDE = "&lon=\(Location.sharedInstance.longitude!)"
let APP_ID = "&appid="
let API_KEY = "32a035ed00c3d6f12f7eabee9c76a4ca"

typealias  downlaodComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)\(LONGITUDE)\(APP_ID)\(API_KEY)"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=16&appid=32a035ed00c3d6f12f7eabee9c76a4ca"




