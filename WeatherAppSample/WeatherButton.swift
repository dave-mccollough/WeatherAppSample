//
//  WeatherButton.swift
//  WeatherAppSample
//
//  Created by Dave McCollough on 10/21/25.
//

import SwiftUI

struct WeatherButton: View {
    
    var buttonText: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
            Text(buttonText)
                .frame(width: 280, height: 50)
                .background(backgroundColor.gradient)
                .foregroundStyle(textColor)
                .font(.system(size: 20, weight: .bold, design: .default))
                .cornerRadius(10)
      
    }
}

