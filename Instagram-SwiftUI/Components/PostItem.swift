//
//  PostItem.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 22/01/21.
//

import SwiftUI

struct PostItem: View {
    var post: Post
    
    var body: some View {        
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Image(post.author!.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                
                Text(post.author!.username)
                    .bold()
                    .foregroundColor(.white)
                
                Spacer()
                
                Image(systemName: "ellipsis")
            }.padding(.all, 5)
            
            Image(post.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 400, alignment: .center)
                .background(Color.white)
            
            HStack {
                HStack (spacing: 15){
                    Image(systemName: "heart")
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    Image(systemName: "message")
                        .font(.title2)
                        .foregroundColor(.white)
                        .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                    
                    Image(systemName: "paperplane")
                        .font(.title2)
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                Image(systemName: "bookmark")
                    .font(.title2)
                    .foregroundColor(.white)
            }.padding(.horizontal, 5)
            
            ZStack {
                Text("\(post.author!.username) ").bold().foregroundColor(.white) + Text(post.description).foregroundColor(.white)
            }.padding(.horizontal, 5)
        }
    }
}

struct PostItem_Previews: PreviewProvider {
    static var previews: some View {
        PostItem(post: Post(
                    author: User().all()[0])
                    .all()[0]).previewLayout(.sizeThatFits)
    }
}
