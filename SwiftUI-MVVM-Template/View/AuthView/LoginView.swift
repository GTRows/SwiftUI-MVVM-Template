//
//  LoginView.swift
//  SwiftUI-MVVM-Template
//
//  Created by Fatih Acıroğlu on 5.08.2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var alertService = AlertService.shared
    @Binding var currentShowingView: String
    @AppStorage("uid") var userID: String = ""

    @State private var email: String = ""
    @State private var password: String = ""

    private func isValidPassword(_ password: String) -> Bool {
        // minimum 6 characters long
        // 1 uppercase character
        // 1 special char

        let passwordRegex = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])(?=.*[A-Z]).{6,}$")

        return passwordRegex.evaluate(with: password)
    }

    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)

            VStack {
                HStack {
                    Text("Welcome Back!")
                        .font(.largeTitle)
                        .bold()

                    Spacer()
                }
                .padding()
                .padding(.top)

                Spacer()

                HStack {
                    Image(systemName: "mail")
                    TextField("Email", text: $email)

                    Spacer()

                    if email.count != 0 {
                        Image(systemName: email.isValidEmail() ? "checkmark" : "xmark")
                            .fontWeight(.bold)
                            .foregroundColor(email.isValidEmail() ? .green : .red)
                    }
                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.black)
                )

                .padding()

                HStack {
                    Image(systemName: "lock")
                    SecureField("Password", text: $password)

                    Spacer()

                    if password.count != 0 {
                        Image(systemName: isValidPassword(password) ? "checkmark" : "xmark")
                            .fontWeight(.bold)
                            .foregroundColor(isValidPassword(password) ? .green : .red)
                    }
                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.black)
                )
                .padding()

                Button(action: {
                    withAnimation {
                        self.currentShowingView = "signup"
                    }

                }) {
                    Text("Don't have an account?")
                        .foregroundColor(.black.opacity(0.7))
                }

                Spacer()
                Spacer()

                Button {
                    FireBaseService.shared.loginUser(email: email, password: password) { result in
                        switch result {
                            case let .success(user):
                                print("Logged in successfully with user: \(user)")
                            case let .failure(error):
                                print("Error logging in: \(error)")
                        }
                    }

                } label: {
                    Text("Sign In")
                        .foregroundColor(.white)
                        .font(.title3)
                        .bold()

                        .frame(maxWidth: .infinity)
                        .padding()

                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.black)
                        )
                        .padding(.horizontal)
                }

            }.alert(isPresented: $alertService.isPresenting) {
                alertService.alert
            }
        }
    }
}

