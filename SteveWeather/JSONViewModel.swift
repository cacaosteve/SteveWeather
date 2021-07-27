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
//    @Published var videos: [VideoModel] = []
//    
//    func saveData(context: NSManagedObjectContext) {
//        videos.forEach { (data) in
//            let entity = Video(context: context)
//            entity.titleName = data.titleName
//            entity.detail = data.detail
//            entity.link = data.link
//            entity.imageLink = data.imageLink
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
//    func fetchData(context: NSManagedObjectContext) {
//        let url = "https://mockend.com/cacaosteve/videosapi/videos"
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
//                let videos = try JSONDecoder().decode([VideoModel].self, from: jsonData)
//                
//                DispatchQueue.main.async {
//                    self.videos = videos
//                    
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
