//
//  SwiftUImemoAppApp.swift
//  Shared
//
//  Created by Terman on 2022/09/11.
//

import SwiftUI

@main
struct SwiftUImemoAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
