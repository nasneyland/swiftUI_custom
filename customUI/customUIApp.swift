//
//  customUIApp.swift
//  customUI
//
//  Created by najin on 2023/08/16.
//

import SwiftUI

@main
struct customUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
