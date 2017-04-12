//
//  WeatherCell.swift
//  RainyShiny
//
//  Created by Raghav Vashisht on 09/04/17.
//  Copyright © 2017 Raghav Vashisht. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var hghTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    func confgureCell(forecast: Forecast) {
        
        lowTemp.text = "\(forecast.lowTemp)"
        hghTemp.text = "\(forecast.highTemp)"
        weatherType.text = forecast.weatherType
        weatherIcon.image = UIImage(named: forecast.weatherType)
        dayLabel.text = forecast.date
        
        
        
        
        }
}
