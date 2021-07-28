////
////  JSONViewModel.swift
////  CoreJSON
////
////  Created by steve on 7/26/21.
////
//
//import SwiftUI
//import CoreData
//
//class JSONViewModel: ObservableObject {
//    @Published var airports: [AirportModel] = []
//    
//    func saveData(context: NSManagedObjectContext) {
//        airports.forEach { (data) in
//            let entity = Airport(context: context)
//            entity.identifierCode = data.identifierCode
//        }
//        
//        do {
//            try context.save()
//            print("success")
//        } catch {
//            print(error.localizedDescription)
//        }
//    }
//    
//    func fetchData(context: NSManagedObjectContext, airportCode: String) {
//        let url = "https://qa.foreflight.com/weather/report/\(airportCode)"
//        
//        var request = URLRequest(url: URL(string: url)!)
//        request.addValue("swiftui2.0", forHTTPHeaderField: "field")
//        
//        let session = URLSession(configuration: .default)
//        
//        session.dataTask(with: request) { data, res, _ in
//            guard let jsonData = data else { return }
//            
//            let response = res as! HTTPURLResponse
//            
//            if response.statusCode == 404 {
//                print("error API Error")
//                return
//            }
//            
//            do {
//                let airport = try JSONDecoder().decode(AirportModel.self, from: jsonData)
//                
//                DispatchQueue.main.async {
//                    self.airports = airports.append(airport)
//                    self.saveData(context: context)
//                }
//            }
//            catch {
//                print(error.localizedDescription)
//            }
//        }
//        .resume()
//    }
//}
