import Foundation

enum WeatherEndpoint {
    case airportIDCodeURL(String)
}

extension WeatherEndpoint: RequestBuilder {
    var urlRequest: URLRequest {
        switch self {
        case .airportIDCodeURL(let airportIDString):
            var urlComponents = URLComponents()
            urlComponents.scheme = "https"
            urlComponents.host = "qa.foreflight.com"
            urlComponents.path = "/weather/report/\(airportIDString)"
            
            guard let url = urlComponents.url
            else {preconditionFailure("Invalid URL format")}
            var request = URLRequest(url: url)
            request.setValue("1", forHTTPHeaderField: "ff-coding-exercise")
            return request
        }
    }
}
