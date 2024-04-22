//
//  Listing.swift
//  AirbnbClone
//
//  Created by Han on 4/22/24.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    let id: String
    let ownerUid: String
    let ownerName: String
    let owenerImageUrl: String

    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    var imageURLs: [String]
    let latitude: Double
    let longitude: Double
    let address: String
    let city: String
    let state: String
    
    let title: String
    var rating: Double
    
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    let type: ListingType
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    var id: Int {return self.rawValue}
    case selfCheckIn
    case superHost
    
    var imageName: String {
        switch self {
        case .selfCheckIn: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }
    
    var title: String {
        switch self {
        case .selfCheckIn: return "Self check-in"
        case .superHost: return "Superhost"
        }
    }
    
    var subtitle: String {
        switch self {
        case .selfCheckIn: return "Check your self in with the keypad"
        case .superHost: return "Superhosts are experienced, highly rated hosts who are commited to proiding greate stars for guests"
        }
    }
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    var id: Int {return self.rawValue}
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title: String {
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "wifi"
        case .laundry: return "laundry"
        case .tv: return "tv"
        case .alarmSystem: return "alarmSystem"
        case .office: return "office"
        case .balcony: return "balcony"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmSystem: return "checkerboard.shield"
        case .office: return "pencil.and.ruler.fill"
        case .balcony: return "building"
        }
    }
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    var id: Int {return self.rawValue}
    case apartment
    case house
    case townhouse
    case villa
    
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townhouse: return "Town House"
        case .villa: return "Villa"
        }
    }
}
