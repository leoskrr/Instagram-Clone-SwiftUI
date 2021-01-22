//
//  CustomRoundedRectangle.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 21/01/21.
//

import SwiftUI

struct CustomRoundedRectangle: View {
    var defaultCornerRadius: CGFloat = 5
    
    var body: RoundedRectangle {
        RoundedRectangle(cornerRadius: defaultCornerRadius)
    }
}

struct CustomRoundedRectangle_Previews: PreviewProvider {
    static var previews: some View {
        CustomRoundedRectangle()
    }
}
