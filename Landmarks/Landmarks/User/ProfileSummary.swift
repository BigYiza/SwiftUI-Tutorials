//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by 张义 on 2024/5/22.
//

import SwiftUI

struct ProfileSummary: View {
    
    @Environment(ModelData.self) var modelData

    
    var profile: Profile
    
    var body: some View {
        
        
        ScrollView {
            VStack(alignment: .leading, spacing: 10, content: {
                Text("Profile for: \(profile.username)")
                    .bold()
                    .font(.title)
                
                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                            
            })
            
            VStack(alignment: .leading) {
                Text("Recent Hikes")
                    .font(.headline)


                HikeView(hike: modelData.hikes[0])
            }
        }
        
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}
