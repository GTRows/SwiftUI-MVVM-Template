//
//  AuthViewModel.swift
//  SwiftUI-MVVM-Template
//
//  Created by Fatih Acıroğlu on 5.08.2023.
//

import Foundation
import SwiftUI

class AuthViewModel: ObservableObject {
    @Published var isUserLoggedIn: Bool = false

    init() {
    }

    func signIn(email: String, password: String) {
        
    }

    func signUp(email: String, password: String) {
        
    }
}
