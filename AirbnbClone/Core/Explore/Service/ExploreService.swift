//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Han on 4/22/24.
//

import Foundation

class ExploreService {
    func fetchListing() async throws -> [Listing] {
        return DeveloperPreview().listings
    }
}
