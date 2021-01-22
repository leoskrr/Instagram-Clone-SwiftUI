//
//  LoginViewState.swift
//  Instagram-SwiftUI
//
//  Created by Leonardo Viana on 21/01/21.
//

import Foundation

struct LoginViewState: Equatable {
    var username: String = ""
    var password: String = ""
}

// Store computed variables in extension for improving code organization
extension LoginViewState {
    var shouldEnableLoginButton: Bool {
        username.isEmpty || password.isEmpty
    }
}
