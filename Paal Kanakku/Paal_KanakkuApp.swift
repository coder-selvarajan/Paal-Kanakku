//
//  Paal_KanakkuApp.swift
//  Paal Kanakku
//
//  Created by Selvarajan on 30/06/21.
//

import SwiftUI

@main
struct Paal_KanakkuApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView()
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
