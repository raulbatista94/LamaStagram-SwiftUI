//
//  FeedItem.swift
//  Lamstagram
//
//  Created by Raul Batista on 16/11/2019.
//  
//

import SwiftUI

struct Post: Identifiable {
    let id: Int
    let imageName: String
    let text: String
    
    let user: User
}
