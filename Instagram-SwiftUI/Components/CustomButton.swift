//
//  CustomButton.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 21/01/21.
//

import SwiftUI

struct CustomButton: View {
    var isActive: Bool
    
    var body: some View {
        ZStack {
            Text("Entrar")
                .font(.subheadline)
                .bold()
                .foregroundColor(.white)
            
            if(!isActive) {
                Rectangle().foregroundColor(Color(UIColor.black)).opacity(0.3)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50, alignment: .center)
        .background(Color(UIColor.systemBlue))
        .cornerRadius(5)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(isActive: false).previewLayout(.sizeThatFits)
    }
}
