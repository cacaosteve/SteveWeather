//
//  AirportDetailView.swift
//  SteveWeather
//
//  Created by steve on 7/25/21.
//

import SwiftUI

struct AirportDetailView: View {
    var airport: Airport
    
    @ObservedObject var fetcher = ReportFetcher()
    @State private var showForecast = false
    
    var body: some View {
        ScrollView {
            VStack {
                Group {
                    Toggle("Show Forecast", isOn: $showForecast)
                    
                    Text(showForecast ? "Showing Forecast" : "Showing Current Conditions")
                        .font(.title)
                    
                    Text(airport.identifierCode ?? "")
                        .font(.title)
                    
                    Spacer()
                    
                    if showForecast {
                        forecastView
                    }
                    else {
                        conditionsView
                    }
                }
            }
        }
        .onAppear() {
            fetcher.startLoad(airportCode: airport.identifierCode ?? "")
        }
        .alert(isPresented: $fetcher.showingAlert) {
            Alert(title: Text("Error"), message: Text("There was an issue parsing data from the server"), dismissButton: .default(Text("Got it!")))
        }
    }
    
    @ViewBuilder
    var conditionsView: some View {
        Group {
            Text(fetcher.weather.report?.conditions?.text ?? "")
            Text("lat: \(fetcher.weather.report?.conditions?.lat ?? 0, specifier: "%.2f")")
            Text("lon: \(fetcher.weather.report?.conditions?.lon ?? 0, specifier: "%.2f")")
            Text("Elevation: \(fetcher.weather.report?.conditions?.elevationFt ?? 0) Feet")
            Text("Temperature: \(fetcher.weather.report?.conditions?.tempC ?? 0) °C")
            Text("Dew Point: \(fetcher.weather.report?.conditions?.dewpointC ?? 0) °C")
            Text("Pressue: \(fetcher.weather.report?.conditions?.pressureHg ?? 0, specifier: "%.2f")")
            Text("Density Altitude: \(fetcher.weather.report?.conditions?.densityAltitudeFt ?? 0) Feet")
            Text("Relative Humidity: \(fetcher.weather.report?.conditions?.relativeHumidity ?? 0)")
            Text("Flight Rules: \(fetcher.weather.report?.conditions?.flightRules ?? "")")
        }
        Group {
            Spacer()
            Text("Cloud Layers")
                .font(.title2)
                .bold()
            Text("Coverage: \(fetcher.weather.report?.conditions?.cloudLayers?[0].coverage ?? "")")
            Text("Altitude: \(fetcher.weather.report?.conditions?.cloudLayers?[0].altitudeFt ?? 0) Feet")
            Text(fetcher.weather.report?.conditions?.cloudLayers?[0].ceiling ?? false ? "Ceiling: true" : "Ceiling: false")
        }
        Group {
            Spacer()
            Text("Visibility")
                .font(.title2)
                .bold()
            Text("distanceSm: \(fetcher.weather.report?.conditions?.visibility?.distanceSm ?? 0)")
            Text("prevailingVisSm: \(fetcher.weather.report?.conditions?.visibility?.prevailingVisSm ?? 0)")
        }
        Group {
            Spacer()
            Text("Wind")
                .font(.title2)
                .bold()
            Text("speedKts: \(fetcher.weather.report?.conditions?.wind?.speedKts ?? 0, specifier: "%.2f")")
            Text("direction: \(fetcher.weather.report?.conditions?.wind?.direction ?? 0)")
            Text("from: \(fetcher.weather.report?.conditions?.wind?.from ?? 0)")
            Text(fetcher.weather.report?.conditions?.wind?.variable ?? false ? "variable: true" : "variable: false")
        }
    }
    
    @ViewBuilder
    var forecastView: some View {
        Group {
            Text("Conditions")
                .font(.title2)
                .bold()
            Text("Relative Humidity: \(fetcher.weather.report?.forecast?.conditions?[0].relativeHumidity ?? 0)")
            Text("Flight Rules: \(fetcher.weather.report?.forecast?.conditions?[0].flightRules ?? "")")
            Text(fetcher.weather.report?.conditions?.cloudLayers?[0].ceiling ?? false ? "Ceiling: true" : "Ceiling: false")
        }
        Group {
            Spacer()
            Text("Visibility")
                .font(.title2)
                .bold()
            Text("distanceSm: \(fetcher.weather.report?.forecast?.conditions?[0].visibility?.distanceSm ?? 0)")
            Text("prevailingVisSm: \(fetcher.weather.report?.forecast?.conditions?[0].visibility?.prevailingVisSm ?? 0)")
        }
//        Group {
//            Spacer()
//            Text("Wind")
//                .font(.title2)
//                .bold()
//            Text("speedKts: \(fetcher.weather.report?.forecast?.conditions?[0].wind?.speedKts ?? 0, specifier: "%.2f")")
//            Text("direction: \(fetcher.weather.report?.forecast?.conditions?[0].wind?.direction ?? 0)")
//            Text("from: \(fetcher.weather.report?.forecast?.conditions?[0].wind?.from ?? 0)")
//            Text(fetcher.weather.report?.forecast?.conditions?[0].wind?.variable ?? false ? "variable: true" : "variable: false")
//        }
    }
}

//struct AirportDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//
//    }
//}
