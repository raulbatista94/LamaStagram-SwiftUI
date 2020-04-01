//
//  AuthenticatedUser.swift
//  Lamstagram
//
//  Created by Raul Batista on 16/11/2019.
//  
//

import Foundation

final class AuthenticatedUserStore: ObservableObject {
    @Published var user: User?
    
    init(user: User?) {
        self.user = user
    }
}
