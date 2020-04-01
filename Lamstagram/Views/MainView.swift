//
//  MainView.swift
//  Lamstagram
//
//  Created by Raul Batista on 16/11/2019.
//  
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject private var authenticatedUserStore: AuthenticatedUserStore
    
    var body: some View {
        TabView {
            NavigationView {
                FeedView(user: nil)
            }
            .tabItem {
                Image(systemName: "house")
                Text("Feed")
            }
            .tag("feed")
            
            NavigationView {
                ProfileView(
                    user: authenticatedUserStore.user!
                )
            }
            .tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
            .tag("profile")
        }
        .accentColor(.black)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
