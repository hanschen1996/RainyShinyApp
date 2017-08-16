//
//  WeatherCell.swift
//  RainyShiny
//
//  Created by Apple on 2017/8/16.
//  Copyright © 2017年 Hans. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var highTempLabel: UILabel!
    @IBOutlet weak var lowTempLabel: UILabel!
    
    func configureCell(forecast: Forecast) {
        lowTempLabel.text = forecast.lowTemp
        highTempLabel.text = forecast.highTemp
        typeLabel.text = forecast.weatherType
        dayLabel.text = forecast.date
        weatherIcon.image = UIImage(named: forecast.weatherType)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
