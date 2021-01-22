//
//  CustomNavigationView.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 22/01/21.
//

import SwiftUI

struct CustomNavigationBar: View {
    typealias Body = NavigationView
        
    var body: some View{
        ZStack {
            Color.black.ignoresSafeArea()
            HStack {
                Image("InstagramName")                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 40)
                    .background(Color.black)
                
                Spacer()
                
                NavigationLink(destination: LoginView(model: .init(initialState: .init()))){
                    Image(systemName: "plus.app")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(.horizontal, 5)
                }
                
                NavigationLink(destination: LoginView(model: .init(initialState: .init()))){
                    Image(systemName: "heart")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(.horizontal, 5)
                }
                
                NavigationLink(destination: LoginView(model: .init(initialState: .init()))){
                    Image(systemName: "paperplane")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(.horizontal, 5)
                }
            }.padding()
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 60, alignment: .center)
    }
}

struct CustomNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationBar().previewLayout(.sizeThatFits)
    }
}
