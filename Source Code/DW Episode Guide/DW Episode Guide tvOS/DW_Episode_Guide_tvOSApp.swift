//
//  DW_Episode_Guide_tvOSApp.swift
//  DW Episode Guide tvOS
//
//  Created by Mark Howard on 07/07/2022.
//

import SwiftUI

@main
struct DW_Episode_Guide_tvOSApp: App {
    let persistenceController = PersistenceController.shared
    @Environment(\.scenePhase) var scenePhase
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
        .onChange(of: scenePhase) { _ in
            persistenceController.save()
        }
    }
}
