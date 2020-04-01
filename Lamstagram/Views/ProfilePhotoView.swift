//
//  ProfilePhoto.swift
//  Lamstagram
//
//  Created by Raul Batista on 16/11/2019.
//  
//

import SwiftUI

struct ProfilePhotoView: View {
    let user: User
    let size: CGFloat
    
    var body: some View {
        Image(user.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .frame(width: size, height: size)
    }
}

struct ProfilePhotoView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoView(
            user: MockData.users.first!,
            size: 100
        )
    }
}
