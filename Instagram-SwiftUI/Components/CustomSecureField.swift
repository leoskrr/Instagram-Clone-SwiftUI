//
//  CustomSecureView.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 21/01/21.
//

import SwiftUI

struct CustomSecureField: View {
    var placeholder: String = ""
    @Binding var text: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeholder).foregroundColor(Color("PlaceholderColor"))
                    .padding(.horizontal)
            }
            
            SecureField("", text: $text)
                .padding(.horizontal)
                .foregroundColor(.white)
                .frame(minWidth: 0, idealWidth: .infinity ,maxWidth: .infinity, minHeight: 50, idealHeight: 50, maxHeight: 50, alignment: .center)
        }.overlay(
            CustomRoundedRectangle().body
                .stroke(Color("TextFieldBorderColor"), lineWidth: 3)
        ).background(CustomRoundedRectangle().body.fill(Color("TextFieldColor")))
    }
}

struct CustomSecureField_Previews: PreviewProvider {
    static var previews: some View {
        CustomSecureField(placeholder: "Password", text: .constant("")).previewLayout(.sizeThatFits)
    }
}
