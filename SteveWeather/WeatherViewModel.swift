////
////  CoffeeShopsListViewModel.swift
////  CoffeeShops
////
////  Created by steve on 12/26/20.
////
//import Foundation
//import Combine
//import SwiftUI
//
//class WeatherViewModel: ObservableObject, WeatherService {
//    var apiSession: APIService
//    @Published var coffeeShops = [GroupItem]()
//    @Published var urlDict = [String: URL]()
//    
//    var cancellables = Set<AnyCancellable>()
//    
//    init(apiSession: APIService = APISession()) {
//        self.apiSession = apiSession
//        getCoffeeShopsList()
//    }
//    
//    func imageURLForCoffeeShop(coffeeShop: GroupItem) -> URL {
//        return self.urlDict[coffeeShop.venue?.id ?? ""] ?? URL(string:"https://fastly.4sqi.net/img/general/500x375/2118715_wk7mLJQueA8Wk80d7XqD0TmT4R-NJRN50ZkRBNaeoBk.jpg")!
//    }
//    
//    func getCoffeeShopsList() {
//        let cancellable = self.getCoffeeShopsList()
//            .sink(receiveCompletion: { result in
//                switch result {
//                case .failure(let error):
//                    print("Handle error: \(error)")
//                case .finished:
//                    break
//                }
//                
//            }) { (coffeeShop) in
//                self.coffeeShops = (coffeeShop.response?.groups?.first?.items)!
//                self.getCoffeeShopsDetail()
//            }
//        cancellables.insert(cancellable)
//    }
//    
//    func getCoffeeShopsDetail() {
//        for coffeeShop in coffeeShops {
//            let cancellable = self.getCoffeeShopImageURL(venueID: coffeeShop.venue?.id ?? "")
//                .sink(receiveCompletion: { result in
//                    switch result {
//                    case .failure(let error):
//                        print("Handle error: \(error)")
//                    case .finished:
//                        break
//                    }
//                    
//                }) { (imageURLResponse) in
//                    if imageURLResponse.response?.photos?.items?.count == 0 {
//                        self.urlDict[coffeeShop.venue?.id ?? ""] = URL(string: "https://fastly.4sqi.net/img/general/500x375/2118715_wk7mLJQueA8Wk80d7XqD0TmT4R-NJRN50ZkRBNaeoBk.jpg")
//                    }
//                    else {
//                        self.urlDict[coffeeShop.venue?.id ?? ""] = URL(string: (imageURLResponse.response?.photos?.items?[0].itemPrefix)! + "500x375" + (imageURLResponse.response?.photos?.items?[0].suffix)! )!
//                    }
//                }
//            cancellables.insert(cancellable)
//        }
//    }
//}
//
