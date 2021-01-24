//
//  LoginView.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 21/01/21.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var model: LoginViewModel
    
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
                
                CustomTextField(placeholder: "Usuário", text: model.bindings.username, enableAutocorrection: false, autocapitalization: .none)
                    .padding(.bottom, 5)
                
                CustomSecureField(placeholder: "Senha", text: model.bindings.password)
                
                LinkText(text: "Esqueceu a senha?", alignment: .trailing)
                
                NavigationLink(destination: CustomTabView()){
                    //TO-DO: Change Custom Button to a View with Navigation Link
                    CustomButton(isActive: !model.state.shouldEnableLoginButton)
                }.disabled(model.state.shouldEnableLoginButton)
                
                Divider()
                    .background(Color.gray)
                    .padding(.top, 15)
                
                HStack(alignment: .center) {
                    Text("Não tem uma conta?")
                        .foregroundColor(.gray)
                    LinkText(text: "Cadastre-se.", alignment: .leading, maxWidth: 110)
                }.padding()

            }.padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LoginView(
                model: .init(
                    initialState: .init()
                )
            )
        }
    }
}
