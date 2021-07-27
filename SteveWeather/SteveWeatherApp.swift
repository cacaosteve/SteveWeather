//
//  SteveWeatherApp.swift
//  SteveWeather
//
//  Created by steve on 7/24/21.
//

import SwiftUI

@main
struct SteveWeatherApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            AirportList()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
