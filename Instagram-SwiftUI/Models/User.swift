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
    var username: String = ""
    
    func all() -> [User] {
        return [
            User(imageName: "User0", username: "user99"),
            User(imageName: "User1", username: "anonymous"),
            User(imageName: "User2", username: "vabrz"),
            User(imageName: "User3", username: "helybr"),
            User(imageName: "User4", username: "itsme"),
            User(imageName: "User5", username: "theauthor"),
            User(imageName: "User6", username: "p3rs0n"),
            User(imageName: "User7", username: "eldoe"),
            User(imageName: "User8", username: "verkz"),
        ]
    }
}
