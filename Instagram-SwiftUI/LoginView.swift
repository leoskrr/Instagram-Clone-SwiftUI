//
//  LoginView.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 21/01/21.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            
            VStack {
                Image("InstagramName")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 50)
                    .background(Color.black)
                    .padding(.bottom)
                
                CustomTextField(placeholder: "Usário", text: $username, enableAutocorrection: false, autocapitalization: .none)
                
                CustomSecureView(placeholder: "Senha", text: $password)
                
                Text("Esqueceu a senha?")
                    .bold()
                    .foregroundColor(Color("BlueLinkColor"))
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 60, alignment: .trailing)
            }.padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
