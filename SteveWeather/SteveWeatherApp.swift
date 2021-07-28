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
            AirportList()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
