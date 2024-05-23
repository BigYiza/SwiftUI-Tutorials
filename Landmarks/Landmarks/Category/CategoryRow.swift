//
//  CategoryRow.swift
//  Landmarks
//
//  Created by 张义 on 2024/5/17.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                           HStack(alignment: .top, spacing: 15) {
                               ForEach(items) { landmark in
                                   
                                   NavigationLink {
                                       LandmarkDetail(landmark: landmark)
                                   } label: {
                                       CategoryItem(landmark: landmark)
                                   }
                               }
                           }
                       }
                       .frame(height: 185)
        }
    }
}

#Preview {
    
    let key = ModelData().categories.first!.key
    let landmarks = ModelData().categories.first!.value
    
    return CategoryRow(categoryName: key, items: landmarks)
}
