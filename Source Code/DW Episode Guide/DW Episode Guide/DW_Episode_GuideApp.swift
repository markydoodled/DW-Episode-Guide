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
    @State var showingURLSheet = false
    @State var i = 0
    @ViewBuilder
    func chooseDestination() -> some View {
        switch i {
        case 1: AnUnearthlyChild()
        case 2: TheDaleks()
        case 3: TheEdgeOfDestruction()
        case 4: MarcoPolo()
        case 5: TheKeysOfMarinus()
        case 6: TheAztecs()
        case 7: TheSensorites()
        case 8: TheReignOfTerror()
        case 9: PlanetOfGiants()
        case 10: TheDalekInvasionOfEarth()
        case 11: TheRescue()
        case 12: TheRomans()
        case 13: TheWebPlanet()
        case 14: TheCrusade()
        case 15: TheSpaceMuseum()
        case 16: TheChase()
        case 17: TheTimeMeddler()
        case 18: Galaxy4()
        case 19: MissionToTheUnknown()
        case 20: TheMythMakers()
        case 21: TheDaleksMasterPlan()
        case 22: TheMassacre()
        case 23: TheArk()
        case 24: TheCelestialToymaker()
        case 25: TheGunfighters()
        case 26: TheSavages()
        case 27: TheWarMachines()
        case 28: TheSmugglers()
        case 29: TheTenthPlanet()
        case 30: ThePowerOfTheDaleks()
        case 31: TheHighlanders()
        case 32: TheUnderwaterMenace()
        case 33: TheMoonbase()
        case 34: TheMacraTerror()
        case 35: TheFacelessOnes()
        case 36: TheEvilOfTheDaleks()
        case 37: TheTombOfTheCybermen()
        case 38: TheAbominableSnowmen()
        case 39: TheIceWarriors()
        case 40: TheEnemyOfTheWorld()
        case 41: TheWebOfFear()
        case 42: FuryFromTheDeep()
        case 43: TheWheelInSpace()
        case 44: TheDominators()
        case 45: TheMindRobber()
        case 46: TheInvasion()
        case 47: TheKrotons()
        case 48: TheSeedsOfDeath()
        case 49: TheSpacePirates()
        case 50: TheWarGames()
        case 51: SpearheadFromSpace()
        case 52: AndTheSilurians()
        case 53: TheAmbassadorsOfDeath()
        case 54: Inferno()
        case 55: TerrorOfTheAutons()
        case 56: TheMindOfEvil()
        case 57: TheClawsOfAxos()
        case 58: ColonyInSpace()
        case 59: TheDaemons()
        case 60: DayOfTheDaleks()
        case 61: TheCurseOfPeladon()
        case 62: TheSeaDevils()
        case 63: TheMutants()
        case 64: TheTimeMonster()
        case 65: TheThreeDoctors()
        case 66: CarnivalOfMonsters()
        case 67: FrontierInSpace()
        case 68: PlanetOfTheDaleks()
        case 69: TheGreenDeath()
        case 70: TheTimeWarrior()
        case 71: InvasionOfTheDinosaurs()
        case 72: DeathToTheDaleks()
        case 73: TheMonsterOfPeladon()
        case 74: PlanetOfTheSpiders()
        case 75: Robot()
        case 76: TheArkInSpace()
        case 77: TheSontaranExperiment()
        case 78: GenesisOfTheDaleks()
        case 79: RevengeOfTheCybermen()
        case 80: TerrorOfTheZygons()
        case 81: PlanetOfEvil()
        case 82: PyramidsOfMars()
        case 83: TheAndroidInvasion()
        case 84: TheBrainOfMorbius()
        case 85: TheSeedsOfDoom()
        case 86: TheMasqueOfMandragora()
        case 87: TheHandOfFear()
        case 88: TheDeadlyAssassin()
        case 89: TheFaceOfEvil()
        case 90: TheRobotsOfDeath()
        case 91: TheTalonsOfWengChiang()
        case 92: HorrorOfFangRock()
        case 93: TheInvisibleEnemy()
        case 94: ImageOfTheFendahl()
        case 95: TheSunMakers()
        case 96: Underworld()
        case 97: TheInvasionOfTime()
        case 98: TheRibosOperation()
        case 99: ThePiratePlanet()
        case 100: TheStonesOfBlood()
        case 101: TheAndroidsOfTara()
        case 102: ThePowerOfKroll()
        case 103: TheArmageddonFactor()
        case 104: DestinyOfTheDaleks()
        case 105: CityOfDeath()
        case 106: TheCreatureFromThePit()
        case 107: NightmareOfEden()
        case 108: TheHornsOfNimon()
        case 109: Shada()
        case 110: TheLeisureHive()
        case 111: Meglos()
        case 112: FullCircle()
        case 113: StateOfDecay()
        case 114: WarriorsGate()
        case 115: TheKeeperOfTraken()
        case 116: Logopolis()
        case 117: Castrovalva()
        case 118: FourToDoomsday()
        case 119: Kinda()
        case 120: TheVisitation()
        case 121: BlackOrchid()
        case 122: Earthshock()
        case 123: TimeFlight()
        case 124: ArcOfInfinity()
        case 125: Snakedance()
        case 126: MawdrynUndead()
        case 127: Terminus()
        case 128: Enlightenment()
        case 129: TheKingsDemons()
        case 130: TheFiveDoctors()
        case 131: WarriorsOfTheDeep()
        case 132: TheAwakening()
        case 133: Frontios()
        case 134: ResurrectionOfTheDaleks()
        case 135: PlanetOfFire()
        case 136: TheCavesOfAndrozani()
        case 137: TheTwinDilemma()
        case 138: AttackOfTheCybermen()
        case 139: VengeanceOnVaros()
        case 140: TheMarkOfTheRani()
        case 141: TheTwoDoctors()
        case 142: Timelash()
        case 143: RevelationOfTheDaleks()
        case 144: TheMysteriousPlanet()
        case 145: Mindwarp()
        case 146: TerrorOfTheVervoids()
        case 147: TheUltimateFoe()
        case 148: TimeAndTheRani()
        case 149: ParadiseTowers()
        case 150: DeltaAndTheBannermen()
        case 151: Dragonfire()
        case 152: RememberanceOfTheDaleks()
        case 153: TheHappinessPatrol()
        case 154: SilverNemesis()
        case 155: TheGreatestShowInTheGalaxy()
        case 156: Battlefield()
        case 157: GhostLight()
        case 158: TheCurseOfFenric()
        case 159: Survival()
        case 160: TVMovie()
        case 161: Rose()
        case 162: TheEndOfTheWorld()
        case 163: TheUnquietDead()
        case 164: AliensOfLondon()
        case 165: WorldWarThree()
        case 166: Dalek()
        case 167: TheLongGame()
        case 168: FathersDay()
        case 169: TheEmptyChild()
        case 170: TheDoctorDances()
        case 171: BoomTown()
        case 172: BadWolf()
        case 173: ThePartingOfTheWays()
        case 174: TheChristmasInvasion()
        case 175: NewEarth()
        case 176: ToothAndClaw()
        case 177: SchoolReunion()
        case 178: TheGirlInTheFireplace()
        case 179: RiseOfTheCybermen()
        case 180: TheAgeOfSteel()
        case 181: TheIdiotsLantern()
        case 182: TheImpossiblePlanet()
        case 183: TheSatanPit()
        case 184: Love_Monsters()
        case 185: FearHer()
        case 186: ArmyOfGhosts()
        case 187: Doomsday()
        case 188: TheRunawayBride()
        case 189: SmithAndJones()
        case 190: TheShakespeareCode()
        case 191: Gridlock()
        case 192: DaleksInManhattan()
        case 193: EvolutionOfTheDaleks()
        case 194: TheLazarusExperiment()
        case 195: _42()
        case 196: HumanNature()
        case 197: TheFamilyOfBlood()
        case 198: Blink()
        case 199: Utopia()
        case 200: TheSoundOfDrums()
        case 201: LastOfTheTimeLords()
        case 202: VoyageOfTheDamned()
        case 203: PartnersInCrime()
        case 204: TheFiresOfPompeii()
        case 205: PlanetOfTheOod()
        case 206: TheSontaranStratagem()
        case 207: ThePoisonSky()
        case 208: TheDoctorsDaughter()
        case 209: TheUnicornAndTheWasp()
        case 210: SilenceInTheLibrary()
        case 211: ForestOfTheDead()
        case 212: Midnight()
        case 213: TurnLeft()
        case 214: TheStolenEarth()
        case 215: JourneysEnd()
        case 216: TheNextDoctor()
        case 217: PlanetOfTheDead()
        case 218: TheWatersOfMars()
        case 219: TheEndOfTimePart1()
        case 220: TheEndOfTimePart2()
        case 221: TheEleventhHour()
        case 222: TheBeastBelow()
        case 223: VictoryOfTheDaleks()
        case 224: TheTimeOfAngels()
        case 225: FleshAndStone()
        case 226: TheVampiresOfVenice()
        case 227: AmysChoice()
        case 228: TheHungryEarth()
        case 229: ColdBlood()
        case 230: VincentAndTheDoctor()
        case 231: TheLodger()
        case 232: ThePandoricaOpens()
        case 233: TheBigBang()
        case 234: AChristmasCarol()
        case 235: TheImpossibleAstronaut()
        case 236: DayOfTheMoon()
        case 237: TheCurseOfTheBlackSpot()
        case 238: TheDoctorsWife()
        case 239: TheRebelFlesh()
        case 240: TheAlmostPeople()
        case 241: AGoodManGoesToWar()
        case 242: LetsKillHitler()
        case 243: NightTerrors()
        case 244: TheGirlWhoWaited()
        case 245: TheGodComplex()
        case 246: ClosingTime()
        case 247: TheWeddingOfRiverSong()
        case 248: TheDoctorTheWidowAndTheWardrobe()
        case 249: AsylumOfTheDaleks()
        case 250: DinosaursOnASpaceship()
        case 251: ATownCalledMercy()
        case 252: ThePowerOfThree()
        case 253: TheAngelsTakeManhattan()
        case 254: TheSnowmen()
        case 255: TheBellsOfSaintJohn()
        case 256: TheRingsOfAkhaten()
        case 257: ColdWar()
        case 258: Hide()
        case 259: JourneyToTheCentreOfTheTARDIS()
        case 260: TheCrimsonHorror()
        case 261: NightmareInSilver()
        case 262: TheNameOfTheDoctor()
        case 263: TheDayOfTheDoctor()
        case 264: TheTimeOfTheDoctor()
        case 265: DeepBreath()
        case 266: IntoTheDalek()
        case 267: RobotOfSherwood()
        case 268: Listen()
        case 269: TimeHeist()
        case 270: TheCaretaker()
        case 271: KillTheMoon()
        case 272: MummyOnTheOrientExpress()
        case 273: Flatline()
        case 274: InTheForestOfTheNight()
        case 275: DarkWater()
        case 276: DeathInHeaven()
        case 277: LastChristmas()
        case 278: TheMagiciansApprentice()
        case 279: TheWitchsFamiliar()
        case 280: UnderTheLake()
        case 281: BeforeTheFlood()
        case 282: TheGirlWhoDied()
        case 283: TheWomanWhoLived()
        case 284: TheZygonInvasion()
        case 285: TheZygonInversion()
        case 286: SleepNoMore()
        case 287: FaceTheRaven()
        case 288: HeavenSent()
        case 289: HellBent()
        case 290: TheHusbandsOfRiverSong()
        case 291: TheReturnOfDoctorMysterio()
        case 292: ThePilot()
        case 293: Smile()
        case 294: ThinIce()
        case 295: KnockKnock()
        case 296: Oxygen()
        case 297: Extremis()
        case 298: ThePyramidAtTheEndOfTheWorld()
        case 299: TheLieOfTheLand()
        case 300: EmpressOfMars()
        case 301: TheEatersOfLight()
        case 302: WorldEnoughAndTime()
        case 303: TheDoctorFalls()
        case 304: TwiceUponATime()
        case 305: TheWomanWhoFellToEarth()
        case 306: TheGhostMonument()
        case 307: Rosa()
        case 308: ArachnidsInTheUK()
        case 309: TheTsurangaConundrum()
        case 310: DemonsOfThePunjab()
        case 311: Kerblam()
        case 312: TheWitchfinders()
        case 313: ItTakesYouAway()
        case 314: TheBattleOfRanskoorAvKolos()
        case 315: Resolution()
        case 316: SpyfallPart1()
        case 317: SpyfallPart2()
        case 318: Orphan55()
        case 319: NikolaTeslasNightOfTerror()
        case 320: FugitiveOfTheJudoon()
        case 321: Praxeus()
        case 322: CanYouHearMe()
        case 323: TheHauntingOfVillaDiodati()
        case 324: AscensionOfTheCybermen()
        case 325: TheTimelessChildren()
        case 326: RevolutionOfTheDaleks_()
        case 327: TheHalloweenApocalypse()
        case 328: WarOfTheSontarans()
        case 329: OnceUponTime()
        case 330: VillageOfTheAngels()
        case 331: SurvivorsOfTheFlux()
        case 332: TheVanquishers()
        case 333: EveOfTheDaleks()
        case 334: LegendOfTheSeaDevils()
        case 335: ThePowerOfTheDoctor()
        default: VStack {
            Text("Invalid Selection")
            Button(action: {
                i = 0
                self.showingURLSheet = false
            }) {
                Text("Dismiss")
            }
            }
            .padding()
        }
    }
    var body: some Scene {
        WindowGroup {
            if showingURLSheet == false {
                ContentView()
                    .frame(minWidth: 950, maxWidth: .infinity, minHeight: 480, maxHeight: .infinity)
                    .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
                    .onOpenURL { url in
                        guard url.scheme == "dwepisode" else { return }
                        print(url)
                        NSApplication.shared.keyWindow?.close()
                        func select() {
                            if url == URL(string: "dwepisode://anunearthlychild") {
                                i = 1
                            } else if url == URL(string: "dwepisode://thedaleks") {
                                i = 2
                            } else if url == URL(string: "dwepisode://theedgeofdestruction") {
                                i = 3
                            } else if url == URL(string: "dwepisode://marcopolo") {
                                i = 4
                            } else if url == URL(string: "dwepisode://thekeysofmarinus") {
                                i = 5
                            } else if url == URL(string: "dwepisode://theaztecs") {
                                i = 6
                            } else if url == URL(string: "dwepisode://thesensorites") {
                                i = 7
                            } else if url == URL(string: "dwepisode://thereignofterror") {
                                i = 8
                            } else if url == URL(string: "dwepisode://planetofgiants") {
                                i = 9
                            } else if url == URL(string: "dwepisode://thedalekinvasionofearth") {
                                i = 10
                            } else if url == URL(string: "dwepisode://therescue") {
                                i = 11
                            } else if url == URL(string: "dwepisode://theromans") {
                                i = 12
                            } else if url == URL(string: "dwepisode://thewebplanet") {
                                i = 13
                            } else if url == URL(string: "dwepisode://thecrusade") {
                                i = 14
                            } else if url == URL(string: "dwepisode://thespacemuseum") {
                                i = 15
                            } else if url == URL(string: "dwepisode://thechase") {
                                i = 16
                            } else if url == URL(string: "dwepisode://thetimemeddler") {
                                i = 17
                            } else if url == URL(string: "dwepisode://galaxy4") {
                                i = 18
                            } else if url == URL(string: "dwepisode://missiontotheunknown") {
                                i = 19
                            } else if url == URL(string: "dwepisode://themythmakers") {
                                i = 20
                            } else if url == URL(string: "dwepisode://thedaleksmasterplan") {
                                i = 21
                            } else if url == URL(string: "dwepisode://themassacre") {
                                i = 22
                            } else if url == URL(string: "dwepisode://theark") {
                                i = 23
                            } else if url == URL(string: "dwepisode://thecelestialtoymaker") {
                                i = 24
                            } else if url == URL(string: "dwepisode://thegunfighters") {
                                i = 25
                            } else if url == URL(string: "dwepisode://thesavages") {
                                i = 26
                            } else if url == URL(string: "dwepisode://thewarmachines") {
                                i = 27
                            } else if url == URL(string: "dwepisode://thesmugglers") {
                                i = 28
                            } else if url == URL(string: "dwepisode://thetenthplanet") {
                                i = 29
                            } else if url == URL(string: "dwepisode://thepowerofthedaleks") {
                                i = 30
                            } else if url == URL(string: "dwepisode://thehighlanders") {
                                i = 31
                            } else if url == URL(string: "dwepisode://theunderwatermenace") {
                                i = 32
                            } else if url == URL(string: "dwepisode://themoonbase") {
                                i = 33
                            } else if url == URL(string: "dwepisode://themacraterror") {
                                i = 34
                            } else if url == URL(string: "dwepisode://thefacelessones") {
                                i = 35
                            } else if url == URL(string: "dwepisode://theevilofthedaleks") {
                                i = 36
                            } else if url == URL(string: "dwepisode://thetombofthecybermen") {
                                i = 37
                            } else if url == URL(string: "dwepisode://theabominablesnowmen") {
                                i = 38
                            } else if url == URL(string: "dwepisode://theicewarriors") {
                                i = 39
                            } else if url == URL(string: "dwepisode://theenemyoftheworld") {
                                i = 40
                            } else if url == URL(string: "dwepisode://theweboffear") {
                                i = 41
                            } else if url == URL(string: "dwepisode://furyfromthedeep") {
                                i = 42
                            } else if url == URL(string: "dwepisode://thewheelinspace") {
                                i = 43
                            } else if url == URL(string: "dwepisode://thedominators") {
                                i = 44
                            } else if url == URL(string: "dwepisode://themindrobber") {
                                i = 45
                            } else if url == URL(string: "dwepisode://theinvasion") {
                                i = 46
                            } else if url == URL(string: "dwepisode://thekrotons") {
                                i = 47
                            } else if url == URL(string: "dwepisode://theseedsofdeath") {
                                i = 48
                            } else if url == URL(string: "dwepisode://thespacepirates") {
                                i = 49
                            } else if url == URL(string: "dwepisode://thewargames") {
                                i = 50
                            } else if url == URL(string: "dwepisode://spearheadfromspace") {
                                i = 51
                            } else if url == URL(string: "dwepisode://doctorwhoandthesilurians") {
                                i = 52
                            } else if url == URL(string: "dwepisode://theambassadorsofdeath") {
                                i = 53
                            } else if url == URL(string: "dwepisode://inferno") {
                                i = 54
                            } else if url == URL(string: "dwepisode://terroroftheautons") {
                                i = 55
                            } else if url == URL(string: "dwepisode://themindofevil") {
                                i = 56
                            } else if url == URL(string: "dwepisode://theclawsofaxos") {
                                i = 57
                            } else if url == URL(string: "dwepisode://colonyinspace") {
                                i = 58
                            } else if url == URL(string: "dwepisode://thedaemons") {
                                i = 59
                            } else if url == URL(string: "dwepisode://dayofthedaleks") {
                                i = 60
                            } else if url == URL(string: "dwepisode://thecurseofpeladon") {
                                i = 61
                            } else if url == URL(string: "dwepisode://theseadevils") {
                                i = 62
                            } else if url == URL(string: "dwepisode://themutants") {
                                i = 63
                            } else if url == URL(string: "dwepisode://thetimemonster") {
                                i = 64
                            } else if url == URL(string: "dwepisode://thethreedoctors") {
                                i = 65
                            } else if url == URL(string: "dwepisode://carnivalofmonsters") {
                                i = 66
                            } else if url == URL(string: "dwepisode://frontierinspace") {
                                i = 67
                            } else if url == URL(string: "dwepisode://planetofthedaleks") {
                                i = 68
                            } else if url == URL(string: "dwepisode://thegreendeath") {
                                i = 69
                            } else if url == URL(string: "dwepisode://thetimewarrior") {
                                i = 70
                            } else if url == URL(string: "dwepisode://invasionofthedinosaurs") {
                                i = 71
                            } else if url == URL(string: "dwepisode://deathtothedaleks") {
                                i = 72
                            } else if url == URL(string: "dwepisode://themonsterofpeladon") {
                                i = 73
                            } else if url == URL(string: "dwepisode://planetofthespiders") {
                                i = 74
                            } else if url == URL(string: "dwepisode://robot") {
                                i = 75
                            } else if url == URL(string: "dwepisode://thearkinspace") {
                                i = 76
                            } else if url == URL(string: "dwepisode://thesontaranexperiment") {
                                i = 77
                            } else if url == URL(string: "dwepisode://genesisofthedaleks") {
                                i = 78
                            } else if url == URL(string: "dwepisode://revengeofthecybermen") {
                                i = 79
                            } else if url == URL(string: "dwepisode://terrorofthezygons") {
                                i = 80
                            } else if url == URL(string: "dwepisode://planetofevil") {
                                i = 81
                            } else if url == URL(string: "dwepisode://pyramidsofmars") {
                                i = 82
                            } else if url == URL(string: "dwepisode://theandroidinvasion") {
                                i = 83
                            } else if url == URL(string: "dwepisode://thebrainofmorbius") {
                                i = 84
                            } else if url == URL(string: "dwepisode://theseedsofdoom") {
                                i = 85
                            } else if url == URL(string: "dwepisode://themasqueofmandragora") {
                                i = 86
                            } else if url == URL(string: "dwepisode://thehandoffear") {
                                i = 87
                            } else if url == URL(string: "dwepisode://thedeadlyassassin") {
                                i = 88
                            } else if url == URL(string: "dwepisode://thefaceofevil") {
                                i = 89
                            } else if url == URL(string: "dwepisode://therobotsofdeath") {
                                i = 90
                            } else if url == URL(string: "dwepisode://thetalonsofwengchiang") {
                                i = 91
                            } else if url == URL(string: "dwepisode://horroroffangrock") {
                                i = 92
                            } else if url == URL(string: "dwepisode://theinvisibleenemy") {
                                i = 93
                            } else if url == URL(string: "dwepisode://imageofthefendahl") {
                                i = 94
                            } else if url == URL(string: "dwepisode://thesunmakers") {
                                i = 95
                            } else if url == URL(string: "dwepisode://underworld") {
                                i = 96
                            } else if url == URL(string: "dwepisode://theinvasionoftime") {
                                i = 97
                            } else if url == URL(string: "dwepisode://theribosoperation") {
                                i = 98
                            } else if url == URL(string: "dwepisode://thepirateplanet") {
                                i = 99
                            } else if url == URL(string: "dwepisode://thestonesofblood") {
                                i = 100
                            } else if url == URL(string: "dwepisode://theandroidsoftara") {
                                i = 101
                            } else if url == URL(string: "dwepisode://thepowerofkroll") {
                                i = 102
                            } else if url == URL(string: "dwepisode://thearmageddonfactor") {
                                i = 103
                            } else if url == URL(string: "dwepisode://destinyofthedaleks") {
                                i = 104
                            } else if url == URL(string: "dwepisode://cityofdeath") {
                                i = 105
                            } else if url == URL(string: "dwepisode://thecreaturefromthepit") {
                                i = 106
                            } else if url == URL(string: "dwepisode://nightmareofeden") {
                                i = 107
                            } else if url == URL(string: "dwepisode://thehornsofnimon") {
                                i = 108
                            } else if url == URL(string: "dwepisode://shada") {
                                i = 109
                            } else if url == URL(string: "dwepisode://theleisurehive") {
                                i = 110
                            } else if url == URL(string: "dwepisode://meglos") {
                                i = 111
                            } else if url == URL(string: "dwepisode://fullcircle") {
                                i = 112
                            } else if url == URL(string: "dwepisode://stateofdecay") {
                                i = 113
                            } else if url == URL(string: "dwepisode://warriorsgate") {
                                i = 114
                            } else if url == URL(string: "dwepisode://thekeeperoftraken") {
                                i = 115
                            } else if url == URL(string: "dwepisode://logopolis") {
                                i = 116
                            } else if url == URL(string: "dwepisode://castrovalva") {
                                i = 117
                            } else if url == URL(string: "dwepisode://fourtodoomsday") {
                                i = 118
                            } else if url == URL(string: "dwepisode://kinda") {
                                i = 119
                            } else if url == URL(string: "dwepisode://thevisitation") {
                                i = 120
                            } else if url == URL(string: "dwepisode://blackorchid") {
                                i = 121
                            } else if url == URL(string: "dwepisode://earthshock") {
                                i = 122
                            } else if url == URL(string: "dwepisode://timeflight") {
                                i = 123
                            } else if url == URL(string: "dwepisode://arcofinfinity") {
                                i = 124
                            } else if url == URL(string: "dwepisode://snakedance") {
                                i = 125
                            } else if url == URL(string: "dwepisode://mawdrynundead") {
                                i = 126
                            } else if url == URL(string: "dwepisode://terminus") {
                                i = 127
                            } else if url == URL(string: "dwepisode://enlightenment") {
                                i = 128
                            } else if url == URL(string: "dwepisode://thekingsdemons") {
                                i = 129
                            } else if url == URL(string: "dwepisode://thefivedoctors") {
                                i = 130
                            } else if url == URL(string: "dwepisode://warriorsofthedeep") {
                                i = 131
                            } else if url == URL(string: "dwepisode://theawakening") {
                                i = 132
                            } else if url == URL(string: "dwepisode://frontios") {
                                i = 133
                            } else if url == URL(string: "dwepisode://resurrectionofthedaleks") {
                                i = 134
                            } else if url == URL(string: "dwepisode://planetoffire") {
                                i = 135
                            } else if url == URL(string: "dwepisode://thecavesofandrozani") {
                                i = 136
                            } else if url == URL(string: "dwepisode://thetwindilemma") {
                                i = 137
                            } else if url == URL(string: "dwepisode://attackofthecybermen") {
                                i = 138
                            } else if url == URL(string: "dwepisode://vengeanceonvaros") {
                                i = 139
                            } else if url == URL(string: "dwepisode://themarkoftherani") {
                                i = 140
                            } else if url == URL(string: "dwepisode://thetwodoctors") {
                                i = 141
                            } else if url == URL(string: "dwepisode://timelash") {
                                i = 142
                            } else if url == URL(string: "dwepisode://revelationofthedaleks") {
                                i = 143
                            } else if url == URL(string: "dwepisode://themysteriousplanet") {
                                i = 144
                            } else if url == URL(string: "dwepisode://mindwarp") {
                                i = 145
                            } else if url == URL(string: "dwepisode://terrorofthevervoids") {
                                i = 146
                            } else if url == URL(string: "dwepisode://theultimatefoe") {
                                i = 147
                            } else if url == URL(string: "dwepisode://timeandtherani") {
                                i = 148
                            } else if url == URL(string: "dwepisode://paradisetowers") {
                                i = 149
                            } else if url == URL(string: "dwepisode://deltaandthebannermen") {
                                i = 150
                            } else if url == URL(string: "dwepisode://dragonfire") {
                                i = 151
                            } else if url == URL(string: "dwepisode://remembranceofthedaleks") {
                                i = 152
                            } else if url == URL(string: "dwepisode://thehappinesspatrol") {
                                i = 153
                            } else if url == URL(string: "dwepisode://silvernemesis") {
                                i = 154
                            } else if url == URL(string: "dwepisode://thegreatestshowinthegalaxy") {
                                i = 155
                            } else if url == URL(string: "dwepisode://battlefield") {
                                i = 156
                            } else if url == URL(string: "dwepisode://ghostlight") {
                                i = 157
                            } else if url == URL(string: "dwepisode://thecurseoffenric") {
                                i = 158
                            } else if url == URL(string: "dwepisode://survival") {
                                i = 159
                            } else if url == URL(string: "dwepisode://tvmovie") {
                                i = 160
                            } else if url == URL(string: "dwepisode://rose") {
                                i = 161
                            } else if url == URL(string: "dwepisode://theendoftheworld") {
                                i = 162
                            } else if url == URL(string: "dwepisode://theunquietdead") {
                                i = 163
                            } else if url == URL(string: "dwepisode://aliensoflondon") {
                                i = 164
                            } else if url == URL(string: "dwepisode://worldwarthree") {
                                i = 165
                            } else if url == URL(string: "dwepisode://dalek") {
                                i = 166
                            } else if url == URL(string: "dwepisode://thelonggame") {
                                i = 167
                            } else if url == URL(string: "dwepisode://fathersday") {
                                i = 168
                            } else if url == URL(string: "dwepisode://theemptychild") {
                                i = 169
                            } else if url == URL(string: "dwepisode://thedoctordances") {
                                i = 170
                            } else if url == URL(string: "dwepisode://boomtown") {
                                i = 171
                            } else if url == URL(string: "dwepisode://badwolf") {
                                i = 172
                            } else if url == URL(string: "dwepisode://thepartingoftheways") {
                                i = 173
                            } else if url == URL(string: "dwepisode://thechristmasinvasion") {
                                i = 174
                            } else if url == URL(string: "dwepisode://newearth") {
                                i = 175
                            } else if url == URL(string: "dwepisode://toothandclaw") {
                                i = 176
                            } else if url == URL(string: "dwepisode://schoolreunion") {
                                i = 177
                            } else if url == URL(string: "dwepisode://thegirlinthefireplace") {
                                i = 178
                            } else if url == URL(string: "dwepisode://riseofthecybermen") {
                                i = 179
                            } else if url == URL(string: "dwepisode://theageofsteel") {
                                i = 180
                            } else if url == URL(string: "dwepisode://theidiotslantern") {
                                i = 181
                            } else if url == URL(string: "dwepisode://theimpossibleplanet") {
                                i = 182
                            } else if url == URL(string: "dwepisode://thesatanpit") {
                                i = 183
                            } else if url == URL(string: "dwepisode://loveandmonsters") {
                                i = 184
                            } else if url == URL(string: "dwepisode://fearher") {
                                i = 185
                            } else if url == URL(string: "dwepisode://armyofghosts") {
                                i = 186
                            } else if url == URL(string: "dwepisode://doomsday") {
                                i = 187
                            } else if url == URL(string: "dwepisode://therunawaybride") {
                                i = 188
                            } else if url == URL(string: "dwepisode://smithandjones") {
                                i = 189
                            } else if url == URL(string: "dwepisode://theshakespearecode") {
                                i = 190
                            } else if url == URL(string: "dwepisode://gridlock") {
                                i = 191
                            } else if url == URL(string: "dwepisode://daleksinmanhattan") {
                                i = 192
                            } else if url == URL(string: "dwepisode://evolutionofthedaleks") {
                                i = 193
                            } else if url == URL(string: "dwepisode://thelazarusexperment") {
                                i = 194
                            } else if url == URL(string: "dwepisode://42") {
                                i = 195
                            } else if url == URL(string: "dwepisode://humannature") {
                                i = 196
                            } else if url == URL(string: "dwepisode://thefamilyofblood") {
                                i = 197
                            } else if url == URL(string: "dwepisode://blink") {
                                i = 198
                            } else if url == URL(string: "dwepisode://utopia") {
                                i = 199
                            } else if url == URL(string: "dwepisode://thesoundofdrums") {
                                i = 200
                            } else if url == URL(string: "dwepisode://lastofthetimelords") {
                                i = 201
                            } else if url == URL(string: "dwepisode://voyageofthedamned") {
                                i = 202
                            } else if url == URL(string: "dwepisode://partnersincrime") {
                                i = 203
                            } else if url == URL(string: "dwepisode://thefiresofpompeii") {
                                i = 204
                            } else if url == URL(string: "dwepisode://planetoftheood") {
                                i = 205
                            } else if url == URL(string: "dwepisode://thesontaranstratagem") {
                                i = 206
                            } else if url == URL(string: "dwepisode://thepoisonsky") {
                                i = 207
                            } else if url == URL(string: "dwepisode://thedoctorsdaughter") {
                                i = 208
                            } else if url == URL(string: "dwepisode://theunicornandthewasp") {
                                i = 209
                            } else if url == URL(string: "dwepisode://silenceinthelibrary") {
                                i = 210
                            } else if url == URL(string: "dwepisode://forestofthedead") {
                                i = 211
                            } else if url == URL(string: "dwepisode://midnight") {
                                i = 212
                            } else if url == URL(string: "dwepisode://turnleft") {
                                i = 213
                            } else if url == URL(string: "dwepisode://thestolenearth") {
                                i = 214
                            } else if url == URL(string: "dwepisode://journeysend") {
                                i = 215
                            } else if url == URL(string: "dwepisode://thenextdoctor") {
                                i = 216
                            } else if url == URL(string: "dwepisode://planetofthedead") {
                                i = 217
                            } else if url == URL(string: "dwepisode://thewatersofmars") {
                                i = 218
                            } else if url == URL(string: "dwepisode://theendoftimepart1") {
                                i = 219
                            } else if url == URL(string: "dwepisode://theendoftimepart2") {
                                i = 220
                            } else if url == URL(string: "dwepisode://theeleventhhour") {
                                i = 221
                            } else if url == URL(string: "dwepisode://thebeastbelow") {
                                i = 222
                            } else if url == URL(string: "dwepisode://victoryofthedaleks") {
                                i = 223
                            } else if url == URL(string: "dwepisode://thetimeofangels") {
                                i = 224
                            } else if url == URL(string: "dwepisode://fleshandstone") {
                                i = 225
                            } else if url == URL(string: "dwepisode://thevampiresofvenice") {
                                i = 226
                            } else if url == URL(string: "dwepisode://amyschoice") {
                                i = 227
                            } else if url == URL(string: "dwepisode://thehungryearth") {
                                i = 228
                            } else if url == URL(string: "dwepisode://coldblood") {
                                i = 229
                            } else if url == URL(string: "dwepisode://vincentandthedoctor") {
                                i = 230
                            } else if url == URL(string: "dwepisode://thelodger") {
                                i = 231
                            } else if url == URL(string: "dwepisode://thepandoricaopens") {
                                i = 232
                            } else if url == URL(string: "dwepisode://thebigbang") {
                                i = 233
                            } else if url == URL(string: "dwepisode://achristmascarol") {
                                i = 234
                            } else if url == URL(string: "dwepisode://theimpossibleastronaut") {
                                i = 235
                            } else if url == URL(string: "dwepisode://dayofthemoon") {
                                i = 236
                            } else if url == URL(string: "dwepisode://thecurseoftheblackspot") {
                                i = 237
                            } else if url == URL(string: "dwepisode://thedoctorswife") {
                                i = 238
                            } else if url == URL(string: "dwepisode://therebelflesh") {
                                i = 239
                            } else if url == URL(string: "dwepisode://thealmostpeople") {
                                i = 240
                            } else if url == URL(string: "dwepisode://agoodmangoestowar") {
                                i = 241
                            } else if url == URL(string: "dwepisode://letskillhitler") {
                                i = 242
                            } else if url == URL(string: "dwepisode://nightterrors") {
                                i = 243
                            } else if url == URL(string: "dwepisode://thegirlwhowaited") {
                                i = 244
                            } else if url == URL(string: "dwepisode://thegodcomplex") {
                                i = 245
                            } else if url == URL(string: "dwepisode://closingtime") {
                                i = 246
                            } else if url == URL(string: "dwepisode://theweddingofriversong") {
                                i = 247
                            } else if url == URL(string: "dwepisode://thedoctorthewidowandthewardrobe") {
                                i = 248
                            } else if url == URL(string: "dwepisode://asylumofthedaleks") {
                                i = 249
                            } else if url == URL(string: "dwepisode://dinosaursonaspaceship") {
                                i = 250
                            } else if url == URL(string: "dwepisode://atowncalledmercy") {
                                i = 251
                            } else if url == URL(string: "dwepisode://thepowerofthree") {
                                i = 252
                            } else if url == URL(string: "dwepisode://theangelstakemanhattan") {
                                i = 253
                            } else if url == URL(string: "dwepisode://thesnowmen") {
                                i = 254
                            } else if url == URL(string: "dwepisode://thebellsofsaintjohn") {
                                i = 255
                            } else if url == URL(string: "dwepisode://theringsofakhaten") {
                                i = 256
                            } else if url == URL(string: "dwepisode://coldwar") {
                                i = 257
                            } else if url == URL(string: "dwepisode://hide") {
                                i = 258
                            } else if url == URL(string: "dwepisode://journeytothecentreofthetardis") {
                                i = 259
                            } else if url == URL(string: "dwepisode://thecrimsonhorror") {
                                i = 260
                            } else if url == URL(string: "dwepisode://nightmareinsilver") {
                                i = 261
                            } else if url == URL(string: "dwepisode://thenameofthedoctor") {
                                i = 262
                            } else if url == URL(string: "dwepisode://thedayofthedoctor") {
                                i = 263
                            } else if url == URL(string: "dwepisode://thetimeofthedoctor") {
                                i = 264
                            } else if url == URL(string: "dwepisode://deepbreath") {
                                i = 265
                            } else if url == URL(string: "dwepisode://intothedalek") {
                                i = 266
                            } else if url == URL(string: "dwepisode://robotofsherwood") {
                                i = 267
                            } else if url == URL(string: "dwepisode://listen") {
                                i = 268
                            } else if url == URL(string: "dwepisode://timeheist") {
                                i = 269
                            } else if url == URL(string: "dwepisode://thecaretaker") {
                                i = 270
                            } else if url == URL(string: "dwepisode://killthemoon") {
                                i = 271
                            } else if url == URL(string: "dwepisode://mummyontheorientexpress") {
                                i = 272
                            } else if url == URL(string: "dwepisode://flatline") {
                                i = 273
                            } else if url == URL(string: "dwepisode://intheforestofthenight") {
                                i = 274
                            } else if url == URL(string: "dwepisode://darkwater") {
                                i = 275
                            } else if url == URL(string: "dwepisode://deathinheaven") {
                                i = 276
                            } else if url == URL(string: "dwepisode://lastchristmas") {
                                i = 277
                            } else if url == URL(string: "dwepisode://themagiciansapprentice") {
                                i = 278
                            } else if url == URL(string: "dwepisode://thewitchsfamiliar") {
                                i = 279
                            } else if url == URL(string: "dwepisode://underthelake") {
                                i = 280
                            } else if url == URL(string: "dwepisode://beforetheflood") {
                                i = 281
                            } else if url == URL(string: "dwepisode://thegirlwhodied") {
                                i = 282
                            } else if url == URL(string: "dwepisode://thewomanwholived") {
                                i = 283
                            } else if url == URL(string: "dwepisode://thezygoninvasion") {
                                i = 284
                            } else if url == URL(string: "dwepisode://thezygoninversion") {
                                i = 285
                            } else if url == URL(string: "dwepisode://sleepnomore") {
                                i = 286
                            } else if url == URL(string: "dwepisode://facetheraven") {
                                i = 287
                            } else if url == URL(string: "dwepisode://heavensent") {
                                i = 288
                            } else if url == URL(string: "dwepisode://hellbent") {
                                i = 289
                            } else if url == URL(string: "dwepisode://thehusbandsofriversong") {
                                i = 290
                            } else if url == URL(string: "dwepisode://thereturnofdoctormysterio") {
                                i = 291
                            } else if url == URL(string: "dwepisode://thepilot") {
                                i = 292
                            } else if url == URL(string: "dwepisode://smile") {
                                i = 293
                            } else if url == URL(string: "dwepisode://thinice") {
                                i = 294
                            } else if url == URL(string: "dwepisode://knockknock") {
                                i = 295
                            } else if url == URL(string: "dwepisode://oxygen") {
                                i = 296
                            } else if url == URL(string: "dwepisode://extremis") {
                                i = 297
                            } else if url == URL(string: "dwepisode://thepyramidattheendoftheworld") {
                                i = 298
                            } else if url == URL(string: "dwepisode://thelieoftheland") {
                                i = 299
                            } else if url == URL(string: "dwepisode://empressofmars") {
                                i = 300
                            } else if url == URL(string: "dwepisode://theeatersoflight") {
                                i = 301
                            } else if url == URL(string: "dwepisode://worldenoughandtime") {
                                i = 302
                            } else if url == URL(string: "dwepisode://thedoctorfalls") {
                                i = 303
                            } else if url == URL(string: "dwepisode://twiceuponatime") {
                                i = 304
                            } else if url == URL(string: "dwepisode://thewomanwhofelltoearth") {
                                i = 305
                            } else if url == URL(string: "dwepisode://theghostmonument") {
                                i = 306
                            } else if url == URL(string: "dwepisode://rosa") {
                                i = 307
                            } else if url == URL(string: "dwepisode://arachnidsintheuk") {
                                i = 308
                            } else if url == URL(string: "dwepisode://thetsurangaconundrum") {
                                i = 309
                            } else if url == URL(string: "dwepisode://demonsofthepunjab") {
                                i = 310
                            } else if url == URL(string: "dwepisode://kerblam") {
                                i = 311
                            } else if url == URL(string: "dwepisode://thewitchfinders") {
                                i = 312
                            } else if url == URL(string: "dwepisode://ittakesyouaway") {
                                i = 313
                            } else if url == URL(string: "dwepisode://thebattleofranskooravkolos") {
                                i = 314
                            } else if url == URL(string: "dwepisode://resolution") {
                                i = 315
                            } else if url == URL(string: "dwepisode://spyfallpart1") {
                                i = 316
                            } else if url == URL(string: "dwepisode://spyfallpart2") {
                                i = 317
                            } else if url == URL(string: "dwepisode://orphan55") {
                                i = 318
                            } else if url == URL(string: "dwepisode://nikolateslasnightofterror") {
                                i = 319
                            } else if url == URL(string: "dwepisode://fugitiveofthejudoon") {
                                i = 320
                            } else if url == URL(string: "dwepisode://praxeus") {
                                i = 321
                            } else if url == URL(string: "dwepisode://canyouhearme") {
                                i = 322
                            } else if url == URL(string: "dwepisode://thehauntingofvilladiodati") {
                                i = 323
                            } else if url == URL(string: "dwepisode://ascensionofthecybermen") {
                                i = 324
                            } else if url == URL(string: "dwepisode://thetimelesschildren") {
                                i = 325
                            } else if url == URL(string: "dwepisode://revolutionofthedaleks") {
                                i = 326
                            } else if url == URL(string: "dwepisode://thehalloweenapocalypse") {
                                i = 327
                            } else if url == URL(string: "dwepisode://warofthesontarans") {
                                i = 328
                            } else if url == URL(string: "dwepisode://onceupontime") {
                                i = 329
                            } else if url == URL(string: "dwepisode://villageoftheangels") {
                                i = 330
                            } else if url == URL(string: "dwepisode://survivorsoftheflux") {
                                i = 331
                            } else if url == URL(string: "dwepisode://thevanquishers") {
                                i = 332
                            } else if url == URL(string: "dwepisode://eveofthedaleks") {
                                i = 333
                            } else if url == URL(string: "dwepisode://legendoftheseadevils") {
                                i = 334
                            } else if url == URL(string: "dwepisode://thepowerofthedoctor") {
                                i = 335
                            }
                        }
                        select()
                        print(i)
                        self.showingURLSheet = true
                    }
            } else {
                chooseDestination()
                    .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
                    .onDisappear() {
                        self.showingURLSheet = false
                    }
            }
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
