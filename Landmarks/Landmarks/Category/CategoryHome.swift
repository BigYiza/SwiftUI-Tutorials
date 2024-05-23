//
//  CategoryHome.swift
//  Landmarks
//
//  Created by 张义 on 2024/5/17.
//

import SwiftUI

struct CategoryHome: View {
    
    @Environment(ModelData.self) var modelData
    @State private var showingProfile = false
    
    var body: some View {
        NavigationSplitView {
            
            List {
                
                modelData.features.last?.image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                    .padding(.bottom, 10)
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 0)))
                .listRowSeparator(.hidden)
            }
            
                .navigationTitle("Featured")
            
                .toolbar(content: {
                    Button.init(action: {
                        showingProfile.toggle()
                    }, label: {
                        Label("User Profile", systemImage: "person.crop.circle")
                    })
                })
                .sheet(isPresented: $showingProfile, content: {
                    ProfileHost()
                })
       } detail: {
           Text("Select a Landmark")
       }
    }
}

#Preview {
    CategoryHome().environment(ModelData())
}
