//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Han on 4/22/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreService
    private var listingCopy = [Listing]()
    
    init(service:  ExploreService) {
        self.service = service
        
        Task { await fetchListing()}
    }
    
    func fetchListing() async {
        do {
            self.listings = try await service.fetchListing()
            self.listingCopy = listings
        } catch {
            print("debug failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation() {
        let filterListings = listings.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filterListings.isEmpty ? listingCopy : filterListings
    }
}
