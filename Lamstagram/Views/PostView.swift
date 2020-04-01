//
//  PostView.swift
//  Lamstagram
//
//  Created by Raul Batista on 16/11/2019.
//  
//

import SwiftUI

struct PostView: View {
    @EnvironmentObject private var likedPostsStore: LikedPostsStore
    @State private var modalIsPresented = false
    
    let post: Post
    
    var isLiked: Bool {
        likedPostsStore.postIDs.contains(post.id)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            NavigationLink(
                destination: ProfileView(user: post.user)
            ) {
                HStack(spacing: 16) {
                    ProfilePhotoView(user: post.user, size: 40)
                    
                    VStack(alignment: .leading) {
                        Text(post.user.nickname)
                            .fontWeight(.semibold)
                        Text(post.user.name)
                    }
                }
                .padding()
            }
            .buttonStyle(PlainButtonStyle())
            
            Button(action: { self.modalIsPresented = true }) {
                Image(post.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .buttonStyle(PlainButtonStyle())
            .sheet(isPresented: self.$modalIsPresented) {
                Image(self.post.imageName)
                    .resizable()
                    .aspectRatio(1, contentMode: .fill)
                    .edgesIgnoringSafeArea(.bottom)
            }
            
            HStack(spacing: 20) {
                Button(action: toggleLike) {
                    Image(systemName: isLiked ? "heart.fill" : "heart")
                }
                
                Image(systemName: "message")
                Image(systemName: "paperplane")
                
                Spacer()
                
                Image(systemName: "bookmark")
            }
            .font(.system(size: 20))
            .padding()
        }
    }
    
    func toggleLike() {
        likedPostsStore.toggle(post: post)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(
            post: MockData.posts.first!
        )
    }
}
