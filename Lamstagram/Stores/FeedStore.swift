//
//  FeedStore.swift
//  Lamstagram
//
//  Created by Raul Batista on 16/11/2019.
//  
//

import Foundation

final class FeedStore: ObservableObject {
    @Published var posts: [Post] = []
    
    init(user: User?) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.posts = user?.posts ?? MockData.posts
        }
    }
}
