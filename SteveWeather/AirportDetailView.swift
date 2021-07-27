//
//  AirportDetailView.swift
//  SteveWeather
//
//  Created by steve on 7/25/21.
//

import SwiftUI

struct AirportDetailView: View {
    
    var airport: Airport
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            VStack {
                Text(airport.identifierCode ?? "")
            }
        }
        
    }
}

//struct AirportDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//
//    }
//}
