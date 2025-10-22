//
//  ContentView.swift
//  WeatherAppSample
//
//  Created by Dave McCollough on 10/21/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: isNight)
                
            VStack(spacing: 8){
                CityTextView(cityName: "Denver, CO")
                
                VStack {
                    WeatherView(iconName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)
                }
                .padding(.bottom, 40)
                
                HStack{
                    Spacer()
                    VStack {
                        DailyForecastView(day: "TUE", systemImage: "cloud.sun.fill", temperature: "76°")
                    }
                    Spacer()
                    VStack {
                        DailyForecastView(day: "WED", systemImage: "sun.max.fill", temperature: "76°")
                    }
                    Spacer()
                    VStack {
                        DailyForecastView(day: "THU", systemImage: "wind.snow", temperature: "55°")
                    }
                    Spacer()
                    VStack {
                        DailyForecastView(day: "FRI", systemImage: "sunset.fill", temperature: "53°")
                    }
                    Spacer()
                    VStack {
                        DailyForecastView(day: "SAT", systemImage: "wind.snow",
                            temperature: "25°")
                        
                    }
                    Spacer()
                    VStack {
                        DailyForecastView(day: "SUN", systemImage: "cloud.sun.fill", temperature: "52°")
                    }
                    Spacer()
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(
                        buttonText: "Change Day Time",
                        textColor: .white,
                        backgroundColor: .mint
                    )
                }
                
                
                
                Spacer()
                
                
            }
        }
    }
}

struct DailyForecastView: View {
    let day: String
    let systemImage: String
    let temperature: String

    var body: some View {
        VStack {
            Text(day)
                .font(.title3)
                .bold()
                .foregroundStyle(Color(.white))
            Image(systemName: systemImage)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text(temperature)
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundStyle(Color(.white))
        }
    }
}

struct BackgroundView: View {
 
    var isNight: Bool
    
    var body: some View {
//        LinearGradient(
//            gradient: Gradient(colors: [isNight ? Color.black : Color.blue,
//                                isNight ? Color.gray : Color("lightBlue")]),
//            startPoint: .topLeading,
//            endPoint: .bottomTrailing
//        )
        ContainerRelativeShape()
            .fill(isNight ? Color.black : Color.blue)
        .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.largeTitle)
            .bold()
            .foregroundColor(.white)
            .padding()
    }
}



#Preview {
    ContentView()
}
