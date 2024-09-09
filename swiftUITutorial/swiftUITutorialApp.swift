//
//  swiftUITutorialApp.swift
//  swiftUITutorial
//
//  Created by KimRin on 9/7/24.
//

import SwiftUI

@main
struct swiftUITutorialApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
