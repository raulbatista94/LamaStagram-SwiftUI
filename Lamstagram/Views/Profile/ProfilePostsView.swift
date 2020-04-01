//
//  ProfilePostsView.swift
//  Lamstagram
//
//  Created by Raul Batista on 16/11/2019.
//  
//

import SwiftUI

struct ProfilePostsView: View {
    let user: User
    let width: CGFloat
    
    var body: some View {
        VStack(spacing: 1) {
            ForEach(self.user.posts.chunked(into: 3)) { chunk in
                HStack(spacing: 1) {
                    ForEach(chunk.items) { photo in
                        NavigationLink(
                            destination: FeedView(user: self.user)
                        ) {
                            Image(photo.imageName)
                                .resizable()
                                .aspectRatio(1, contentMode: .fit)
                                .frame(width: self.width / 3)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

struct ProfilePostsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePostsView(
            user: MockData.users.first!,
            width: 300
        )
    }
}
