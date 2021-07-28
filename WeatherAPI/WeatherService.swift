// Networking API by Alex Brown
// https://www.swiftcompiled.com/mvvm-swiftui-and-combine/

import Foundation
import Combine
import UIKit

protocol WeatherService {
    var apiSession: APIService {get}
    
    //func getCoffeeShopsList() -> AnyPublisher<CoffeeShopsListAPIResponse, APIError>
}

extension WeatherService {
    func getAirportWeatherURL(airportID: String) -> AnyPublisher<Weather, APIError> {
        return apiSession.request(with: WeatherEndpoint.airportIDCodeURL(airportID))
            .eraseToAnyPublisher()
    }
}
