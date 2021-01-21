//
//  CustomSecureView.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 21/01/21.
//

import SwiftUI

struct CustomSecureView: View {
    var placeholder: String = ""
    @Binding var text: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeholder).foregroundColor(Color("PlaceholderColor")).padding()
            }
            
            SecureField("", text: $text)
                .padding(.all, 20)
                .foregroundColor(.white)
            
        }.overlay(
            CustomRoundedRectangle().body
                .stroke(Color("TextFieldBorderColor"), lineWidth: 3)
        ).background(CustomRoundedRectangle().body.fill(Color("TextFieldColor")))
    }
}

struct CustomSecureView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSecureView(placeholder: "Password", text: .constant("")).previewLayout(.sizeThatFits)
    }
}
