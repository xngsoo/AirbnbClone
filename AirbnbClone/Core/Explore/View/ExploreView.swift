//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Han on 4/16/24.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
    @StateObject var viewmodel = ExploreViewModel(service: ExploreService())
    @State private var showMapView = false
    
    var body: some View {
        NavigationStack {
            
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView, viewmodel: viewmodel)
            } else {
                ZStack(alignment: .bottom) {
                    ScrollView {
                        SearchAndFilterBar(location: $viewmodel.searchLocation)
                            .onTapGesture {
                                withAnimation(.snappy) {
                                    showDestinationSearchView.toggle()
                                }
                            }
                        
                        LazyVStack(spacing: 32) {
                            ForEach(viewmodel.listings) { listing in
                                NavigationLink(value: listing) {
                                    ListingItemView(listing: listing)
                                        .frame(height: 400)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                            }
                        }
                    }
                    .navigationDestination(for: Listing.self) { listing in
                        ListingDetailView(listing: listing)
                            .navigationBarBackButtonHidden()
                    }
                    
                    // floating map button
                    Button {
                        showMapView.toggle()
                    } label: {
                        HStack {
                            Text("Map")
                            
                            Image(systemName: "paperplane")
                        }
                        .foregroundStyle(.white)
                        .padding(.vertical, 12)
                        .padding(.horizontal)
                        .background(.black)
                        .clipShape(Capsule())
                        .padding()
                    }
                }
                .sheet(isPresented: $showMapView, content: {
                    ListingMapView(listings: viewmodel.listings)
                })
            }
        }
    }
}

#Preview {
    ExploreView()
}
