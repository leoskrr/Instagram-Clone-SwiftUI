//
//  CustomTabView.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 24/01/21.
//

import SwiftUI

struct CustomTabView: View {
        
    var body: some View {
        TabView(selection: .constant(0),
                content:  {
                    FeedView().tabItem {
                        Image(systemName: "house.fill")
                    }.tag(0)
                    
                    Text("Search").tabItem {
                        Image(systemName: "magnifyingglass")
                    }.tag(1)
                    
                    Text("Reels").tabItem {
                        Image(systemName: "arrowtriangle.forward.square")
                    }.tag(2)
                    
                    Text("Marketplace").tabItem {
                        Image(systemName: "bag")
                    }.tag(3)
                    
                    Text("Profile").tabItem {
                        Image(systemName: "person.crop.circle")
                    }.tag(4)
                }
        )
        .onAppear() {
            UITabBar.appearance().barTintColor = .black
            UITabBar.appearance().isTranslucent = true
        }
        .accentColor(.white)
        .navigationBarHidden(true)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
