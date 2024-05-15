//
//  ContentView.swift
//  Landmarks
//
//  Created by 张义 on 2024/5/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MapView().frame(height: 300)
            
            CircleImage()
                .offset(y: -100)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading) {
                
                Text("Turtle Rock")
                    .font(.title)
                    .fontWeight(.bold)
                .foregroundStyle(.green)
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                
                Divider()
                
                Text("About Turtle Rock")
                        .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
