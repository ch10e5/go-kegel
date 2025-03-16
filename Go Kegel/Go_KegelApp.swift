//
//  Go_KegelApp.swift
//  Go Kegel
//
//  Created by Chloe Wu on 3/16/25.
//

import SwiftUI

@main
struct Go_KegelApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
