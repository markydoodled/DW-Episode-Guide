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
        /*for _ in 0..<10 {
            let newItem = ProgrammingLanguage(context: viewContext)
            newItem.name = "Test"
        }*/
        
        //Classic Series 1
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
        
        //Classic Series 2
        let planetofgiants = PlanetOfGiantsClass(context: viewContext)
        planetofgiants.title = ""
        planetofgiants.broadcast = ""
        planetofgiants.companions = ""
        planetofgiants.director = ""
        planetofgiants.doctor = ""
        planetofgiants.length = ""
        planetofgiants.producer = ""
        let thedalekinvasionofearth = TheDalekInvasionOfEarthClass(context: viewContext)
        thedalekinvasionofearth.title = ""
        thedalekinvasionofearth.broadcast = ""
        thedalekinvasionofearth.companions = ""
        thedalekinvasionofearth.director = ""
        thedalekinvasionofearth.doctor = ""
        thedalekinvasionofearth.length = ""
        thedalekinvasionofearth.producer = ""
        let therescue = TheRescueClass(context: viewContext)
        therescue.title = ""
        therescue.broadcast = ""
        therescue.companions = ""
        therescue.director = ""
        therescue.doctor = ""
        therescue.length = ""
        therescue.producer = ""
        let theromans = TheRomansClass(context: viewContext)
        theromans.title = ""
        theromans.broadcast = ""
        theromans.companions = ""
        theromans.director = ""
        theromans.doctor = ""
        theromans.length = ""
        theromans.producer = ""
        let thewebplanet = TheWebPlanetClass(context: viewContext)
        thewebplanet.title = ""
        thewebplanet.broadcast = ""
        thewebplanet.companions = ""
        thewebplanet.director = ""
        thewebplanet.doctor = ""
        thewebplanet.length = ""
        thewebplanet.producer = ""
        let thecrusade = TheCrusadeClass(context: viewContext)
        thecrusade.title = ""
        thecrusade.broadcast = ""
        thecrusade.companions = ""
        thecrusade.director = ""
        thecrusade.doctor = ""
        thecrusade.length = ""
        thecrusade.producer = ""
        let thespacemuseum = TheSpaceMuseumClass(context: viewContext)
        thespacemuseum.title = ""
        thespacemuseum.broadcast = ""
        thespacemuseum.companions = ""
        thespacemuseum.director = ""
        thespacemuseum.doctor = ""
        thespacemuseum.length = ""
        thespacemuseum.producer = ""
        let thechase = TheChaseClass(context: viewContext)
        thechase.title = ""
        thechase.broadcast = ""
        thechase.companions = ""
        thechase.director = ""
        thechase.doctor = ""
        thechase.length = ""
        thechase.producer = ""
        let thetimemeddler = TheTimeMeddlerClass(context: viewContext)
        thetimemeddler.title = ""
        thetimemeddler.broadcast = ""
        thetimemeddler.companions = ""
        thetimemeddler.director = ""
        thetimemeddler.doctor = ""
        thetimemeddler.length = ""
        thetimemeddler.producer = ""
        //Classic Series 3
        let galaxy4 = Galaxy4Class(context: viewContext)
        galaxy4.title = ""
        galaxy4.broadcast = ""
        galaxy4.companions = ""
        galaxy4.director = ""
        galaxy4.doctor = ""
        galaxy4.length = ""
        galaxy4.producer = ""
        let missiontotheunknown = MissionToTheUnknownClass(context: viewContext)
        missiontotheunknown.title = ""
        missiontotheunknown.broadcast = ""
        missiontotheunknown.companions = ""
        missiontotheunknown.director = ""
        missiontotheunknown.doctor = ""
        missiontotheunknown.length = ""
        missiontotheunknown.producer = ""
        let themythmakers = TheMythMakersClass(context: viewContext)
        themythmakers.title = ""
        themythmakers.broadcast = ""
        themythmakers.companions = ""
        themythmakers.director = ""
        themythmakers.doctor = ""
        themythmakers.length = ""
        themythmakers.producer = ""
        let thedaleksmasterplan = TheDaleksMasterPlanClass(context: viewContext)
        thedaleksmasterplan.title = ""
        thedaleksmasterplan.broadcast = ""
        thedaleksmasterplan.companions = ""
        thedaleksmasterplan.director = ""
        thedaleksmasterplan.doctor = ""
        thedaleksmasterplan.length = ""
        thedaleksmasterplan.producer = ""
        let themassacre = TheMassacreClass(context: viewContext)
        themassacre.title = ""
        themassacre.broadcast = ""
        themassacre.companions = ""
        themassacre.director = ""
        themassacre.doctor = ""
        themassacre.length = ""
        themassacre.producer = ""
        let theark = TheArkClass(context: viewContext)
        theark.title = ""
        theark.broadcast = ""
        theark.companions = ""
        theark.director = ""
        theark.doctor = ""
        theark.length = ""
        theark.producer = ""
        let thecelestialtoymaker = TheCelestialToymakerClass(context: viewContext)
        thecelestialtoymaker.title = ""
        thecelestialtoymaker.broadcast = ""
        thecelestialtoymaker.companions = ""
        thecelestialtoymaker.director = ""
        thecelestialtoymaker.doctor = ""
        thecelestialtoymaker.length = ""
        thecelestialtoymaker.producer = ""
        let thegunfighters = TheGunfightersClass(context: viewContext)
        thegunfighters.title = ""
        thegunfighters.broadcast = ""
        thegunfighters.companions = ""
        thegunfighters.director = ""
        thegunfighters.doctor = ""
        thegunfighters.length = ""
        thegunfighters.producer = ""
        let thesavages = TheSavagesClass(context: viewContext)
        thesavages.title = ""
        thesavages.broadcast = ""
        thesavages.companions = ""
        thesavages.director = ""
        thesavages.doctor = ""
        thesavages.length = ""
        thesavages.producer = ""
        let thewarmachines = TheWarMachinesClass(context: viewContext)
        thewarmachines.title = ""
        thewarmachines.broadcast = ""
        thewarmachines.companions = ""
        thewarmachines.director = ""
        thewarmachines.doctor = ""
        thewarmachines.length = ""
        thewarmachines.producer = ""
        //Classic Series 4
        let thesmugglers = TheSmugglersClass(context: viewContext)
        let thetenthplanet = TheTenthPlanetClass(context: viewContext)
        let thepowerofthedaleks = ThePowerOfTheDaleks(context: viewContext)
        let thehighlanders = TheHighlandersClass(context: viewContext)
        let theunderwatermenace = TheUnderwatrerMenaceClass(context: viewContext)
        let themoonbase = TheMoonbaseClass(context: viewContext)
        let themacraterror = TheMacraTerrorClass(context: viewContext)
        let thefacelessones = TheFacelessOnesClass(context: viewContext)
        let theevilofthedaleks = TheEvilOfTheDaleksClass(context: viewContext)
        //Classic Series 5
        let thetombofthecybermen = TheTombOfTheCybermenClass(context: ViewContext)
        let theabominablesnowmen = TheAbominableSnowmenClass(context: viewContext)
        let theicewarriors = TheIceWarriorsClass(context: viewContext)
        let theenemyoftheworld = TheEnemyOfTheWorldClass(context: viewContext)
        let theweboffear = TheWebOfFearClass(context: viewContext)
        let furyfromthedeep = FuryFromTheDeepClass(context: viewContext)
        let thewheelinspace = TheWheelInSpaceClass(context: viewContext)
        //Classic Series 6
        let thedominators = TheDominatorsClass(context: viewContext)
        let themindrobber = TheMindRobberClass(context: viewContext)
        let theinvasion = TheInvasionClass(context: viewContext)
        let thekrotons = TheKrotonsClass(context: viewContext)
        let theseedsofdeath = TheSeedsOfDeathClass(context: viewContext)
        let thespacepirates = TheSpacePiratesClass(context: viewContext)
        let thewargames = TheWarGamesClass(context: viewContext)
        //Classic Series 7
        let spearheadfromspace = SpearheadFromSpaceClass(context: viewContext)
        let andthesilurians = AndTheSiluriansClass(context: viewContext)
        let theambassadorsofdeath = TheAmbassadorsOfDeathClass(context: viewContext)
        let inferno = InfernoClass(context: viewContext)
        //Classic Series 8
        let terroroftheautons = TerrorOfTheAutonsClass(context: viewContext)
        let themindofevil = TheMindOfEvilClass(context: viewContext)
        let theclawsofaxos = TheClawsOfAxosClass(context: viewContext)
        let colonyinspace = ColonyInSpaceClass(context: viewContext)
        let thedaemons = TheDaemonsClass(context: viewContext)
        //Classic Series 9
        let dayofthedaleks = DayOfTheDaleksClass(context: viewContext)
        let thecurseofpeladon = TheCurseOfPeladonClass(context: viewContext)
        let theseadevils = TheSeaDevilsClass(context: viewContext)
        let themutants = TheMutantsClass(context: viewContext)
        let thetimemonster = TheTimeMonsterClass(context: viewContext)
        //Classic Series 10
        let thethreedoctors = TheThreeDoctorsClass(context: viewContext)
        let carnivalofmonsters = CarnivalOfMonstersClass(context: viewContext)
        let frontierinspace = FrontierInSpaceClass(context: viewContext)
        let planetofthedaleks = PlanetOfTheDaleksClass(context: viewContext)
        let thegreendeath = TheGreenDeathClass(context: viewContext)
        //Classic Series 11
        let thetimewarrior = TheTimeWarriorClass(context: viewContext)
        let invasionofthedinosaurs = InvasionOfTheDinosaursClass(context: viewContext)
        let deathtothedaleks = DeathToTheDaleksClass(context: viewContext)
        let themonsterofpeladon = TheMonsterOfPeladonClass(context: viewContext)
        let planetofthespiders = PlanetOfTheSpidersClass(context: viewContext)
        //Classic Series 12
        let robot = RobotClass(context: viewContext)
        let thearkinspace = TheArkInSpaceClass(context: viewContext)
        let thesontaranexperiment = TheSontaranExperimentClass(context: viewContext)
        let genesisofthedaleks = GenesisOfTheDaleksClass(context: viewContext)
        let revengeofthecybermen = RevengeOfTheCybermen(context: viewContext)
        //Classic Series 13
        let terrorofthezygons = TerrorOfTheZygonsClass(context: viewContext)
        let planetofevil = PlanetOfEvilClass(context: viewContext)
        let pyramidsofmars = PyramidsOfMarsClass(context: viewContext)
        let theandroidinvasion = TheAndroidInvasionClass(context: viewContext)
        let thebrainofmorbius = TheBrainOfMorbiusClass(context: viewContext)
        let theseedsofdoom = TheSeedsOfDoomClass(context: viewContext)
        //Classic Series 14
        let themasqueofmandragora = TheMasqueOfMandragoraClass(context: viewContext)
        let thehandoffear = TheHandOfFear(context: viewContext)
        let thedeadlyassassin = TheDeadlyAssassinClass(context: viewContext)
        let thefaceofevil = TheFaceOfEvilClass(context: viewContext)
        let therobotsofdeath = TheRobotsOfDeathClass(context: viewContext)
        let thetalonsofwengchiang = TheTalonsOfWengChiang(context: viewContext)
        //Classic Series 15
        let thehorroroffangrock = TheHorrorOfFangRockClass(context: viewContext)
        let theinvisibleenemy = TheInvisibleEnemyClass(context: viewContext)
        let imageofthefendahl = ImageOfTheFendahlClass(context: viewContext)
        let thesunmakers = TheSunMakersClass(context: viewContext)
        let underworld = UnderworldClass(context: viewContext)
        let theinvasionoftime = TheInvasionOfTimeClass(context: viewContext)
        //Classic Series 16
        let theribosoperation = TheRibosOperationClass(context: viewContext)
        let thepirateplanet = ThePiratePlanetClass(context: viewContext)
        let thestonesofblood = TheStonesOfBloodClass(context: viewContext)
        let theandroidsoftara = TheAndroidsOfTaraClass(context: viewContext)
        let thepowerofkroll = ThePowerOfKrollClass(context: viewContext)
        let thearmageddonfactor = TheArmageddonFactorClass(context: viewContext)
        //Classic Series 17
        //Classic Series 18
        //Classic Series 19
        //Classic Series 20
        //Classic Series 21
        //Classic Series 22
        //Classic Series 23
        //Classic Series 24
        //Classic Series 25
        //Classic Series 26
        //New Series 1
        //New Series 2
        //New Series 3
        //New Series 4
        //New Series 5
        //New Series 6
        //New Series 7
        //New Series 8
        //New Series 9
        //New Series 10
        //New Series 11
        //New Series 12
        //New Series 13
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
