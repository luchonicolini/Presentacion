//
//  PresentacionApp.swift
//  Shared
//
//  Created by Luciano Nicolini on 28/04/2022.
//

import SwiftUI

@main
struct PresentacionApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
