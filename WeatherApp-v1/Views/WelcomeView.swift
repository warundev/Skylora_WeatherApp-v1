//
//  WelcomeView.swift
//  WeatherApp-v1
//
//  Created by Waruna Liyanapathirana on 2025-07-12.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager:
    LocationManager
    
    var body: some View {
        VStack{
            VStack(spacing: 20){
                Text("Welcome to Skylora").bold().font(.title)
                
                Text("Please share your current location to get the weather forecast").padding()
                
                LocationButton(.shareCurrentLocation){
                    locationManager.requestLocation()
                }.cornerRadius(30)
                    .symbolVariant(.fill)
                    .foregroundColor(.white)
                
            }.multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
    }
}

#Preview {
    WelcomeView()
}
