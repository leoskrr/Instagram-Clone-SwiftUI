//
//  LoginViewModel.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 21/01/21.
//

import SwiftUI

final class LoginViewModel: ObservableObject {
    @Published private(set) var state: LoginViewState
    
    init(initialState: LoginViewState = .init()) {
        state = initialState
    }
        
    var bindings: (
        username: Binding<String>,
        password: Binding<String>,
        shouldEnableLoginButton: Binding<Bool>
    ) {
        (
            username: Binding<String>.constant(state.username),
            password: Binding<String>.constant(state.password),
            shouldEnableLoginButton: Binding<Bool>.constant(state.shouldEnableLoginButton)
        )
    }
}
