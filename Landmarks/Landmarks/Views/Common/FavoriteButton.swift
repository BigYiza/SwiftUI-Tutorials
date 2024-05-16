//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by 张义 on 2024/5/16.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding var isSet: Bool
    
    var body: some View {
        
        Button.init(action: {
            isSet.toggle()
        }, label: {
            Label("", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        })
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
