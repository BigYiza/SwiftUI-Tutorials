//
//  ContentView.swift
//  Landmarks
//
//  Created by 张义 on 2024/5/14.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .featured
    
    enum Tab {
            case featured
            case list
        }
    
    var body: some View {
        
        TabView(selection: $selection) {
                    CategoryHome()
                        .tag(Tab.featured)
                        .tabItem {
                                            Label("Featured", systemImage: "star")
                                        }


                    LandmarkList()
                        .tag(Tab.list)
                        .tabItem {
                                            Label("List", systemImage: "list.bullet")
                                        }
                }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
