//
//  MockData.swift
//  SwiftUI in 5 minutes
//
//  Created by Raul Batista on 08/10/2019.
//  
//

import SwiftUI

enum MockData {
    static let users: [User] = [
        User(
            id: 1,
            nickname: "barallama",
            name: "Barack O. Llama",
            imageName: "Photos/1",
            numberOfPosts: 42,
            numberOfFollowers: 596,
            numberFollowing: 346,
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit 📯. Nam vulputate urna sit amet sodales interdum 🍒. Proin lobortis luctus elit quis venenatis 💨. Donec et leo mauris 💔."
        ),
        User(
            id: 2,
            nickname: "llama_dalai",
            name: "Dalai Llama",
            imageName: "Photos/2",
            numberOfPosts: 14,
            numberOfFollowers: 3,
            numberFollowing: 12,
            description: "Praesent condimentum urna a ex lacinia tristique 🎰. Quisque non justo turpis 🐫. Duis pharetra lobortis odio, in dapibus mauris mollis sit amet 📈."
        ),
        User(
            id: 3,
            nickname: "dolly",
            name: "Dolly Llama",
            imageName: "Photos/3",
            numberOfPosts: 42,
            numberOfFollowers: 596,
            numberFollowing: 346,
            description: "Sed nisi odio, commodo ut euismod sed, aliquet blandit urna 🐠. Duis vitae aliquam justo 🌖. Fusce luctus massa nibh, a porta purus iaculis non. Vestibulum vel tincidunt eros 💾."
        ),
        User(
            id: 4,
            nickname: "shama_l",
            name: "Shama Llama",
            imageName: "Photos/4",
            numberOfPosts: 513,
            numberOfFollowers: 871,
            numberFollowing: 66,
            description: "Nulla urna massa, vestibulum in efficitur ac, cursus ac sem 🌀. Sed euismod ligula suscipit arcu placerat finibus 💋. Curabitur at aliquet turpis 🌲. Pellentesque condimentum fringilla quam ac efficitur 🎅."
        ),
        User(
            id: 5,
            nickname: "appllama",
            name: "Tim Applama",
            imageName: "Photos/5",
            numberOfPosts: 1348,
            numberOfFollowers: 20490,
            numberFollowing: 13,
            description: "Pellentesque quis imperdiet urna, sed iaculis justo 💯. Nam sit amet dui at ipsum lacinia aliquam 💒. Integer gravida gravida erat in finibus 👛."
        ),
        User(
            id: 6,
            nickname: "scifillam",
            name: "Stanisław Llam",
            imageName: "Photos/6",
            numberOfPosts: 1,
            numberOfFollowers: 0,
            numberFollowing: 0,
            description: "Etiam pretium turpis in sagittis laoreet 🏡. Curabitur ut pretium tortor. Etiam ac pharetra mi 🔸. Proin sollicitudin dolor at risus mattis venenatis 🍯. Donec at molestie nibh, at blandit nisi 🐯."
        ),
        User(
            id: 7,
            nickname: "alpacano",
            name: "Al Pacano",
            imageName: "Photos/7",
            numberOfPosts: 430,
            numberOfFollowers: 352,
            numberFollowing: 1024,
            description: "Quisque sit amet dapibus quam 🎀. Donec aliquet rutrum gravida 🌻. Etiam tempus nibh quis ipsum placerat efficitur 🍊. Sed quis sem ante 🎉. Mauris sed euismod est 💘."
        ),
        User(
            id: 8,
            nickname: "post_llamone",
            name: "Post Llamone",
            imageName: "Photos/8",
            numberOfPosts: 0,
            numberOfFollowers: 0,
            numberFollowing: 0,
            description: "Aenean ullamcorper, ante non porta volutpat, ante odio facilisis lacus, nec cursus purus elit a est 🍜. Mauris elementum lobortis elit vel finibus 👭. Aliquam vitae magna diam. Nulla facilisi 🌱. Sed id ultricies sapien 🏥."
        ),
        User(
            id: 9,
            nickname: "llamalady",
            name: "Lady Llama",
            imageName: "Photos/9",
            numberOfPosts: 128,
            numberOfFollowers: 2048,
            numberFollowing: 32,
            description: "Ut euismod nunc commodo, ornare turpis elementum, eleifend libero 🍮. Nullam massa eros, lobortis euismod rutrum non, tempus et dui 💂. Etiam enim leo, blandit at ullamcorper in, cursus ullamcorper augue 🐢."
        )
    ]
    
    static let posts: [Post] = [
        Post(
            id: 1,
            imageName: "Photos/1",
            text: "lorem ipsum",
            user: users[0]
        ),
        Post(
            id: 2,
            imageName: "Photos/2",
            text: "lorem ipsum",
            user: users[3]
        ),
        Post(
            id: 3,
            imageName: "Photos/3",
            text: "lorem ipsum",
            user: users[0]
        ),
        Post(
            id: 4,
            imageName: "Photos/4",
            text: "lorem ipsum",
            user: users[1]
        ),
        Post(
            id: 5,
            imageName: "Photos/5",
            text: "lorem ipsum",
            user: users[0]
        ),
        Post(
            id: 6,
            imageName: "Photos/6",
            text: "lorem ipsum",
            user: users[2]
        ),
        Post(
            id: 7,
            imageName: "Photos/7",
            text: "lorem ipsum",
            user: users[0]
        ),
        Post(
            id: 8,
            imageName: "Photos/8",
            text: "lorem ipsum",
            user: users[0]
        ),
        Post(
            id: 9,
            imageName: "Photos/9",
            text: "lorem ipsum",
            user: users[2]
        ),
        Post(
            id: 10,
            imageName: "Photos/10",
            text: "lorem ipsum",
            user: users[1]
        ),
        Post(
            id: 11,
            imageName: "Photos/11",
            text: "lorem ipsum",
            user: users[0]
        ),
        Post(
            id: 12,
            imageName: "Photos/12",
            text: "lorem ipsum",
            user: users[0]
        )
    ]
    
    static let photos: [String] = [
        "Photos/1",
        "Photos/2",
        "Photos/3",
        "Photos/4",
        "Photos/5",
        "Photos/6",
        "Photos/7",
        "Photos/8",
        "Photos/9",
        "Photos/10",
        "Photos/11",
        "Photos/11"
    ]
}
