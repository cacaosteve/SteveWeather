//// This file was generated from JSON Schema using quicktype, do not modify it directly.
//// To parse the JSON, add this file to your project and do:
////
////   let coffeeShops = try? newJSONDecoder().decode(CoffeeShops.self, from: jsonData)
//
//import Foundation
//
//// MARK: - CoffeeShops
//struct CoffeeShopsListAPIResponse: Codable {
//    let meta: Meta?
//    let response: Response?
//}
//
//// MARK: - Meta
//struct Meta: Codable {
//    let code: Int?
//    let requestID: String?
//
//    enum CodingKeys: String, CodingKey {
//        case code
//        case requestID = "requestId"
//    }
//}
//
//// MARK: - Response
//struct Response: Codable {
//    let suggestedFilters: SuggestedFilters?
//    let suggestedRadius: Int?
//    let headerLocation, headerFullLocation, headerLocationGranularity, query: String?
//    let totalResults: Int?
//    let suggestedBounds: SuggestedBounds?
//    let groups: [Group]?
//    let photos: Photos?
//}
//
//// MARK: - Group
//struct Group: Codable {
//    let type, name: String?
//    let items: [GroupItem]?
//}
//
//// MARK: - GroupItem
//struct GroupItem: Codable, Identifiable {
//    var id = UUID()
//    let reasons: Reasons?
//    let venue: Venue?
//    let referralID: String?
//
//    enum CodingKeys: String, CodingKey {
//        case reasons, venue
//        case referralID = "referralId"
//    }
//    
//    var name: String {
//        get {
//            return venue?.name ?? ""
//        }
//    }
//    
//    var address: String {
//        get {
//            let formmattedAddress = venue?.location?.formattedAddress
//            let address = formmattedAddress?.joined(separator: "\n") ?? ""
//            return address
//        }
//    }
//    
//    var imageURL: URL {
//        get {
//            let urlString = (venue?.categories?.first?.icon?.iconPrefix)! + "88" + (venue?.categories?.first?.icon?.suffix)!.rawValue
//            
//            return URL(string: urlString)!
//        }
//    }
//}
//
//// MARK: - Reasons
//struct Reasons: Codable {
//    let count: Int?
//    let items: [ReasonsItem]?
//}
//
//// MARK: - ReasonsItem
//struct ReasonsItem: Codable {
//    let summary: ItemSummary?
//    let type: TypeEnum?
//    let reasonName: ReasonName?
//}
//
//enum ReasonName: String, Codable {
//    case globalInteractionReason = "globalInteractionReason"
//}
//
//enum ItemSummary: String, Codable {
//    case thisSpotIsPopular = "This spot is popular"
//}
//
//enum TypeEnum: String, Codable {
//    case general = "general"
//}
//
//// MARK: - Venue
//struct Venue: Codable {
//    let id, name: String?
////    let contact: Contact?
//    let location: Location?
//    let categories: [Category]?
////    let verified: Bool?
////    let stats: Stats?
////    let beenHere: BeenHere?
////    let photos: Photos?
////    let hereNow: HereNow?
////    let venuePage: VenuePage?
////    let delivery: Delivery?
//}
//
//// MARK: - BeenHere
//struct BeenHere: Codable {
//    let count, lastCheckinExpiredAt: Int?
//    let marked: Bool?
//    let unconfirmedCount: Int?
//}
//
//// MARK: - Category
//struct Category: Codable {
////    let id, name, pluralName, shortName: String?
//    let icon: CategoryIcon?
////    let primary: Bool?
//}
//
//// MARK: - CategoryIcon
//struct CategoryIcon: Codable {
//    let iconPrefix: String?
//    let suffix: Suffix?
//
//    enum CodingKeys: String, CodingKey {
//        case iconPrefix = "prefix"
//        case suffix
//    }
//}
//
//enum Suffix: String, Codable {
//    case png = ".png"
//}
//
//// MARK: - Contact
//struct Contact: Codable {
//}
//
//// MARK: - Delivery
//struct Delivery: Codable {
//    let id: String?
//    let url: String?
//    let provider: Provider?
//}
//
//// MARK: - Provider
//struct Provider: Codable {
//    let name: String?
//    let icon: ProviderIcon?
//}
//
//// MARK: - ProviderIcon
//struct ProviderIcon: Codable {
//    let iconPrefix: String?
//    let sizes: [Int]?
//    let name: String?
//
//    enum CodingKeys: String, CodingKey {
//        case iconPrefix = "prefix"
//        case sizes, name
//    }
//}
//
//// MARK: - HereNow
//struct HereNow: Codable {
//    let count: Int?
//    let summary: HereNowSummary?
//    let groups: [JSONAny]?
//}
//
//enum HereNowSummary: String, Codable {
//    case nobodyHere = "Nobody here"
//}
//
//// MARK: - Location
//struct Location: Codable {
//    let lat, lng: Double?
//    let labeledLatLngs: [LabeledLatLng]?
//    let distance: Int?
//    let cc: Cc?
//    let neighborhood: String?
//    let city: City?
//    let state: State?
//    let country: Country?
//    let formattedAddress: [String]?
//    let address, crossStreet, postalCode: String?
//}
//
//enum Cc: String, Codable {
//    case us = "US"
//}
//
//enum City: String, Codable {
//    case sanFrancisco = "San Francisco"
//}
//
//enum Country: String, Codable {
//    case unitedStates = "United States"
//}
//
//// MARK: - LabeledLatLng
//struct LabeledLatLng: Codable {
//    let label: Label?
//    let lat, lng: Double?
//}
//
//enum Label: String, Codable {
//    case display = "display"
//    case entrance = "entrance"
//}
//
//enum State: String, Codable {
//    case ca = "CA"
//}
//
////// MARK: - Photos
////struct Photos: Codable {
////    let count: Int?
////    let groups: [JSONAny]?
////}
//
//// MARK: - Stats
//struct Stats: Codable {
//    let tipCount, usersCount, checkinsCount, visitsCount: Int?
//}
//
//// MARK: - VenuePage
//struct VenuePage: Codable {
//    let id: String?
//}
//
//// MARK: - SuggestedBounds
//struct SuggestedBounds: Codable {
//    let ne, sw: Ne?
//}
//
//// MARK: - Ne
//struct Ne: Codable {
//    let lat, lng: Double?
//}
//
//// MARK: - SuggestedFilters
//struct SuggestedFilters: Codable {
//    let header: String?
//    let filters: [Filter]?
//}
//
//// MARK: - Filter
//struct Filter: Codable {
//    let name, key: String?
//}
//
//// MARK: - Photos
//struct Photos: Codable {
//    let count: Int?
//    let items: [Item]?
//    let dupesRemoved: Int?
//    let groups: [JSONAny]?
//}
//
//// MARK: - Item
//struct Item: Codable {
//    let id: String?
//    let createdAt: Int?
//    let source: Source?
//    let itemPrefix: String?
//    let suffix: String?
//    let width, height: Int?
//    let user: User?
//    let checkin: Checkin?
//    let visibility: String?
//
//    enum CodingKeys: String, CodingKey {
//        case id, createdAt, source
//        case itemPrefix = "prefix"
//        case suffix, width, height, user, checkin, visibility
//    }
//}
//
//// MARK: - Checkin
//struct Checkin: Codable {
//    let id: String?
//    let createdAt: Int?
//    let type: String?
//    let timeZoneOffset: Int?
//}
//
//// MARK: - Source
//struct Source: Codable {
//    let name: String?
//    let url: String?
//}
//
//// MARK: - User
//struct User: Codable {
//    let firstName, lastName, countryCode: String?
//}
//
//
//// MARK: - Encode/decode helpers
//
//class JSONNull: Codable, Hashable {
//
//    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
//        return true
//    }
//
////    public var hashValue: Int {
////        return 0
////    }
//    
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(0)
//    }
//
//    public init() {}
//
//    public required init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//        if !container.decodeNil() {
//            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
//        }
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.singleValueContainer()
//        try container.encodeNil()
//    }
//}
//
//class JSONCodingKey: CodingKey {
//    let key: String
//
//    required init?(intValue: Int) {
//        return nil
//    }
//
//    required init?(stringValue: String) {
//        key = stringValue
//    }
//
//    var intValue: Int? {
//        return nil
//    }
//
//    var stringValue: String {
//        return key
//    }
//}
//
//class JSONAny: Codable {
//
//    let value: Any
//
//    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
//        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
//        return DecodingError.typeMismatch(JSONAny.self, context)
//    }
//
//    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
//        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
//        return EncodingError.invalidValue(value, context)
//    }
//
//    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
//        if let value = try? container.decode(Bool.self) {
//            return value
//        }
//        if let value = try? container.decode(Int64.self) {
//            return value
//        }
//        if let value = try? container.decode(Double.self) {
//            return value
//        }
//        if let value = try? container.decode(String.self) {
//            return value
//        }
//        if container.decodeNil() {
//            return JSONNull()
//        }
//        throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
//        if let value = try? container.decode(Bool.self) {
//            return value
//        }
//        if let value = try? container.decode(Int64.self) {
//            return value
//        }
//        if let value = try? container.decode(Double.self) {
//            return value
//        }
//        if let value = try? container.decode(String.self) {
//            return value
//        }
//        if let value = try? container.decodeNil() {
//            if value {
//                return JSONNull()
//            }
//        }
//        if var container = try? container.nestedUnkeyedContainer() {
//            return try decodeArray(from: &container)
//        }
//        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
//            return try decodeDictionary(from: &container)
//        }
//        throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
//        if let value = try? container.decode(Bool.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decode(Int64.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decode(Double.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decode(String.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decodeNil(forKey: key) {
//            if value {
//                return JSONNull()
//            }
//        }
//        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
//            return try decodeArray(from: &container)
//        }
//        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
//            return try decodeDictionary(from: &container)
//        }
//        throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
//        var arr: [Any] = []
//        while !container.isAtEnd {
//            let value = try decode(from: &container)
//            arr.append(value)
//        }
//        return arr
//    }
//
//    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
//        var dict = [String: Any]()
//        for key in container.allKeys {
//            let value = try decode(from: &container, forKey: key)
//            dict[key.stringValue] = value
//        }
//        return dict
//    }
//
//    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
//        for value in array {
//            if let value = value as? Bool {
//                try container.encode(value)
//            } else if let value = value as? Int64 {
//                try container.encode(value)
//            } else if let value = value as? Double {
//                try container.encode(value)
//            } else if let value = value as? String {
//                try container.encode(value)
//            } else if value is JSONNull {
//                try container.encodeNil()
//            } else if let value = value as? [Any] {
//                var container = container.nestedUnkeyedContainer()
//                try encode(to: &container, array: value)
//            } else if let value = value as? [String: Any] {
//                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
//                try encode(to: &container, dictionary: value)
//            } else {
//                throw encodingError(forValue: value, codingPath: container.codingPath)
//            }
//        }
//    }
//
//    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
//        for (key, value) in dictionary {
//            let key = JSONCodingKey(stringValue: key)!
//            if let value = value as? Bool {
//                try container.encode(value, forKey: key)
//            } else if let value = value as? Int64 {
//                try container.encode(value, forKey: key)
//            } else if let value = value as? Double {
//                try container.encode(value, forKey: key)
//            } else if let value = value as? String {
//                try container.encode(value, forKey: key)
//            } else if value is JSONNull {
//                try container.encodeNil(forKey: key)
//            } else if let value = value as? [Any] {
//                var container = container.nestedUnkeyedContainer(forKey: key)
//                try encode(to: &container, array: value)
//            } else if let value = value as? [String: Any] {
//                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
//                try encode(to: &container, dictionary: value)
//            } else {
//                throw encodingError(forValue: value, codingPath: container.codingPath)
//            }
//        }
//    }
//
//    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
//        if let value = value as? Bool {
//            try container.encode(value)
//        } else if let value = value as? Int64 {
//            try container.encode(value)
//        } else if let value = value as? Double {
//            try container.encode(value)
//        } else if let value = value as? String {
//            try container.encode(value)
//        } else if value is JSONNull {
//            try container.encodeNil()
//        } else {
//            throw encodingError(forValue: value, codingPath: container.codingPath)
//        }
//    }
//
//    public required init(from decoder: Decoder) throws {
//        if var arrayContainer = try? decoder.unkeyedContainer() {
//            self.value = try JSONAny.decodeArray(from: &arrayContainer)
//        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
//            self.value = try JSONAny.decodeDictionary(from: &container)
//        } else {
//            let container = try decoder.singleValueContainer()
//            self.value = try JSONAny.decode(from: container)
//        }
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        if let arr = self.value as? [Any] {
//            var container = encoder.unkeyedContainer()
//            try JSONAny.encode(to: &container, array: arr)
//        } else if let dict = self.value as? [String: Any] {
//            var container = encoder.container(keyedBy: JSONCodingKey.self)
//            try JSONAny.encode(to: &container, dictionary: dict)
//        } else {
//            var container = encoder.singleValueContainer()
//            try JSONAny.encode(to: &container, value: self.value)
//        }
//    }
//}
