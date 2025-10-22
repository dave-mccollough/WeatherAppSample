//
//  WeatherButton.swift
//  WeatherAppSample
//
//  Created by Dave McCollough on 10/21/25.
//

import SwiftUI

struct WeatherView: View {
    
    var iconName: String
    var temperature: Int
    
    var body: some View {
        Image(systemName: iconName)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
        Text("\(temperature)°")
            .font(.system(size: 70, weight: .medium, design: .default))
            .foregroundStyle(.white)
    }
}

