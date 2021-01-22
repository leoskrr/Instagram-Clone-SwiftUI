//
//  LoginViewModel.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 21/01/21.
//

import SwiftUI

final class LoginViewModel: ObservableObject {
    @Published private(set) var state: LoginViewState
    
    var bindings: (
        username: Binding<String>,
        password: Binding<String>
    ) {
        (
            username: Binding(get: { self.state.username }, set: { self.state.username = $0 }),
            password: Binding(get: { self.state.password }, set: { self.state.password = $0 })
        )
    }
    
    init(initialState: LoginViewState = .init()) {
        state = initialState
    }
        
    
}
