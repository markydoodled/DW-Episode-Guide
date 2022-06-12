//
//  DW_Episode_GuideApp.swift
//  DW Episode Guide watchOS WatchKit Extension
//
//  Created by Mark Howard on 11/06/2022.
//

import SwiftUI

@main
struct DW_Episode_GuideApp: App {
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
