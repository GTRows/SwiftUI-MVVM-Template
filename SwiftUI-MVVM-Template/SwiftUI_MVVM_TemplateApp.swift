//
//  SwiftUI_MVVM_TemplateApp.swift
//  SwiftUI-MVVM-Template
//
//  Created by Fatih Acıroğlu on 5.08.2023.
//

import SwiftUI

@main
struct SwiftUI_MVVM_TemplateApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
