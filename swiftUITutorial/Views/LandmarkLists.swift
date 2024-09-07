//
//  LandmarkLists.swift
//  swiftUITutorial
//
//  Created by KimRin on 9/7/24.
//

import SwiftUI

struct LandmarkLists: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
            
        }
    }
}

#Preview {
    LandmarkLists()
}
