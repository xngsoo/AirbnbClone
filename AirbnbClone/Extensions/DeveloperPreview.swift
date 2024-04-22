//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by Han on 4/22/24.
//

import Foundation


// mock data
class DeveloperPreview {
    
    static let shared = DeveloperPreview()
    var listings: [Listing] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "John Smith",
              owenerImageUrl: "male-profile-photo",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              pricePerNight: 567,
              imageURLs: ["listing - 2", "listing - 1", "listing - 4", "listing - 3"],
              latitude: 25.7850,
              longitude: -80.1936,
              address: "124 Main St",
              city: "Florida",
              state: "Miami",
              title: "Miani Villa",
              rating: 4.86,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv], type: .villa
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "John Smith",
              owenerImageUrl: "male-profile-photo",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              pricePerNight: 567,
              imageURLs: ["listing - 2", "listing - 1", "listing - 4", "listing - 3"],
              latitude: 25.7706,
              longitude: -80.1340,
              address: "124 Main St",
              city: "Florida",
              state: "Miami",
              title: "Miani Beach House",
              rating: 4.86,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .laundry, .tv, .kitchen, .office], type: .house
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Harry Styles",
              owenerImageUrl: "male-profile-photo",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              pricePerNight: 763,
              imageURLs: ["listing - 2", "listing - 1", "listing - 4", "listing - 3"],
              latitude: 34.2,
              longitude: -118.1936,
              address: "124 Main St",
              city: "Los Angeles",
              state: "Califonia",
              title: "Beatiful Los Angeles home in Malibu",
              rating: 4.97,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .pool], type: .apartment
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Seungsoo Han",
              owenerImageUrl: "male-profile-photo",
              numberOfBedrooms: 3,
              numberOfBathrooms: 2,
              numberOfGuests: 4,
              numberOfBeds: 3,
              pricePerNight: 150,
              imageURLs: ["listing - 2", "listing - 1", "listing - 4", "listing - 3"],
              latitude: 26.828651,
              longitude: 37.551784,
              address: "Soomyeong-ro-2gil",
              city: "Seoul",
              state: "Gangseo-gu",
              title: "Beatufil Apartment",
              rating: 4.5,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony, .kitchen, .laundry, .tv], type: .apartment
             )
        
    ]
}
