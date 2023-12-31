//
//  AuthView.swift
//  SwiftUI-MVVM-Template
//
//  Created by Fatih Acıroğlu on 5.08.2023.
//

import SwiftUI
import Foundation

struct AuthView: View {
    @State private var currentViewShowing: String = "login" // login or signup

    var body: some View {
        if currentViewShowing == "login" {
            LoginView(currentShowingView: $currentViewShowing)
                .preferredColorScheme(.light)
        } else {
            SignUpView(currentShowingView: $currentViewShowing)
                .preferredColorScheme(.dark)
                .transition(.move(edge: .bottom))
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
