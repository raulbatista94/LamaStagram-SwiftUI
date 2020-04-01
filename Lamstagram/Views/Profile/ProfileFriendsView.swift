//
//  FriendsView.swift
//  Lamstagram
//
//  Created by Raul Batista on 16/11/2019.
//  
//

import SwiftUI

struct ProfileFriendsView: View {
    let user: User
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(self.user.friends) { friend in
                    VStack {
                        NavigationLink(
                            destination: ProfileView(user: friend)
                        ) {
                            VStack {
                                Image(friend.imageName)
                                    .resizable()
                                    .clipShape(Circle())
                                
                                Text(friend.name.uppercased())
                                    .font(.caption)
                                    .lineLimit(1)
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .frame(width: 75, height: 75)
                }
            }
        }
    }
}

struct ProfileFriendsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileFriendsView(
            user: MockData.users.first!
        )
    }
}
