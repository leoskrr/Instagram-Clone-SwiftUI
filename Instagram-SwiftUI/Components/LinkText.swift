//
//  LinkText.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 21/01/21.
//

import SwiftUI

struct LinkText: View {
    var text: String = "Text here"
    var alignment: Alignment = .center
    var maxWidth: CGFloat = .infinity
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("BlueLinkColor"))
            .frame(minWidth: 0, maxWidth: maxWidth, minHeight: 0, maxHeight: 60, alignment: alignment)
    }
}

struct LinkText_Previews: PreviewProvider {
    static var previews: some View {
        LinkText().previewLayout(.sizeThatFits)
    }
}
