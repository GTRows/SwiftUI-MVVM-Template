//
//  InitialView.swift
//  SwiftUI-MVVM-Template
//
//  Created by Fatih Acıroğlu on 5.08.2023.
//

import SwiftUI

struct InitialView: View {
    @AppStorage("uid") var userID: String = ""
    let persistenceController = PersistenceController.shared
    
    var body: some View {
        if userID == "" {
            AuthView()
        } else {
            HomeView(viewModel: HomeViewModel())
                .preferredColorScheme(.dark)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .task {
                    print("Auth.auth().currentUser")
                }
        }
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
