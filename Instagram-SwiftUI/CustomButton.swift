//
//  CustomButton.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 21/01/21.
//

import SwiftUI

struct CustomButton: View {
    var action: () -> Void = { }
    
    var body: some View {
        Button("Entrar", action: action)
            .padding(.all)
            .foregroundColor(.white)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50, alignment: .center)
            .background(Color(UIColor.systemBlue))
            .buttonStyle(PlainButtonStyle())
            .cornerRadius(10)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton().previewLayout(.sizeThatFits)
    }
}
