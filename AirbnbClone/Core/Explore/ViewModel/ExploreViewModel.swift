//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Han on 4/22/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    init(service:  ExploreService) {
        self.service = service
        
        Task { await fetchListing()}
    }
    
    func fetchListing() async {
        do {
            self.listings = try await service.fetchListing()
        } catch {
            print("debug failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
}
