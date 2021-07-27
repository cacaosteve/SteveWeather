//
//  AirportList.swift
//  SteveWeather
//
//  Created by steve on 7/25/21.
//

import SwiftUI

// swiftlint:disable multiple_closures_with_trailing_closure
struct AirportList: View {
  @Environment(\.managedObjectContext) var managedObjectContext
  // 1.
  @FetchRequest(
    // 2.
    entity: Airport.entity(),
    // 3.
    sortDescriptors: [
      NSSortDescriptor(keyPath: \Airport.identifierCode, ascending: true)
    ]
    //,predicate: NSPredicate(format: "genre contains 'Action'")
    // 4.
  ) var airports: FetchedResults<Airport>

  @State var isPresented = false

  var body: some View {
    NavigationView {
      List {
        ForEach(airports, id: \.identifierCode) {
            NavigationLink($0.identifierCode ?? "", destination: AirportDetailView(airport: $0))
//          AirportRow(airport: $0)
        }
        .onDelete(perform: deleteAirport)
      }
      .sheet(isPresented: $isPresented) {
        AddAirport { identifierCode in
            self.addAirport(identifierCode: identifierCode)
          self.isPresented = false
        }
      }
      .navigationBarTitle(Text("Favorite Airports"))
      .navigationBarItems(trailing:
        Button(action: { self.isPresented.toggle() }) {
          Image(systemName: "plus")
        }
      )
    }
  }

  func deleteAirport(at offsets: IndexSet) {
    // 1.
    offsets.forEach { index in
      // 2.
      let airport = self.airports[index]

      // 3.
      self.managedObjectContext.delete(airport)
    }

    // 4.
    saveContext()
  }


    func addAirport(identifierCode: String) {
    // 1
    let newAirport = Airport(context: managedObjectContext)

    // 2
    newAirport.identifierCode = identifierCode

    // 3
    saveContext()
  }


  func saveContext() {
    do {
      try managedObjectContext.save()
    } catch {
      print("Error saving managed object context: \(error)")
    }
  }
}

struct AirportList_Previews: PreviewProvider {
  static var previews: some View {
    AirportList()
  }
}
