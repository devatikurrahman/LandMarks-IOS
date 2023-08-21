//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Atikur Rahman on 8/19/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
