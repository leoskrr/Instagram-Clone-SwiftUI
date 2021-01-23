//
//  Post.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 22/01/21.
//

import Foundation

struct Post {
    var id: String = UUID().uuidString
    var description: String = ""
    var imageName: String = ""
    var author: User?
    
    func all() -> [Post] {
        return [
            Post(description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam facilisis, ex a pretium vulputate, tortor tortor efficitur quam, at malesuada justo felis mollis neque. Vivamus quis risus velit",
                 imageName: "Post0",
                 author: User().all()[0]),
            Post(description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam facilisis, ex a pretium vulputate, tortor tortor efficitur quam, at malesuada justo felis mollis neque. Vivamus quis risus velit",
                 imageName: "Post1",
                 author: User().all()[4]),
            Post(description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam facilisis, ex a pretium vulputate, tortor tortor efficitur quam, at malesuada justo felis mollis neque. Vivamus quis risus velit",
                 imageName: "Post2",
                 author: User().all()[6]),
            Post(description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam facilisis, ex a pretium vulputate, tortor tortor efficitur quam, at malesuada justo felis mollis neque. Vivamus quis risus velit",
                 imageName: "Post3",
                 author: User().all()[3]),
            Post(description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam facilisis, ex a pretium vulputate, tortor tortor efficitur quam, at malesuada justo felis mollis neque. Vivamus quis risus velit",
                 imageName: "Post4",
                 author: User().all()[7])
        ]
    }
}
