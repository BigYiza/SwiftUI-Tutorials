//
//  ContentView.swift
//  Landmarks
//
//  Created by 张义 on 2024/5/14.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
