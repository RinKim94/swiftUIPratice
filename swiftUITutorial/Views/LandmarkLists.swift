//
//  LandmarkLists.swift
//  swiftUITutorial
//
//  Created by KimRin on 9/7/24.
//

import SwiftUI

struct LandmarkLists: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkLists()
}
