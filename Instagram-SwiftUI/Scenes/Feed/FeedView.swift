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
            
            VStack {
                CustomNavigationBar()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
