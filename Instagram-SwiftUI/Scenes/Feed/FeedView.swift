//
//  ContentView.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 21/01/21.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack(alignment: .top){
            Color.black.ignoresSafeArea()
            
            VStack(spacing: 0) {
                CustomNavigationBar()
                
                ScrollView(.vertical, showsIndicators: false) {
                    StoriesView()
                        .padding(.horizontal, -10)
                    Divider()
                    VStack(spacing: 0) {
                        ForEach(Post().all(), id: \.id) {
                            post in
                            PostItem(post: post)
                                .padding(.bottom)
                        }
                    }
                }
            }
        }.navigationBarHidden(true)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
