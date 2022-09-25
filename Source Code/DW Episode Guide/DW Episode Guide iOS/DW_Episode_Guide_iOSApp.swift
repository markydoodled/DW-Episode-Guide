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
        default: Text("Invalid Selection")
        }
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
                .sheet(isPresented: $showingURLSheet) {
                    chooseDestination()
                        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
                }
                .onOpenURL { url in
                    guard url.scheme == "dwepisode" else { return }
                    print(url)
                    func select() {
                        if url == URL(string: "dwepisode://anunearthlychild") {
                            i = 1
                        } else if url == URL(string: "dwepisode://thedaleks") {
                            i = 2
                        } else if url == URL(string: "dwepisode://theedgeofdestruction") {
                            i = 3
                        } else if url == URL(string: "dwepisode://") {
                            i = 4
                        } else if url == URL(string: "dwepisode://") {
                            i = 5
                        } else if url == URL(string: "dwepisode://") {
                            i = 6
                        } else if url == URL(string: "dwepisode://") {
                            i = 7
                        } else if url == URL(string: "dwepisode://") {
                            i = 8
                        } else if url == URL(string: "dwepisode://") {
                            i = 9
                        } else if url == URL(string: "dwepisode://") {
                            i = 10
                        } else if url == URL(string: "dwepisode://") {
                            i = 11
                        } else if url == URL(string: "dwepisode://") {
                            i = 12
                        } else if url == URL(string: "dwepisode://") {
                            i = 13
                        } else if url == URL(string: "dwepisode://") {
                            i = 14
                        } else if url == URL(string: "dwepisode://") {
                            i = 15
                        } else if url == URL(string: "dwepisode://") {
                            i = 16
                        } else if url == URL(string: "dwepisode://") {
                            i = 17
                        } else if url == URL(string: "dwepisode://") {
                            i = 18
                        } else if url == URL(string: "dwepisode://") {
                            i = 19
                        } else if url == URL(string: "dwepisode://") {
                            i = 20
                        } else if url == URL(string: "dwepisode://") {
                            i = 21
                        } else if url == URL(string: "dwepisode://") {
                            i = 22
                        } else if url == URL(string: "dwepisode://") {
                            i = 23
                        } else if url == URL(string: "dwepisode://") {
                            i = 24
                        } else if url == URL(string: "dwepisode://") {
                            i = 25
                        } else if url == URL(string: "dwepisode://") {
                            i = 26
                        } else if url == URL(string: "dwepisode://") {
                            i = 27
                        } else if url == URL(string: "dwepisode://") {
                            i = 28
                        } else if url == URL(string: "dwepisode://") {
                            i = 29
                        } else if url == URL(string: "dwepisode://") {
                            i = 30
                        } else if url == URL(string: "dwepisode://") {
                            i = 31
                        } else if url == URL(string: "dwepisode://") {
                            i = 32
                        } else if url == URL(string: "dwepisode://") {
                            i = 33
                        } else if url == URL(string: "dwepisode://") {
                            i = 34
                        } else if url == URL(string: "dwepisode://") {
                            i = 35
                        } else if url == URL(string: "dwepisode://") {
                            i = 36
                        } else if url == URL(string: "dwepisode://") {
                            i = 37
                        } else if url == URL(string: "dwepisode://") {
                            i = 38
                        } else if url == URL(string: "dwepisode://") {
                            i = 39
                        } else if url == URL(string: "dwepisode://") {
                            i = 40
                        } else if url == URL(string: "dwepisode://") {
                            i = 41
                        } else if url == URL(string: "dwepisode://") {
                            i = 42
                        } else if url == URL(string: "dwepisode://") {
                            i = 43
                        } else if url == URL(string: "dwepisode://") {
                            i = 44
                        } else if url == URL(string: "dwepisode://") {
                            i = 45
                        } else if url == URL(string: "dwepisode://") {
                            i = 46
                        } else if url == URL(string: "dwepisode://") {
                            i = 47
                        } else if url == URL(string: "dwepisode://") {
                            i = 48
                        } else if url == URL(string: "dwepisode://") {
                            i = 49
                        } else if url == URL(string: "dwepisode://") {
                            i = 50
                        } else if url == URL(string: "dwepisode://") {
                            i = 51
                        } else if url == URL(string: "dwepisode://") {
                            i = 52
                        } else if url == URL(string: "dwepisode://") {
                            i = 53
                        } else if url == URL(string: "dwepisode://") {
                            i = 54
                        } else if url == URL(string: "dwepisode://") {
                            i = 55
                        } else if url == URL(string: "dwepisode://") {
                            i = 56
                        } else if url == URL(string: "dwepisode://") {
                            i = 57
                        } else if url == URL(string: "dwepisode://") {
                            i = 58
                        } else if url == URL(string: "dwepisode://") {
                            i = 59
                        } else if url == URL(string: "dwepisode://") {
                            i = 60
                        } else if url == URL(string: "dwepisode://") {
                            i = 61
                        } else if url == URL(string: "dwepisode://") {
                            i = 62
                        } else if url == URL(string: "dwepisode://") {
                            i = 63
                        } else if url == URL(string: "dwepisode://") {
                            i = 64
                        } else if url == URL(string: "dwepisode://") {
                            i = 65
                        } else if url == URL(string: "dwepisode://") {
                            i = 66
                        } else if url == URL(string: "dwepisode://") {
                            i = 67
                        } else if url == URL(string: "dwepisode://") {
                            i = 68
                        } else if url == URL(string: "dwepisode://") {
                            i = 69
                        } else if url == URL(string: "dwepisode://") {
                            i = 70
                        } else if url == URL(string: "dwepisode://") {
                            i = 71
                        } else if url == URL(string: "dwepisode://") {
                            i = 72
                        } else if url == URL(string: "dwepisode://") {
                            i = 73
                        } else if url == URL(string: "dwepisode://") {
                            i = 74
                        } else if url == URL(string: "dwepisode://") {
                            i = 75
                        } else if url == URL(string: "dwepisode://") {
                            i = 76
                        } else if url == URL(string: "dwepisode://") {
                            i = 77
                        } else if url == URL(string: "dwepisode://") {
                            i = 78
                        } else if url == URL(string: "dwepisode://") {
                            i = 79
                        } else if url == URL(string: "dwepisode://") {
                            i = 80
                        } else if url == URL(string: "dwepisode://") {
                            i = 81
                        } else if url == URL(string: "dwepisode://") {
                            i = 82
                        } else if url == URL(string: "dwepisode://") {
                            i = 83
                        } else if url == URL(string: "dwepisode://") {
                            i = 84
                        } else if url == URL(string: "dwepisode://") {
                            i = 85
                        } else if url == URL(string: "dwepisode://") {
                            i = 86
                        } else if url == URL(string: "dwepisode://") {
                            i = 87
                        } else if url == URL(string: "dwepisode://") {
                            i = 88
                        } else if url == URL(string: "dwepisode://") {
                            i = 89
                        } else if url == URL(string: "dwepisode://") {
                            i = 90
                        } else if url == URL(string: "dwepisode://") {
                            i = 91
                        } else if url == URL(string: "dwepisode://") {
                            i = 92
                        } else if url == URL(string: "dwepisode://") {
                            i = 93
                        } else if url == URL(string: "dwepisode://") {
                            i = 94
                        } else if url == URL(string: "dwepisode://") {
                            i = 95
                        } else if url == URL(string: "dwepisode://") {
                            i = 96
                        } else if url == URL(string: "dwepisode://") {
                            i = 97
                        } else if url == URL(string: "dwepisode://") {
                            i = 98
                        } else if url == URL(string: "dwepisode://") {
                            i = 99
                        } else if url == URL(string: "dwepisode://") {
                            i = 100
                        } else if url == URL(string: "dwepisode://") {
                            i = 101
                        } else if url == URL(string: "dwepisode://") {
                            i = 102
                        } else if url == URL(string: "dwepisode://") {
                            i = 103
                        } else if url == URL(string: "dwepisode://") {
                            i = 104
                        } else if url == URL(string: "dwepisode://") {
                            i = 105
                        } else if url == URL(string: "dwepisode://") {
                            i = 106
                        } else if url == URL(string: "dwepisode://") {
                            i = 107
                        } else if url == URL(string: "dwepisode://") {
                            i = 108
                        } else if url == URL(string: "dwepisode://") {
                            i = 109
                        } else if url == URL(string: "dwepisode://") {
                            i = 110
                        } else if url == URL(string: "dwepisode://") {
                            i = 111
                        } else if url == URL(string: "dwepisode://") {
                            i = 112
                        } else if url == URL(string: "dwepisode://") {
                            i = 113
                        } else if url == URL(string: "dwepisode://") {
                            i = 114
                        } else if url == URL(string: "dwepisode://") {
                            i = 115
                        } else if url == URL(string: "dwepisode://") {
                            i = 116
                        } else if url == URL(string: "dwepisode://") {
                            i = 117
                        } else if url == URL(string: "dwepisode://") {
                            i = 118
                        } else if url == URL(string: "dwepisode://") {
                            i = 119
                        } else if url == URL(string: "dwepisode://") {
                            i = 120
                        } else if url == URL(string: "dwepisode://") {
                            i = 121
                        } else if url == URL(string: "dwepisode://") {
                            i = 122
                        } else if url == URL(string: "dwepisode://") {
                            i = 123
                        } else if url == URL(string: "dwepisode://") {
                            i = 124
                        } else if url == URL(string: "dwepisode://") {
                            i = 125
                        } else if url == URL(string: "dwepisode://") {
                            i = 126
                        } else if url == URL(string: "dwepisode://") {
                            i = 127
                        } else if url == URL(string: "dwepisode://") {
                            i = 128
                        } else if url == URL(string: "dwepisode://") {
                            i = 129
                        } else if url == URL(string: "dwepisode://") {
                            i = 130
                        } else if url == URL(string: "dwepisode://") {
                            i = 131
                        } else if url == URL(string: "dwepisode://") {
                            i = 132
                        } else if url == URL(string: "dwepisode://") {
                            i = 133
                        } else if url == URL(string: "dwepisode://") {
                            i = 134
                        } else if url == URL(string: "dwepisode://") {
                            i = 135
                        } else if url == URL(string: "dwepisode://") {
                            i = 136
                        } else if url == URL(string: "dwepisode://") {
                            i = 137
                        } else if url == URL(string: "dwepisode://") {
                            i = 138
                        } else if url == URL(string: "dwepisode://") {
                            i = 139
                        } else if url == URL(string: "dwepisode://") {
                            i = 140
                        } else if url == URL(string: "dwepisode://") {
                            i = 141
                        } else if url == URL(string: "dwepisode://") {
                            i = 142
                        } else if url == URL(string: "dwepisode://") {
                            i = 143
                        } else if url == URL(string: "dwepisode://") {
                            i = 144
                        } else if url == URL(string: "dwepisode://") {
                            i = 145
                        } else if url == URL(string: "dwepisode://") {
                            i = 146
                        } else if url == URL(string: "dwepisode://") {
                            i = 147
                        } else if url == URL(string: "dwepisode://") {
                            i = 148
                        } else if url == URL(string: "dwepisode://") {
                            i = 149
                        } else if url == URL(string: "dwepisode://") {
                            i = 150
                        } else if url == URL(string: "dwepisode://") {
                            i = 151
                        } else if url == URL(string: "dwepisode://") {
                            i = 152
                        } else if url == URL(string: "dwepisode://") {
                            i = 153
                        } else if url == URL(string: "dwepisode://") {
                            i = 154
                        } else if url == URL(string: "dwepisode://") {
                            i = 155
                        } else if url == URL(string: "dwepisode://") {
                            i = 156
                        } else if url == URL(string: "dwepisode://") {
                            i = 157
                        } else if url == URL(string: "dwepisode://") {
                            i = 158
                        } else if url == URL(string: "dwepisode://") {
                            i = 159
                        } else if url == URL(string: "dwepisode://") {
                            i = 160
                        } else if url == URL(string: "dwepisode://") {
                            i = 161
                        } else if url == URL(string: "dwepisode://") {
                            i = 162
                        } else if url == URL(string: "dwepisode://") {
                            i = 163
                        } else if url == URL(string: "dwepisode://") {
                            i = 164
                        } else if url == URL(string: "dwepisode://") {
                            i = 165
                        } else if url == URL(string: "dwepisode://") {
                            i = 166
                        } else if url == URL(string: "dwepisode://") {
                            i = 167
                        } else if url == URL(string: "dwepisode://") {
                            i = 168
                        } else if url == URL(string: "dwepisode://") {
                            i = 169
                        } else if url == URL(string: "dwepisode://") {
                            i = 170
                        } else if url == URL(string: "dwepisode://") {
                            i = 171
                        } else if url == URL(string: "dwepisode://") {
                            i = 172
                        } else if url == URL(string: "dwepisode://") {
                            i = 173
                        } else if url == URL(string: "dwepisode://") {
                            i = 174
                        } else if url == URL(string: "dwepisode://") {
                            i = 175
                        } else if url == URL(string: "dwepisode://") {
                            i = 176
                        } else if url == URL(string: "dwepisode://") {
                            i = 177
                        } else if url == URL(string: "dwepisode://") {
                            i = 178
                        } else if url == URL(string: "dwepisode://") {
                            i = 179
                        } else if url == URL(string: "dwepisode://") {
                            i = 180
                        } else if url == URL(string: "dwepisode://") {
                            i = 181
                        } else if url == URL(string: "dwepisode://") {
                            i = 182
                        } else if url == URL(string: "dwepisode://") {
                            i = 183
                        } else if url == URL(string: "dwepisode://") {
                            i = 184
                        } else if url == URL(string: "dwepisode://") {
                            i = 185
                        } else if url == URL(string: "dwepisode://") {
                            i = 186
                        } else if url == URL(string: "dwepisode://") {
                            i = 187
                        } else if url == URL(string: "dwepisode://") {
                            i = 188
                        } else if url == URL(string: "dwepisode://") {
                            i = 189
                        } else if url == URL(string: "dwepisode://") {
                            i = 190
                        } else if url == URL(string: "dwepisode://") {
                            i = 191
                        } else if url == URL(string: "dwepisode://") {
                            i = 192
                        } else if url == URL(string: "dwepisode://") {
                            i = 193
                        } else if url == URL(string: "dwepisode://") {
                            i = 194
                        } else if url == URL(string: "dwepisode://") {
                            i = 195
                        } else if url == URL(string: "dwepisode://") {
                            i = 196
                        } else if url == URL(string: "dwepisode://") {
                            i = 197
                        } else if url == URL(string: "dwepisode://") {
                            i = 198
                        } else if url == URL(string: "dwepisode://") {
                            i = 199
                        } else if url == URL(string: "dwepisode://") {
                            i = 200
                        } else if url == URL(string: "dwepisode://") {
                            i = 201
                        } else if url == URL(string: "dwepisode://") {
                            i = 202
                        } else if url == URL(string: "dwepisode://") {
                            i = 203
                        } else if url == URL(string: "dwepisode://") {
                            i = 204
                        } else if url == URL(string: "dwepisode://") {
                            i = 205
                        } else if url == URL(string: "dwepisode://") {
                            i = 206
                        } else if url == URL(string: "dwepisode://") {
                            i = 207
                        } else if url == URL(string: "dwepisode://") {
                            i = 208
                        } else if url == URL(string: "dwepisode://") {
                            i = 209
                        } else if url == URL(string: "dwepisode://") {
                            i = 210
                        } else if url == URL(string: "dwepisode://") {
                            i = 211
                        } else if url == URL(string: "dwepisode://") {
                            i = 212
                        } else if url == URL(string: "dwepisode://") {
                            i = 213
                        } else if url == URL(string: "dwepisode://") {
                            i = 214
                        } else if url == URL(string: "dwepisode://") {
                            i = 215
                        } else if url == URL(string: "dwepisode://") {
                            i = 216
                        } else if url == URL(string: "dwepisode://") {
                            i = 217
                        } else if url == URL(string: "dwepisode://") {
                            i = 218
                        } else if url == URL(string: "dwepisode://") {
                            i = 219
                        } else if url == URL(string: "dwepisode://") {
                            i = 220
                        } else if url == URL(string: "dwepisode://") {
                            i = 221
                        } else if url == URL(string: "dwepisode://") {
                            i = 222
                        } else if url == URL(string: "dwepisode://") {
                            i = 223
                        } else if url == URL(string: "dwepisode://") {
                            i = 224
                        } else if url == URL(string: "dwepisode://") {
                            i = 225
                        } else if url == URL(string: "dwepisode://") {
                            i = 226
                        } else if url == URL(string: "dwepisode://") {
                            i = 227
                        } else if url == URL(string: "dwepisode://") {
                            i = 228
                        } else if url == URL(string: "dwepisode://") {
                            i = 229
                        } else if url == URL(string: "dwepisode://") {
                            i = 230
                        } else if url == URL(string: "dwepisode://") {
                            i = 231
                        } else if url == URL(string: "dwepisode://") {
                            i = 232
                        } else if url == URL(string: "dwepisode://") {
                            i = 233
                        } else if url == URL(string: "dwepisode://") {
                            i = 234
                        } else if url == URL(string: "dwepisode://") {
                            i = 235
                        } else if url == URL(string: "dwepisode://") {
                            i = 236
                        } else if url == URL(string: "dwepisode://") {
                            i = 237
                        } else if url == URL(string: "dwepisode://") {
                            i = 238
                        } else if url == URL(string: "dwepisode://") {
                            i = 239
                        } else if url == URL(string: "dwepisode://") {
                            i = 240
                        } else if url == URL(string: "dwepisode://") {
                            i = 241
                        } else if url == URL(string: "dwepisode://") {
                            i = 242
                        } else if url == URL(string: "dwepisode://") {
                            i = 243
                        } else if url == URL(string: "dwepisode://") {
                            i = 244
                        } else if url == URL(string: "dwepisode://") {
                            i = 245
                        } else if url == URL(string: "dwepisode://") {
                            i = 246
                        } else if url == URL(string: "dwepisode://") {
                            i = 247
                        } else if url == URL(string: "dwepisode://") {
                            i = 248
                        } else if url == URL(string: "dwepisode://") {
                            i = 249
                        } else if url == URL(string: "dwepisode://") {
                            i = 250
                        } else if url == URL(string: "dwepisode://") {
                            i = 251
                        } else if url == URL(string: "dwepisode://") {
                            i = 252
                        } else if url == URL(string: "dwepisode://") {
                            i = 253
                        } else if url == URL(string: "dwepisode://") {
                            i = 254
                        } else if url == URL(string: "dwepisode://") {
                            i = 255
                        } else if url == URL(string: "dwepisode://") {
                            i = 256
                        } else if url == URL(string: "dwepisode://") {
                            i = 257
                        } else if url == URL(string: "dwepisode://") {
                            i = 258
                        } else if url == URL(string: "dwepisode://") {
                            i = 259
                        } else if url == URL(string: "dwepisode://") {
                            i = 260
                        } else if url == URL(string: "dwepisode://") {
                            i = 261
                        } else if url == URL(string: "dwepisode://") {
                            i = 262
                        } else if url == URL(string: "dwepisode://") {
                            i = 263
                        } else if url == URL(string: "dwepisode://") {
                            i = 264
                        } else if url == URL(string: "dwepisode://") {
                            i = 265
                        } else if url == URL(string: "dwepisode://") {
                            i = 266
                        } else if url == URL(string: "dwepisode://") {
                            i = 267
                        } else if url == URL(string: "dwepisode://") {
                            i = 268
                        } else if url == URL(string: "dwepisode://") {
                            i = 269
                        } else if url == URL(string: "dwepisode://") {
                            i = 270
                        } else if url == URL(string: "dwepisode://") {
                            i = 271
                        } else if url == URL(string: "dwepisode://") {
                            i = 272
                        } else if url == URL(string: "dwepisode://") {
                            i = 273
                        } else if url == URL(string: "dwepisode://") {
                            i = 274
                        } else if url == URL(string: "dwepisode://") {
                            i = 275
                        } else if url == URL(string: "dwepisode://") {
                            i = 276
                        } else if url == URL(string: "dwepisode://") {
                            i = 277
                        } else if url == URL(string: "dwepisode://") {
                            i = 278
                        } else if url == URL(string: "dwepisode://") {
                            i = 279
                        } else if url == URL(string: "dwepisode://") {
                            i = 280
                        } else if url == URL(string: "dwepisode://") {
                            i = 281
                        } else if url == URL(string: "dwepisode://") {
                            i = 282
                        } else if url == URL(string: "dwepisode://") {
                            i = 283
                        } else if url == URL(string: "dwepisode://") {
                            i = 284
                        } else if url == URL(string: "dwepisode://") {
                            i = 285
                        } else if url == URL(string: "dwepisode://") {
                            i = 286
                        } else if url == URL(string: "dwepisode://") {
                            i = 287
                        } else if url == URL(string: "dwepisode://") {
                            i = 288
                        } else if url == URL(string: "dwepisode://") {
                            i = 289
                        } else if url == URL(string: "dwepisode://") {
                            i = 290
                        } else if url == URL(string: "dwepisode://") {
                            i = 291
                        } else if url == URL(string: "dwepisode://") {
                            i = 292
                        } else if url == URL(string: "dwepisode://") {
                            i = 293
                        } else if url == URL(string: "dwepisode://") {
                            i = 294
                        } else if url == URL(string: "dwepisode://") {
                            i = 295
                        } else if url == URL(string: "dwepisode://") {
                            i = 296
                        } else if url == URL(string: "dwepisode://") {
                            i = 297
                        } else if url == URL(string: "dwepisode://") {
                            i = 298
                        } else if url == URL(string: "dwepisode://") {
                            i = 299
                        } else if url == URL(string: "dwepisode://") {
                            i = 300
                        } else if url == URL(string: "dwepisode://") {
                            i = 301
                        } else if url == URL(string: "dwepisode://") {
                            i = 302
                        } else if url == URL(string: "dwepisode://") {
                            i = 303
                        } else if url == URL(string: "dwepisode://") {
                            i = 304
                        } else if url == URL(string: "dwepisode://") {
                            i = 305
                        } else if url == URL(string: "dwepisode://") {
                            i = 306
                        } else if url == URL(string: "dwepisode://") {
                            i = 307
                        } else if url == URL(string: "dwepisode://") {
                            i = 308
                        } else if url == URL(string: "dwepisode://") {
                            i = 309
                        } else if url == URL(string: "dwepisode://") {
                            i = 310
                        } else if url == URL(string: "dwepisode://") {
                            i = 311
                        } else if url == URL(string: "dwepisode://") {
                            i = 312
                        } else if url == URL(string: "dwepisode://") {
                            i = 313
                        } else if url == URL(string: "dwepisode://") {
                            i = 314
                        } else if url == URL(string: "dwepisode://") {
                            i = 315
                        } else if url == URL(string: "dwepisode://") {
                            i = 316
                        } else if url == URL(string: "dwepisode://") {
                            i = 317
                        } else if url == URL(string: "dwepisode://") {
                            i = 318
                        } else if url == URL(string: "dwepisode://") {
                            i = 319
                        } else if url == URL(string: "dwepisode://") {
                            i = 320
                        } else if url == URL(string: "dwepisode://") {
                            i = 321
                        } else if url == URL(string: "dwepisode://") {
                            i = 322
                        } else if url == URL(string: "dwepisode://") {
                            i = 323
                        } else if url == URL(string: "dwepisode://") {
                            i = 324
                        } else if url == URL(string: "dwepisode://") {
                            i = 325
                        } else if url == URL(string: "dwepisode://") {
                            i = 326
                        } else if url == URL(string: "dwepisode://") {
                            i = 327
                        } else if url == URL(string: "dwepisode://") {
                            i = 328
                        } else if url == URL(string: "dwepisode://") {
                            i = 329
                        } else if url == URL(string: "dwepisode://") {
                            i = 330
                        } else if url == URL(string: "dwepisode://") {
                            i = 331
                        } else if url == URL(string: "dwepisode://") {
                            i = 332
                        } else if url == URL(string: "dwepisode://") {
                            i = 333
                        } else if url == URL(string: "dwepisode://") {
                            i = 334
                        }
                    }
                    select()
                    print(i)
                    self.showingURLSheet = true
                }
        }
        .onChange(of: scenePhase) { _ in
            persistenceController.save()
        }
    }
}
