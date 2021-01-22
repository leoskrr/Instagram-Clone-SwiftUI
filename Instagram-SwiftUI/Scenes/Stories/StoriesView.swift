//
//  StoriesView.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 22/01/21.
//

import SwiftUI

//StoryIconItem(userImage: Image(user.imageName))
//    .padding(.horizontal, 10)


struct StoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(User().all(), id: \.id) { user in
                    StoryIconItem(userImage: Image(user.imageName))
                        .padding(.leading, 20)
                }
            }.padding(.vertical)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 90, alignment: .center)
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView().previewLayout(.sizeThatFits)
    }
}
