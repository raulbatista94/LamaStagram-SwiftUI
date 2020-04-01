//
//  ProfileView.swift
//  Lamstagram
//
//  Created by Raul Batista on 16/11/2019.
//  
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical) {
                VStack {
                    ProfileHeaderView(user: self.user)
                        .padding(16)
                    
                    ProfileFriendsView(user: self.user)
                        .padding(.bottom, 16)
                    
                    ProfilePostsView(user: self.user, width: geometry.size.width)
                }
            }
        }
        .navigationBarTitle(
            Text(user.name),
            displayMode: .inline
        )
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(
            user: MockData.users.first!
        )
    }
}

