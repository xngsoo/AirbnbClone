//
//  ListingMapView.swift
//  AirbnbClone
//
//  Created by Han on 4/23/24.
//

import SwiftUI
import MapKit

struct ListingMapView: View {
    
    @Environment(\.dismiss) var dismiss
    private let listings: [Listing]
    @State private var cameraPosition: MapCameraPosition
    @State private var selectedListing: Listing?
    
    init(listings: [Listing], center: CLLocationCoordinate2D = .losAngeles) {
        self.listings = listings
        let coordinateRegion = MKCoordinateRegion(
            center: center,
            latitudinalMeters: 50000,
            longitudinalMeters: 50000
        )
        self._cameraPosition = State(initialValue: .region(coordinateRegion))
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Map(position: $cameraPosition, selection: $selectedListing) {
                ForEach(listings) { listing in
                    Marker("", coordinate: listing.coordinate)
                        .tag(listing.id)
                }
            }
            
            Button {
                dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
                    .background(
                        Circle()
                            .fill(.white)
                            .frame(width: 32, height: 32)
                            .shadow(radius: 4)
                    )
                    .padding(.top, 40)
                    .padding(.leading, 32)
            }
        }
    }
}

#Preview {
    ListingMapView(listings: DeveloperPreview.shared.listings)
}
