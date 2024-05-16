//
//  CircleImage.swift
//  Landmarks
//
//  Created by 张义 on 2024/5/14.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(.circle)
            .overlay(Circle().stroke(.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
