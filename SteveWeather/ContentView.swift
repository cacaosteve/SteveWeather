//
//  ContentView.swift
//  SteveWeather
//
//  Created by steve on 7/24/21.
//
//
//import SwiftUI
//import CoreData
//
//struct ContentView: View {
//    @Environment(\.managedObjectContext) private var viewContext
//    
//    @FetchRequest(
//      // 2.
//      entity: Airport.entity(),
//      // 3.
//      sortDescriptors: [
//        NSSortDescriptor(keyPath: \Airport.identifierCode, ascending: true)
//      ]
//      //,predicate: NSPredicate(format: "genre contains 'Action'")
//      // 4.
//    ) var airports: FetchedResults<Airport>
//
////    @FetchRequest(
////        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
////        animation: .default)
////    private var items: FetchedResults<Item>
//
//    var body: some View {
//        List {
//            ForEach(airports) { airport in
//                Text("Item at \(airport.identifierCode!)")
//            }
//            .onDelete(perform: deleteItems)
//        }
//        .toolbar {
//            EditButton()
//
//            Button(action: addItem) {
//                Label("Add Item", systemImage: "plus")
//            }
//        }
//    }
//
//    private func addItem() {
//        withAnimation {
//            let newAiport = Airport(context: viewContext)
////            newItem.timestamp = Date()
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//
//    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            offsets.map { airports[$0] }.forEach(viewContext.delete)
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//}
//
//private let itemFormatter: DateFormatter = {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .short
//    formatter.timeStyle = .medium
//    return formatter
//}()
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//    }
//}
