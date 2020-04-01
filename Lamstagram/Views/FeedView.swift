//
//  FeedView.swift
//  Lamstagram
//
//  Created by Raul Batista on 16/11/2019.
//  
//

import SwiftUI

struct FeedView: View {
    @ObservedObject private var feedStore: FeedStore
    
    init(user: User?) {
         feedStore = FeedStore(user: user)
    }
    
    var body: some View {
        Group {
            if feedStore.posts.isEmpty {
                LoadingIndicatorView()
            }
            else {
                ScrollView(.vertical) {
                    ForEach(feedStore.posts) { post in
                        PostView(post: post)
                    }
                }
            }
        }
        .navigationBarTitle("Feed")
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView(user: nil)
    }
}
