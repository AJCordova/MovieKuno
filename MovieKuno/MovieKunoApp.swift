//
//  MovieKunoApp.swift
//  MovieKuno
//
//  Created by Amiel Jireh Cordova on 1/20/21.
//

import SwiftUI

@main
struct MovieKunoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
