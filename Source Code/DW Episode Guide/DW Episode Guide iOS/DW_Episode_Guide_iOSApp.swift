//
//  DW_Episode_Guide_iOSApp.swift
//  DW Episode Guide iOS
//
//  Created by Mark Howard on 27/03/2022.
//

import SwiftUI

@main
struct DW_Episode_Guide_iOSApp: App {
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
