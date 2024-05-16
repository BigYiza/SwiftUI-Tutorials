//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 张义 on 2024/5/14.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
