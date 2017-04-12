//
//  CurrentWeather.swift
//  RainyShiny
//
//  Created by Raghav Vashisht on 09/04/17.
//  Copyright © 2017 Raghav Vashisht. All rights reserved.
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
        self._date = "Today is, \(currentDate)"
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
    func downloadWeatherDetails(completed: @escaping downlaodComplete) {
        //Alamofire downlaod
        Alamofire.request(CURRENT_WEATHER_URL).responseJSON { response in
            let result = response.result
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let name = dict["name"] as? String {
                    self._cityName = name.capitalized
                    print(self._cityName)
                    print(self.cityName)
                }
                if let weather = dict["weather"] as? [Dictionary<String, AnyObject>] {
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                        print(self._weatherType)
                        print(self.weatherType)
                    }
                }
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    if let currentTemperature = main["temp"] as? Double {
                        let kelvinToCelsiusPreDivison = currentTemperature - 273.15 //Converting Kelvin to Celsius.
                        let kelvinToCelsius = Double(round(10*kelvinToCelsiusPreDivison/10)) //rounds up the Double to 1 Decimal Point.
                        self._currentTemp = kelvinToCelsius
                    }
                }
            }
            completed()
        }
    }
}







