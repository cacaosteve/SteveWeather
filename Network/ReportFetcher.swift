import SwiftUI
import Alamofire

public class ReportFetcher: ObservableObject {
    //var airport: Airport
    @Published var weather = Weather(report: nil)
    @Published var showingAlert = false
    public init() {
        //loadWithAF()
        //startLoad()
    }
//    public init(airport: Airport) {
//        self.airport = airport
//        loadWithAF()
//    }
    func loadWithAF() {
//        let request = AF.request("https://qa.foreflight.com/weather/report/kpwm")
        let headers: HTTPHeaders = [
          "ff-coding-exercise": "1"
        ]
        
        let request = AF.request("https://qa.foreflight.com/weather/report/kpwm", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: headers, interceptor: nil, requestModifier: nil)
        
        request.responseDecodable(of: Weather.self) { (response) in
            switch response.result {
            case .success(let value):
                self.weather = value
            case .failure( _):
                self.showingAlert = true
            }
        }
    }
    
    func startLoad(airportCode: String) {
        let httpUrl = "https://qa.foreflight.com/weather/report/\(airportCode)"
        guard let url = URL(string: httpUrl) else {
            return
        }
        var request = URLRequest(url: url)
        request.setValue("1", forHTTPHeaderField: "ff-coding-exercise")

        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print(error)
                return
            }
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                self.showingAlert = true
                return
            }
               DispatchQueue.main.async {
                do {
                    let decoder = JSONDecoder()
////                    myArr.sort { $0.deadline < $1.deadline }
//                    self.businesses = try decoder.decode([Business].self, from: data!)
//                    self.businesses.sort { $0.businessName < $1.businessName }
//                    print(String(data: data!, encoding: String.Encoding.utf8))
                    self.weather = try decoder.decode(Weather.self, from: data!)
                    print("weather: \(self.weather)")
                }
                catch {
                    self.showingAlert = true
                    print("Failed to read JSON data: \(error.localizedDescription)")
                }
            }
        }
        task.resume()
    }
}
