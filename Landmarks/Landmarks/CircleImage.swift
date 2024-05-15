//
//  CircleImage.swift
//  Landmarks
//
//  Created by 张义 on 2024/5/14.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("img_qd_logo")
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(.circle)
            .overlay(Circle().stroke(.white, lineWidth: 4))
            .shadow(radius: 6)
    }
}

#Preview {
    CircleImage()
}
