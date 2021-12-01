//
//  Persistence.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()

    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        for _ in 0..<10 {
            let newItem = ProgrammingLanguage(context: viewContext)
            newItem.name = "Test"
        }
            let anunearthlychild = AnUnearthlyChildClass(context: viewContext)
            anunearthlychild.title = "An Unearthly Child"
        anunearthlychild.broadcast = "23 November 1963\n14 December 1963"
        anunearthlychild.companions = "Susan Foreman (Carole Ann Ford)\nIan Chesterton (William Russell)\nBarbara Wright (Jacqueline Hill)"
        anunearthlychild.director = "Waris Hussein"
        anunearthlychild.doctor = "1st Doctor\n(William Hartnell)"
        anunearthlychild.length = "4 Episodes\n25 Minutes Each"
        anunearthlychild.producer = "Verity Lambert\nMervyn Pinfield"
        let thedaleks = TheDaleksClass(context: viewContext)
        thedaleks.title = "The Daleks"
        thedaleks.broadcast = "21 December 1963\n1 February 1964"
        thedaleks.companions = "Susan Foreman (Carole Ann Ford)\nIan Chesterton (William Russell)\nBarbara Wright (Jacqueline Hill)"
        thedaleks.director = "Christopher Barry\nRichard Martin"
        thedaleks.doctor = "1st Doctor\n(William Hartnell)"
        thedaleks.length = "7 Episodes\n25 Minutes Each"
        thedaleks.producer = "Verity Lambert\nMervyn Pinfield"
        let theedgeofdestruction = TheEdgeOfDestructionClass(context: viewContext)
        theedgeofdestruction.title = "The Edge Of Destruction"
        theedgeofdestruction.broadcast = ""
        theedgeofdestruction.companions = ""
        theedgeofdestruction.director = ""
        theedgeofdestruction.doctor = ""
        theedgeofdestruction.length = ""
        theedgeofdestruction.producer = ""
        let marcopolo = MarcoPoloClass(context: viewContext)
        marcopolo.title = ""
        marcopolo.broadcast = ""
        marcopolo.companions = ""
        marcopolo.director = ""
        marcopolo.doctor = ""
        marcopolo.length = ""
        marcopolo.producer = ""
        let thekeysofmarinus = TheKeysOfMarinusClass(context: viewContext)
        thekeysofmarinus.title = ""
        thekeysofmarinus.broadcast = ""
        thekeysofmarinus.companions = ""
        thekeysofmarinus.director = ""
        thekeysofmarinus.doctor = ""
        thekeysofmarinus.length = ""
        thekeysofmarinus.producer = ""
        let theaztecs = TheAztecsClass(context: viewContext)
        theaztecs.title = ""
        theaztecs.broadcast = ""
        theaztecs.companions = ""
        theaztecs.director = ""
        theaztecs.doctor = ""
        theaztecs.length = ""
        theaztecs.producer = ""
        let thesensorites = TheSensoritesClass(context: viewContext)
        thesensorites.title = ""
        thesensorites.broadcast = ""
        thesensorites.companions = ""
        thesensorites.director = ""
        thesensorites.doctor = ""
        thesensorites.length = ""
        thesensorites.producer = ""
        let thereignofterror = TheReignOfTerrorClass(context: viewContext)
        thereignofterror.title = ""
        thereignofterror.broadcast = ""
        thereignofterror.companions = ""
        thereignofterror.director = ""
        thereignofterror.doctor = ""
        thereignofterror.length = ""
        thereignofterror.producer = ""
        do {
            try viewContext.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        return result
    }()

    let container: NSPersistentContainer

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "Main")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.

                /*
                Typical reasons for an error here include:
                * The parent directory does not exist, cannot be created, or disallows writing.
                * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                * The device is out of space.
                * The store could not be migrated to the current model version.
                Check the error message to determine what the actual problem was.
                */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
    func save() {
        let context = container.viewContext

        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Show some error here
            }
        }
    }
}
