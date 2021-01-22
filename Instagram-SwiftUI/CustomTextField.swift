//
//  CustomTextField.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 21/01/21.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder: String = ""
    @Binding var text: String
    var keyboardType: UIKeyboardType = .default
    var enableAutocorrection: Bool = true
    var autocapitalization: UITextAutocapitalizationType = .none
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeholder).foregroundColor(Color("PlaceholderColor"))
                    .padding(.horizontal)
            }
            
            TextField("", text: $text)
                .padding(.all, 15)
                .foregroundColor(.white)
                .keyboardType(keyboardType)
                .disableAutocorrection(!enableAutocorrection)
                .autocapitalization(autocapitalization)
        }.overlay(
            CustomRoundedRectangle().body
                .stroke(Color("TextFieldBorderColor"), lineWidth: 3)
        ).background(CustomRoundedRectangle().body.fill(Color("TextFieldColor")))
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(placeholder: "Placeholder", text: .constant("")).previewLayout(.sizeThatFits)
    }
}
