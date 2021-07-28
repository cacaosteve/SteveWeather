//
//  AirportList.swift
//  SteveWeather
//
//  Created by steve on 7/25/21.
//

import SwiftUI

struct AirportList: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(
        entity: Airport.entity(),
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
        offsets.forEach { index in
            let airport = self.airports[index]
            
            self.managedObjectContext.delete(airport)
        }
        
        saveContext()
    }
    
    
    func addAirport(identifierCode: String) {
        let newAirport = Airport(context: managedObjectContext)
        
        newAirport.identifierCode = identifierCode
        
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
