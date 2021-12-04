//
//  DW_Episode_GuideApp.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

@main
struct DW_Episode_GuideApp: App {
    let persistenceController = PersistenceController.shared
    @Environment(\.scenePhase) var scenePhase
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(minWidth: 950, maxWidth: .infinity, minHeight: 480, maxHeight: .infinity)
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
        .windowToolbarStyle(UnifiedWindowToolbarStyle(showsTitle: true))
        .onChange(of: scenePhase) { _ in
            persistenceController.save()
        }
        Settings {
            SettingsView()
        }
        .commands {
            SidebarCommands()
        }
    }
}
