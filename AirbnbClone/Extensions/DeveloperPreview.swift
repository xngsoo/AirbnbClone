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
        .init(
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            pricePerNight: 567,
            numberOfBeds: 4,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["listing-2", "listing-1", "listing-3", "listing-4"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa,
            title: "Miami Villa",
            rating: 4.89
        ),
        .init(
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            pricePerNight: 567,
            numberOfBeds: 4,
            latitude: 25.7706,
            longitude: -80.1340,
            imageURLs: ["listing-3", "listing-2", "listing-1", "listing-4"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .tv, .kitchen, .office],
            type: .house,
            title: "Miami Beach House",
            rating: 4.51
        ),
        .init(
            ownerUid: NSUUID().uuidString,
            ownerName: "Steve Johnson",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            pricePerNight: 763,
            numberOfBeds: 4,
            latitude: 25.7650,
            longitude: -80.1936,
            imageURLs: ["listing-4", "listing-2", "listing-3", "listing-1"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony],
            type: .apartment,
            title: "Beatiful Miami apartment in downtown Brickell",
            rating: 4.92
        ),
        .init(
            ownerUid: NSUUID().uuidString,
            ownerName: "Harry Styles",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            pricePerNight: 763,
            numberOfBeds: 4,
            latitude: 34.2,
            longitude: -118.0426,
            imageURLs: ["listing-7", "listing-8", "listing-5", "listing-1"],
            address: "124 Main St",
            city: "Los Angeles",
            state: "California",
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .pool],
            type: .apartment,
            title: "Beatiful Los Angeles home in Malibu",
            rating: 3.91
        ),
        .init(
            ownerUid: NSUUID().uuidString,
            ownerName: "Timothy Chalamet",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            pricePerNight: 763,
            numberOfBeds: 4,
            latitude: 34.1,
            longitude: -118.1426,
            imageURLs: ["listing-5", "listing-6", "listing-7", "listing-8"],
            address: "124 Main St",
            city: "Los Angeles",
            state: "California",
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony],
            type: .apartment,
            title: "Beatiful Los Angeles home in the Hollywood Hills",
            rating: 4.1
        ),
    ]
}
