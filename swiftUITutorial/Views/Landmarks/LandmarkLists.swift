//
//  LandmarkLists.swift
//  swiftUITutorial
//
//  Created by KimRin on 9/7/24.
//

import SwiftUI

struct LandmarkLists: View {
    @Environment(ModelData.self) var modelData
    
    
    @State private var showFavoritesOnly = false
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks)
             { landmark in
                
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkLists()
        .environment(ModelData())
}
