//
//  User.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 22/01/21.
//

import Foundation

struct User {
    var id: String = UUID().uuidString
    var imageName: String = ""
    
    func all() -> [User] {
        return [
            User(imageName: "User0"),
            User(imageName: "User1"),
            User(imageName: "User2"),
            User(imageName: "User3"),
            User(imageName: "User4"),
            User(imageName: "User5"),
            User(imageName: "User6"),
            User(imageName: "User7"),
            User(imageName: "User8"),
        ]
    }
}
