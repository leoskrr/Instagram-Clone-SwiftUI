//
//  StoryIconItem.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 22/01/21.
//

import SwiftUI

struct StoryIconItem: View {
    var userImage: Image = Image("User0")
    let conicGradient = RadialGradient(
        gradient:
            Gradient(colors: [
                Color.init("StoryIconBorderPink"),
                Color.init("StoryIconBorderOrange")
            ]),
        center: .bottom,
        startRadius: 100,
        endRadius: 9
    )
    
    var body: some View {
        userImage
            .resizable()
            .scaledToFill()
            .frame(width: 70, height: 70, alignment: .center)
            .cornerRadius(35)
            .overlay(
                Circle()
                    .stroke(conicGradient, lineWidth: 4)
            )
    }
}

struct StoryIconItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryIconItem().previewLayout(.sizeThatFits)
    }
}
