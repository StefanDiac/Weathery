//
//  ForecastCell.swift
//  Weathery
//
//  Created by Diaconu Marius on 9/18/16.
//  Copyright © 2016 Diaconu Stefan. All rights reserved.
//

import UIKit

class ForecastCell: UITableViewCell {

    @IBOutlet weak var forecastImg: UIImageView!
    @IBOutlet weak var dayLbl: UILabel!
    @IBOutlet weak var weatherTypeLbl: UILabel!
    @IBOutlet weak var highTempLbl: UILabel!
    @IBOutlet weak var lowTempLbl: UILabel!
   
    func configureCell(forecast: Forecast) {
        lowTempLbl.text = forecast.lowTemp
        highTempLbl.text = forecast.highTemp
        weatherTypeLbl.text = forecast.weatherType
        dayLbl.text = forecast.date
        
        forecastImg.image = UIImage(named: forecast.weatherType)
    }

}
