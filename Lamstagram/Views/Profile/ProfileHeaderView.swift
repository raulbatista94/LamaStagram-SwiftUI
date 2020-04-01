//
//  ProfileView.swift
//  Lamstagram
//
//  Created by Raul Batista on 16/11/2019.
//  
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    
    var body: some View {
        VStack(spacing: 32) {
            HStack(spacing: 16) {
                ProfilePhotoView(user: user, size: 80)
                
                Spacer()
                
                HStack(spacing: 24) {
                    VStack {
                        Text("\(user.numberOfPosts)")
                            .fontWeight(.semibold)
                        Text("Posts")
                    }
                    
                    VStack {
                        Text("\(user.numberOfFollowers)")
                            .fontWeight(.semibold)
                        Text("Followers")
                    }
                    
                    VStack {
                        Text("\(user.numberFollowing)")
                            .fontWeight(.semibold)
                        Text("Following")
                    }
                }
                
                Spacer()
            }
            
            Text(user.description)
            .fixedSize(horizontal: false, vertical: true)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(
            user: MockData.users.first!
        )
    }
}
