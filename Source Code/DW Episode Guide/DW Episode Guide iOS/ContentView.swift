//
//  ContentView.swift
//  DW Episode Guide iOS
//
//  Created by Mark Howard on 27/03/2022.
//

import SwiftUI
import MessageUI

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State var tabSelection = 1
    @State var result: Result<MFMailComposeResult, Error>? = nil
    @State var isShowingMailView = false
    @State var showingSettings = false
    let epNames = ["An Unearthly Child", "The Daleks", "The Edge Of Destruction", "Marco Polo", "The Keys Of Marinus", "The Aztecs", "The Sensorites", "The Reign Of Terror", "Planet Of Giants", "The Dalek Invasion Of Earth", "The Rescue", "The Romans", "The Web Planet", "The Crusade", "The Space Museum", "The Chase", "The Time Meddler", "Galaxy 4", "Mission To The Unknown", "The Myth Makers", "The Daleks' Master Plan", "The Massacre", "The Ark", "The Celestial Toymaker", "The Gunfighters", "The Savages", "The War Machines", "The Smugglers", "The Tenth Planet", "The Power Of The Daleks", "The Highlanders", "The Underwater Menace", "The Moonbase", "The Macra Terror", "The Faceles Ones", "The Evil Of The Daleks", "The Tomb Of The Cybermen", "The Abominable Snowmen", "The Ice Warriors", "The Enemy Of The World", "The Web Of Fear", "Fury From The Deep", "The Wheel In Space", "The Mind Robber", "The Invasion", "The Krotons", "The Seeds Of Death", "The Space Pirates", "The War Games", "Spearhead From Space", "Doctor Who And The Silurians", "The Ambassadors Of Death", "Inferno", "Terror Of The Autons", "The Mind Of Evil", "The Claws Of Axos", "Colony In Space", "The Daemons", "Day Of The Daleks", "The Curse Of Peladon", "The Sea Devils", "The Mutants", "The Time Monster", "The Three Doctors", "Carnival Of Monsters", "Frontier In Space", "Planet Of The Daleks", "The Green Death", "The Time Warrior", "Invasion Of The Dinosaurs", "Death To The Daleks", "The Monster Of Peladon", "Planet Of The Spiders", "Robot", "The Ark In Space", "The Sontaran Experiment", "Genesis Of The Daleks", "Revenge Of The Cybermen", "Terror Of The Zygons", "Planet Of Evil", "Pyramids Of Mars", "The Android Invasion", "The Brain Of Morbius", "The Seeds Of Doom", "The Masque Of Mandragora", "The Hand Of Fear", "The Deadly Assassin", "The Face Of Evil", "The Robots Of Death", "The Talons Of Weng-Chiang", "Horror Of Fang Rock", "The Invisible Enemy", "Image Of The Fendahl", "The Sun Makers", "Underworld", "The Invasion Of Time", "The Ribos Operation", "The Pirate Planet", "The Stones Of Blood", "The Androids Of Tara", "The Power Of Kroll", "The Armageddon Factor", "Destiny Of The Daleks", "City Of Death", "The Creature From The Pit", "Nightmare Of Eden", "The Horns Of Nimon", "Shada", "The Leisure Hive", "Meglos", "Full Circle", "State Of Decay", "Warriors' Gate", "The Keeper Of Traken", "Logopolis", "Castrovalva", "Four To Doomsday", "Kinda", "The Visitation", "Black Orchid", "Earthshock", "Time-Flight", "Arc Of Infinity", "Snakedance", "Mawdryn Undead", "Terminus", "Enlightenment", "The King's Demons", "The Five Doctors", "Warriors Of The Deep", "The Awakening", "Frontios", "Resurrection Of The Daleks", "Planet Of Fire", "The Caves Of Androzani", "The Twin Dilemma", "Attack Of The Cybermen", "Vengeance On Varos", "The Mark Of The Rani", "The Two Doctors", "Timelash", "Revelation Of The Daleks", "The Mysterious Planet", "Mindwarp", "Terror Of The Vervoids", "The Ultimate Foe", "Time And The Rani", "Paradise Towers", "Delta And The Bannermen", "Dragonfire", "Remembrance Of The Daleks", "The  Happiness Patrol", "Silver Nemesis", "The Greatest Show In The Galaxy", "Battlefield", "Ghost Light", "The Curse Of Fenric", "Survival", "TV Movie", "Rose", "The End Of The World", "The Unquiet Dead", "Aliens Of London", "World War Three", "Dalek", "The Long Game", "Father's Day", "The Empty Child", "The Doctor Dances", "Boom Town", "Bad Wolf", "The Parting Of The Ways", "The Christmas Invasion", "New Earth", "Tooth And Claw", "School Reunion", "The Girl In The Fireplace", "Rise Of The Cybermen", "The Age Of Steel", "The Idiot's Lantern", "The Impossible Planet", "The Satan Pit", "Love & Monsters", "Fear Her", "Army Of Ghosts", "Doomsday", "The Runaway Bride", "Smith And Jones", "The Shakespeare Code", "Gridlock", "Daleks In Manhattan", "Evolution Of The Daleks", "The Lazarus Experiment", "42", "Human Nature", "The Family Of Blood", "Blink", "Utopia", "The Sound Of Drums", "Last Of The Time Lords", "Voyage Of The Damned", "Partners In Crime", "The Fires Of Pompeii", "Planet Of The Ood", "The Sontaran Stratagem", "The Poison Sky", "The Doctor's Daughter", "The Unicorn And The Wasp", "Silence In The Library", "Forest Of The Dead", "Midnight", "Turn Left", "The Stolen Earth", "Journey's End", "The Next Doctor", "Planet Of The Dead", "The Waters Of Mars", "The End Of Time - Part 1", "The End Of Time Part 2", "The Eleventh Hour", "The Beast Below", "Victory Of The Daleks", "The Time Of The Angels", "Flesh And Stone", "The Vampires Of Venice", "Amy's Choice", "The Hungry Earth", "Cold Blood", "Vincent And The Doctor", "The Lodger", "The Pandorica Opens", "The Big Bang", "A Christmas Carol", "The Impossible Astronaut", "Day Of The Moon", "The Curse Of The Black Spot", "The Doctor's Wife", "The Rebel Flesh", "The Almost People", "A Good Man Goes To War", "Let's Kill Hitler", "Night Terrors", "The Girl Who Waited", "The God Complex", "Closing Time", "The Wedding Of River Song", "The Doctor, The Widow And The Wardrobe", "Asylum Of The Daleks", "Dinosaurs On A Spaceship", "A Town Called Mercy", "The Power Of Three", "The Angels Take Manhattan", "The Snowmen", "The Bells Of Saint John", "The Rings Of Akhaten", "Cold War", "Hide", "Journey To The Centre Of The TARDIS", "The Crimson Horror", "Nightmare In Silver", "The Name Of The Doctor", "The Day Of The Doctor", "The Time Of The Doctor", "Deep Breath", "Into The Dalek", "Robot Of Sherwood", "Listen", "Time Heist", "The Caretaker", "Kill The Moon", "Mummy On The Orient Express", "Flatline", "In The Forest Of The Night", "Dark Water", "Death In Heaven", "Last Christmas", "The Magician's Apprentice", "The Witch's Familiar", "Under The Lake", "Before The Flood", "The Girl Who Died", "The Woman Who Lived", "The Zygon Invasion", "The Zygon Inversion", "Sleep No More", "Face The Raven", "Heaven Sent", "Hell Bent", "The Husbands Of River Song", "The Return Of Doctor Mysterio", "The Pilot", "Smile", "Thin Ice", "Knock Knock", "Oxygen", "Extremis", "The Pyramid At The End Of The World", "The Lie Of The Land", "Empress Of Mars", "The Eaters Of Light", "World Enough And Time", "The Doctor Falls", "Twice Upon A Time", "The Woman Who Fell To Earth", "The Ghost Monument", "Rosa", "Arachnids In The UK", "The Tsuranga Conundrum", "Demons Of The Punjab", "Kerblam!", "The Witchfinders", "It Takes You Away", "The Battle Of Ranskoor Av Kolos", "Resolution", "Spyfall - Part 1", "Spyfall - Part 2", "Orphan 55", "Nikola Tesla's Night Of Terror", "Fugitive Of The Judoon", "Praxeus", "Can You Hear Me?", "The Haunting Of Villa ￼Diodati", "Ascension Of The Cybermen", "The Timeless Children", "Revolution Of The Daleks", "The Halloween Apocalypse", "War Of The Sontarans", "Once, Upon Time", "Village Of The Angels", "Survivors Of The Flux", "The Vanquishers", "Eve Of The Daleks", "Legend Of The Sea Devils"]
    var searchResults: [String] {
            if searchText.isEmpty {
                return epNames
            } else {
                return epNames.filter { $0.contains(searchText) }
            }
        }
    @State var searchText = ""
    @State var i = 0
    var body: some View {
    if horizontalSizeClass == .regular {
        NavigationView {
            List {
                NavigationLink(destination: search) {
                    Label("Search", systemImage: "magnifyingglass")
                }
                Section(header: Text("Classic Series")) {
                    classicSeriesBlock1
                    classicSeriesBlock2
                    classicSeriesBlock3
                }
                Section(header: Text("New Series")) {
                   newSeriesBlock1
                   newSeriesBlock2
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("DW Episode Guide")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {self.showingSettings = true}) {
                        Image(systemName: "gearshape")
                    }
                    .sheet(isPresented: $showingSettings) {
                        setting
                    }
                }
            }
            List {
                Text("Please Select A Series...")
            }
            .listStyle(InsetListStyle())
            .navigationBarTitle("Select")
            VStack {
                Image("AppsIcon")
                    .resizable()
                    .cornerRadius(25)
                    .frame(width: 150, height: 150)
                Text("DW Episode Guide")
                    .font(.title2)
                    .bold()
                    .padding()
                    }
                }
            } else {
                TabView(selection: $tabSelection) {
                NavigationView {
                        List {
                            classicSeriesBlock1
                            classicSeriesBlock2
                            classicSeriesBlock3
                        }
                        .listStyle(InsetListStyle())
                        .navigationTitle("Classic Series")
                    }
                    .tag(1)
                    .tabItem {
                        Image(systemName: "c.circle")
                        Text("Classic")
                    }
                    NavigationView {
                        List {
                            newSeriesBlock1
                            newSeriesBlock2
                        }
                        .listStyle(InsetListStyle())
                        .navigationTitle("New Series")
                    }
                    .tag(2)
                    .tabItem {
                        Image(systemName: "n.circle")
                        Text("New")
                    }
                    NavigationView {
                        search
                    }
                    .tag(3)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                    setting
                    .tag(4)
                    .tabItem {
                        Image(systemName: "gearshape")
                        Text("Settings")
                    } 
                }
        }
    }
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
        case 152: RemembranceOfTheDaleks()
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
        case 184: LoveAndMonsters()
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
        case 326: RevolutionOfTheDaleks()
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
    var search: some View {
        List {
            ForEach(searchResults, id: \.self) { result in
                NavigationLink(destination: chooseDestination().onAppear() {
                if result == "An Unearthly Child" {
                    i = 1
                } else if result == "The Daleks" {
                    i = 2
                } else if result == "The Edge Of Destruction" {
                    i = 3
                } else if result == "Marco Polo" {
                    i = 4
                } else if result == "The Keys Of Marinus" {
                    i = 5
                } else if result == "The Aztecs" {
                    i = 6
                } else if result == "The Sensorites" {
                    i = 7
                } else if result == "The Reign Of Terror" {
                    i = 8
                } else if result == "Planet Of Giants" {
                    i = 9
                } else if result == "The Dalek Invasion Of Earth" {
                    i = 10
                } else if result == "The Rescue" {
                    i = 11
                } else if result == "The Romans" {
                    i = 12
                } else if result == "" {
                    i = 13
                } else if result == "" {
                    i = 14
                } else if result == "" {
                    i = 15
                } else if result == "" {
                    i = 16
                } else if result == "" {
                    i = 17
                } else if result == "" {
                    i = 18
                } else if result == "" {
                    i = 19
                } else if result == "" {
                    i = 20
                } else if result == "" {
                    i = 21
                } else if result == "" {
                    i = 22
                } else if result == "" {
                    i = 23
                } else if result == "" {
                    i = 24
                } else if result == "" {
                    i = 25
                } else if result == "" {
                    i = 26
                } else if result == "" {
                    i = 27
                } else if result == "" {
                    i = 28
                } else if result == "" {
                    i = 29
                } else if result == "" {
                    i = 30
                } else if result == "" {
                    i = 31
                } else if result == "" {
                    i = 32
                } else if result == "" {
                    i = 33
                } else if result == "" {
                    i = 34
                } else if result == "" {
                    i = 35
                } else if result == "" {
                    i = 36
                } else if result == "" {
                    i = 37
                } else if result == "" {
                    i = 38
                } else if result == "" {
                    i = 39
                } else if result == "" {
                    i = 40
                } else if result == "" {
                    i = 41
                } else if result == "" {
                    i = 42
                } else if result == "" {
                    i = 43
                } else if result == "" {
                    i = 44
                } else if result == "" {
                    i = 45
                } else if result == "" {
                    i = 46
                } else if result == "" {
                    i = 47
                } else if result == "" {
                    i = 48
                } else if result == "" {
                    i = 49
                } else if result == "" {
                    i = 50
                } else if result == "" {
                    i = 51
                } else if result == "" {
                    i = 52
                } else if result == "" {
                    i = 53
                } else if result == "" {
                    i = 54
                } else if result == "" {
                    i = 55
                } else if result == "" {
                    i = 56
                } else if result == "" {
                    i = 57
                } else if result == "" {
                    i = 58
                } else if result == "" {
                    i = 59
                } else if result == "" {
                    i = 60
                }
                }) {
                    Text("\(result)")
                }
            }
        }
        .listStyle(InsetListStyle())
        .searchable(text: $searchText, placement: .automatic)
        .navigationTitle("Search")
    }
    var classicSeriesBlock1: some View {
        Group {
        NavigationLink(destination: ClassicSeries1()) {
            Label("Series 1", systemImage: "1.circle")
        }
        NavigationLink(destination: ClassicSeries2()) {
            Label("Series 2", systemImage: "2.circle")
        }
        NavigationLink(destination: ClassicSeries3()) {
            Label("Series 3", systemImage: "3.circle")
        }
        NavigationLink(destination: ClassicSeries4()) {
            Label("Series 4", systemImage: "4.circle")
        }
        NavigationLink(destination: ClassicSeries5()) {
            Label("Series 5", systemImage: "5.circle")
        }
        NavigationLink(destination: ClassicSeries6()) {
            Label("Series 6", systemImage: "6.circle")
        }
        NavigationLink(destination: ClassicSeries7()) {
            Label("Series 7", systemImage: "7.circle")
        }
        NavigationLink(destination: ClassicSeries8()) {
            Label("Series 8", systemImage: "8.circle")
        }
        NavigationLink(destination: ClassicSeries9()) {
            Label("Series 9", systemImage: "9.circle")
        }
        NavigationLink(destination: ClassicSeries10()) {
            Label("Series 10", systemImage: "10.circle")
        }
    }
    }
    var classicSeriesBlock2: some View {
        Group {
        NavigationLink(destination: ClassicSeries11()) {
            Label("Series 11", systemImage: "11.circle")
        }
        NavigationLink(destination: ClassicSeries12()) {
            Label("Series 12", systemImage: "12.circle")
        }
        NavigationLink(destination: ClassicSeries13()) {
            Label("Series 13", systemImage: "13.circle")
        }
        NavigationLink(destination: ClassicSeries14()) {
            Label("Series 14", systemImage: "14.circle")
        }
        NavigationLink(destination: ClassicSeries15()) {
            Label("Series 15", systemImage: "15.circle")
        }
        NavigationLink(destination: ClassicSeries16()) {
            Label("Series 16", systemImage: "16.circle")
        }
        NavigationLink(destination: ClassicSeries17()) {
            Label("Series 17", systemImage: "17.circle")
        }
        NavigationLink(destination: ClassicSeries18()) {
            Label("Series 18", systemImage: "18.circle")
        }
        NavigationLink(destination: ClassicSeries19()) {
            Label("Series 19", systemImage: "19.circle")
        }
            NavigationLink(destination: ClassicSeries20()) {
                Label("Series 20", systemImage: "20.circle")
            }
        }
    }
    var classicSeriesBlock3: some View {
        Group {
        NavigationLink(destination: ClassicSeries21()) {
            Label("Series 21", systemImage: "21.circle")
        }
        NavigationLink(destination: ClassicSeries22()) {
            Label("Series 22", systemImage: "22.circle")
        }
        NavigationLink(destination: ClassicSeries23()) {
            Label("Series 23", systemImage: "23.circle")
        }
        NavigationLink(destination: ClassicSeries24()) {
            Label("Series 24", systemImage: "24.circle")
        }
        NavigationLink(destination: ClassicSeries25()) {
            Label("Series 25", systemImage: "25.circle")
        }
        NavigationLink(destination: ClassicSeries26()) {
            Label("Series 26", systemImage: "26.circle")
        }
        }
    }
    var newSeriesBlock1: some View {
        Group {
        NavigationLink(destination: NewSeries1()) {
            Label("Series 1", systemImage: "1.circle")
        }
        NavigationLink(destination: NewSeries2()) {
            Label("Series 2", systemImage: "2.circle")
        }
        NavigationLink(destination: NewSeries3()) {
            Label("Series 3", systemImage: "3.circle")
        }
        NavigationLink(destination: NewSeries4()) {
            Label("Series 4", systemImage: "4.circle")
        }
        NavigationLink(destination: NewSeries5()) {
            Label("Series 5", systemImage: "5.circle")
        }
        NavigationLink(destination: NewSeries6()) {
            Label("Series 6", systemImage: "6.circle")
        }
        NavigationLink(destination: NewSeries7()) {
            Label("Series 7", systemImage: "7.circle")
        }
        NavigationLink(destination: NewSeries8()) {
            Label("Series 8", systemImage: "8.circle")
        }
        NavigationLink(destination: NewSeries9()) {
            Label("Series 9", systemImage: "9.circle")
        }
        NavigationLink(destination: NewSeries10()) {
            Label("Series 10", systemImage: "10.circle")
        }
    }
    }
    var newSeriesBlock2: some View {
        Group {
        NavigationLink(destination: NewSeries11()) {
            Label("Series 11", systemImage: "11.circle")
        }
        NavigationLink(destination: NewSeries12()) {
            Label("Series 12", systemImage: "12.circle")
        }
        NavigationLink(destination: NewSeries13()) {
            Label("Series 13", systemImage: "13.circle")
        }
        }
    }
    var setting: some View {
        NavigationView {
        if horizontalSizeClass == .regular {
                Form {
                    Section(header: Label("Misc.", systemImage: "ellipsis.circle"), footer: Text("© Mark Howard 2022, All Rights And Images Owned By The BBC")) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("1.3")
                    }
                    HStack {
                        Text("Build")
                        Spacer()
                        Text("1")
                    }
                    HStack {
                        Button(action: {self.isShowingMailView.toggle()}) {
                            Text("Send Feedback")
                        }
                        .sheet(isPresented: $isShowingMailView) {
                            MailView(isShowing: self.$isShowingMailView, result: self.$result)
                        }
                    }
            }
                }
                .navigationTitle("Settings")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {self.showingSettings = false}) {
                            Text("Done")
                        }
                    }
                }
        } else {
                Form {
                    Section(header: Label("Misc.", systemImage: "ellipsis.circle"), footer: Text("© Mark Howard 2022, All Rights And Images Owned By The BBC")) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("1.3")
                    }
                    HStack {
                        Text("Build")
                        Spacer()
                        Text("1")
                    }
                    HStack {
                        Button(action: {self.isShowingMailView.toggle()}) {
                            Text("Send Feedback")
                        }
                        .sheet(isPresented: $isShowingMailView) {
                            MailView(isShowing: self.$isShowingMailView, result: self.$result)
                        }
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

struct MailView: UIViewControllerRepresentable {

    @Binding var isShowing: Bool
    @Binding var result: Result<MFMailComposeResult, Error>?

    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {

        @Binding var isShowing: Bool
        @Binding var result: Result<MFMailComposeResult, Error>?

        init(isShowing: Binding<Bool>,
             result: Binding<Result<MFMailComposeResult, Error>?>) {
            _isShowing = isShowing
            _result = result
        }

        func mailComposeController(_ controller: MFMailComposeViewController,
                                   didFinishWith result: MFMailComposeResult,
                                   error: Error?) {
            defer {
                isShowing = false
            }
            guard error == nil else {
                self.result = .failure(error!)
                return
            }
            self.result = .success(result)
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(isShowing: $isShowing,
                           result: $result)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<MailView>) -> MFMailComposeViewController {
        let vc = MFMailComposeViewController()
        vc.mailComposeDelegate = context.coordinator
        return vc
    }

    func updateUIViewController(_ uiViewController: MFMailComposeViewController,
                                context: UIViewControllerRepresentableContext<MailView>) {

    }
}
