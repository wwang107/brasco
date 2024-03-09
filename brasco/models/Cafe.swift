import Foundation
import CoreLocation

struct Cafe: Codable {
    let id: String
    let name: String
    let description: String
    let owners: [Owner]
    let menuItems: [MenuItem]
    let coordinates: Coordinates
    let location: Location

    private enum CodingKeys: String, CodingKey {
        case id, name, description, owners, menuItems = "menu_items", coordinates, location
    }
}

struct Owner: Codable {
    let name: String
    let userId: String
}

struct MenuItem: Codable {
    let item: String
    let amount: Double
    let currency: String

    private enum CodingKeys: String, CodingKey {
        case item, amount, currency
    }
}

struct Coordinates: Codable {
    let latitude: Double
    let longitude: Double
    var locationCoodinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct Location: Codable {
    let address: String
    let city: String
    let state: String
    let zipcode: String
}
