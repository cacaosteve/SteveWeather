//
//  WeatherRow.swift
//  SteveWeather
//
//  Created by steve on 7/24/21.
//

import SwiftUI

struct AirportRow: View {
  let airport: Airport

  var body: some View {
    VStack(alignment: .leading) {
        airport.identifierCode.map(Text.init)
        .font(.title)
    }
  }
}
