//
//  ContentView.swift
//  DW Episode Guide watchOS WatchKit Extension
//
//  Created by Mark Howard on 11/06/2022.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State var tabSelection = 1
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
    var body: some View {
        TabView(selection: $tabSelection) {
            NavigationView {
                List {
                    classicSeriesBlock1
                    classicSeriesBlock2
                    classicSeriesBlock3
                }
                .navigationTitle("Classic Series")
            }
            .tag(1)
            NavigationView {
                List {
                    newSeriesBlock1
                    newSeriesBlock2
                }
                .navigationTitle("New Series")
            }
            .tag(2)
            NavigationView {
                search
            }
            .tag(3)
            NavigationView {
                setting
                    .navigationTitle("Settings")
            }
                .tag(4)
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
                    } else if result == "The Web Planet" {
                        i = 13
                    } else if result == "The Crusade" {
                        i = 14
                    } else if result == "The Space Museum" {
                        i = 15
                    } else if result == "The Chase" {
                        i = 16
                    } else if result == "The Time Meddler" {
                        i = 17
                    } else if result == "Galaxy 4" {
                        i = 18
                    } else if result == "Mission To The Unknown" {
                        i = 19
                    } else if result == "The Myth Makers" {
                        i = 20
                    } else if result == "The Daleks' Master Plan" {
                        i = 21
                    } else if result == "The Massacre" {
                        i = 22
                    } else if result == "The Ark" {
                        i = 23
                    } else if result == "The Celestial Toymaker" {
                        i = 24
                    } else if result == "The Gunfighters" {
                        i = 25
                    } else if result == "The Savages" {
                        i = 26
                    } else if result == "The War Machines" {
                        i = 27
                    } else if result == "The Smugglers" {
                        i = 28
                    } else if result == "The Tenth Planet" {
                        i = 29
                    } else if result == "The Power Of The Daleks" {
                        i = 30
                    } else if result == "The Highlanders" {
                        i = 31
                    } else if result == "The Underwater Menace" {
                        i = 32
                    } else if result == "The Moonbase" {
                        i = 33
                    } else if result == "The Macra Terror" {
                        i = 34
                    } else if result == "The Faceless Ones" {
                        i = 35
                    } else if result == "The Evil Of The Daleks" {
                        i = 36
                    } else if result == "The Tomb Of The Cybermen" {
                        i = 37
                    } else if result == "The Abominable Snowmen" {
                        i = 38
                    } else if result == "The Ice Warriors" {
                        i = 39
                    } else if result == "The Enemy Of The World" {
                        i = 40
                    } else if result == "The Web Of Fear" {
                        i = 41
                    } else if result == "Fury From The Deep" {
                        i = 42
                    } else if result == "The Wheel In Space" {
                        i = 43
                    } else if result == "The Dominators" {
                        i = 44
                    } else if result == "The Mind Robber" {
                        i = 45
                    } else if result == "The Invasion" {
                        i = 46
                    } else if result == "The Krotons" {
                        i = 47
                    } else if result == "The Seeds Of Death" {
                        i = 48
                    } else if result == "The Space Pirates" {
                        i = 49
                    } else if result == "The War Games" {
                        i = 50
                    } else if result == "Spearhead From Space" {
                        i = 51
                    } else if result == "Doctor Who And The Silurians" {
                        i = 52
                    } else if result == "The Ambassadors Of Death" {
                        i = 53
                    } else if result == "Inferno" {
                        i = 54
                    } else if result == "Terror Of The Autons" {
                        i = 55
                    } else if result == "The Mind Of Evil" {
                        i = 56
                    } else if result == "The Claws Of Axos" {
                        i = 57
                    } else if result == "Colony In Space" {
                        i = 58
                    } else if result == "The Daemons" {
                        i = 59
                    } else if result == "Day Of The Daleks" {
                        i = 60
                    } else if result == "The Curse Of Peladon" {
                        i = 61
                    } else if result == "The Sea Devils" {
                        i = 62
                    } else if result == "The Mutants" {
                        i = 63
                    } else if result == "The Time Monster" {
                        i = 64
                    } else if result == "The Three Doctors" {
                        i = 65
                    } else if result == "Carnival Of Monsters" {
                        i = 66
                    } else if result == "Frontier In Space" {
                        i = 67
                    } else if result == "Planet Of The Daleks" {
                        i = 68
                    } else if result == "The Green Death" {
                        i = 69
                    } else if result == "The Time Warrior" {
                        i = 70
                    } else if result == "Invasion Of The Daleks" {
                        i = 71
                    } else if result == "Death To The Daleks" {
                        i = 72
                    } else if result == "The Monster Of Peladon" {
                        i = 73
                    } else if result == "Planet Of The Spiders" {
                        i = 74
                    } else if result == "Robot" {
                        i = 75
                    } else if result == "The Ark In Space" {
                        i = 76
                    } else if result == "The Sontaran Experiment" {
                        i = 77
                    } else if result == "Genesis Of The Daleks" {
                        i = 78
                    } else if result == "Revenge Of The Cybermen" {
                        i = 79
                    } else if result == "Terror Of The Zygons" {
                        i = 80
                    } else if result == "Planet Of Evil" {
                        i = 81
                    } else if result == "Pyramids Of Mars" {
                        i = 82
                    } else if result == "The Android Invasion" {
                        i = 83
                    } else if result == "The Brain Of Morbius" {
                        i = 84
                    } else if result == "The Seeds Of Doom" {
                        i = 85
                    } else if result == "The Masque Of Mandragora" {
                        i = 86
                    } else if result == "The Hand Of Fear" {
                        i = 87
                    } else if result == "The Deadly Assassin" {
                        i = 88
                    } else if result == "The Face Of Evil" {
                        i = 89
                    } else if result == "The Robots Of Death" {
                        i = 90
                    } else if result == "The Talons Of Weng-Chiang" {
                        i = 91
                    } else if result == "Horror Of Fang Rock" {
                        i = 92
                    } else if result == "The Invisible Enemy" {
                        i = 93
                    } else if result == "Image Of The Fendahl" {
                        i = 94
                    } else if result == "The Sun Makers" {
                        i = 95
                    } else if result == "Underworld" {
                        i = 96
                    } else if result == "The Invasion Of Time" {
                        i = 97
                    } else if result == "The Ribos Operation" {
                        i = 98
                    } else if result == "The Pirate Planet" {
                        i = 99
                    } else if result == "The Stones Of Blood" {
                        i = 100
                    } else if result == "The Androids Of Tara" {
                        i = 101
                    } else if result == "The Power Of Kroll" {
                        i = 102
                    } else if result == "The Armageddon Factor" {
                        i = 103
                    } else if result == "Destiny Of The Daleks" {
                        i = 104
                    } else if result == "City Of Death" {
                        i = 105
                    } else if result == "The Creature From The Pit" {
                        i = 106
                    } else if result == "Nightmare Of Eden" {
                        i = 107
                    } else if result == "The Horns Of Nimon" {
                        i = 108
                    } else if result == "Shada" {
                        i = 109
                    } else if result == "The Leisure Hive" {
                        i = 110
                    } else if result == "Meglos" {
                        i = 111
                    } else if result == "Full Circle" {
                        i = 112
                    } else if result == "State Of Decay" {
                        i = 113
                    } else if result == "Warriors' Gate" {
                        i = 114
                    } else if result == "The Keeper Of Traken" {
                        i = 115
                    } else if result == "Logopolis" {
                        i = 116
                    } else if result == "Castrovalva" {
                        i = 117
                    } else if result == "Four To Doomsday" {
                        i = 118
                    } else if result == "Kinda" {
                        i = 119
                    } else if result == "The Visitation" {
                        i = 120
                    } else if result == "Black Orchid" {
                        i = 121
                    } else if result == "Earthshock" {
                        i = 122
                    } else if result == "Time-Flight" {
                        i = 123
                    } else if result == "Arc Of Infinity" {
                        i = 124
                    } else if result == "Snakedance" {
                        i = 125
                    } else if result == "Mawdryn Undead" {
                        i = 126
                    } else if result == "Terminus" {
                        i = 127
                    } else if result == "Enlightenment" {
                        i = 128
                    } else if result == "The King's Demons" {
                        i = 129
                    } else if result == "The Five Doctors" {
                        i = 130
                    } else if result == "Warriors Of The Deep" {
                        i = 131
                    } else if result == "The Awakening" {
                        i = 132
                    } else if result == "Frontios" {
                        i = 133
                    } else if result == "Resurrection Of The Daleks" {
                        i = 134
                    } else if result == "Planet Of Fire" {
                        i = 135
                    } else if result == "The Caves Of Androzani" {
                        i = 136
                    } else if result == "The Twin Dilemma" {
                        i = 137
                    } else if result == "Attack Of The Cybermen" {
                        i = 138
                    } else if result == "Vengeance On Varos" {
                        i = 139
                    } else if result == "The Mark Of The Rani" {
                        i = 140
                    } else if result == "The Two Doctors" {
                        i = 141
                    } else if result == "Timelash" {
                        i = 142
                    } else if result == "Revelation Of The Daleks" {
                        i = 143
                    } else if result == "The Mysterious Planet" {
                        i = 144
                    } else if result == "Mindwarp" {
                        i = 145
                    } else if result == "Terror Of The Vervoids" {
                        i = 146
                    } else if result == "The Ultimate Foe" {
                        i = 147
                    } else if result == "Time And The Rani" {
                        i = 148
                    } else if result == "Paradise Towers" {
                        i = 149
                    } else if result == "Delta And The Bannermen" {
                        i = 150
                    } else if result == "Dragonfire" {
                        i = 151
                    } else if result == "Remembrance Of The Daleks" {
                        i = 152
                    } else if result == "The Happiness Patrol" {
                        i = 153
                    } else if result == "Silver Nemesis" {
                        i = 154
                    } else if result == "The Greatest Show In The Galaxy" {
                        i = 155
                    } else if result == "Battlefield" {
                        i = 156
                    } else if result == "Ghost Light" {
                        i = 157
                    } else if result == "The Curse Of Fenric" {
                        i = 158
                    } else if result == "Survival" {
                        i = 159
                    } else if result == "TV Movie" {
                        i = 160
                    } else if result == "Rose" {
                        i = 161
                    } else if result == "The End Of The World" {
                        i = 162
                    } else if result == "The Unquiet Dead" {
                        i = 163
                    } else if result == "Aliens Of London" {
                        i = 164
                    } else if result == "World War Three" {
                        i = 165
                    } else if result == "Dalek" {
                        i = 166
                    } else if result == "The Long Game" {
                        i = 167
                    } else if result == "Father's Day" {
                        i = 168
                    } else if result == "The Empty Child" {
                        i = 169
                    } else if result == "The Doctor Dances" {
                        i = 170
                    } else if result == "Boom Town" {
                        i = 171
                    } else if result == "Bad Wolf" {
                        i = 172
                    } else if result == "The Parting Of The Ways" {
                        i = 173
                    } else if result == "The Christmas Invasion" {
                        i = 174
                    } else if result == "New Earth" {
                        i = 175
                    } else if result == "Tooth And Claw" {
                        i = 176
                    } else if result == "School Reunion" {
                        i = 177
                    } else if result == "The Girl In The Fireplace" {
                        i = 178
                    } else if result == "Rise Of The Cybermen" {
                        i = 179
                    } else if result == "The Age Of Steel" {
                        i = 180
                    } else if result == "The Idiot's Lantern" {
                        i = 181
                    } else if result == "The Impossible Planet" {
                        i = 182
                    } else if result == "The Satan Pit" {
                        i = 183
                    } else if result == "Love & Monsters" {
                        i = 184
                    } else if result == "Fear Her" {
                        i = 185
                    } else if result == "Army Of Ghosts" {
                        i = 186
                    } else if result == "Doomsday" {
                        i = 187
                    } else if result == "The Runaway Bride" {
                        i = 188
                    } else if result == "Smith And Jones" {
                        i = 189
                    } else if result == "The Shakespeare Code" {
                        i = 190
                    } else if result == "Gridlock" {
                        i = 191
                    } else if result == "Daleks In Manhattan" {
                        i = 192
                    } else if result == "Evolution Of The Daleks" {
                        i = 193
                    } else if result == "The Lazarus Experiment" {
                        i = 194
                    } else if result == "42" {
                        i = 195
                    } else if result == "Human Nature" {
                        i = 196
                    } else if result == "The Family Of Blood" {
                        i = 197
                    } else if result == "Blink" {
                        i = 198
                    } else if result == "Utopia" {
                        i = 199
                    } else if result == "The Sound Of Drums" {
                        i = 200
                    } else if result == "Last Of The Time Lords" {
                        i = 201
                    } else if result == "Voyage Of The Damned" {
                        i = 202
                    } else if result == "Partners In Crime" {
                        i = 203
                    } else if result == "The Fires Of Pompeii" {
                        i = 204
                    } else if result == "Planet Of The Ood" {
                        i = 205
                    } else if result == "The Sontaran Stratagem" {
                        i = 206
                    } else if result == "The Poison Sky" {
                        i = 207
                    } else if result == "The Doctor's Daughter" {
                        i = 208
                    } else if result == "The Unicorn And The Wasp" {
                        i = 209
                    } else if result == "Silence In The Library" {
                        i = 210
                    } else if result == "Forest Of The Dead" {
                        i = 211
                    } else if result == "Midnight" {
                        i = 212
                    } else if result == "Turn Left" {
                        i = 213
                    } else if result == "The Stolen Earth" {
                        i = 214
                    } else if result == "Journey's End" {
                        i = 215
                    } else if result == "The Next Doctor" {
                        i = 216
                    } else if result == "Planet Of The Dead" {
                        i = 217
                    } else if result == "The Waters Of Mars" {
                        i = 218
                    } else if result == "The End Of Time - Part 1" {
                        i = 219
                    } else if result == "The End Of Time - Part 2" {
                        i = 220
                    } else if result == "The Eleventh Hour" {
                        i = 221
                    } else if result == "The Beast Below" {
                        i = 222
                    } else if result == "Victory Of The Daleks" {
                        i = 223
                    } else if result == "The Time Of Angels" {
                        i = 224
                    } else if result == "Flesh And Stone" {
                        i = 225
                    } else if result == "The Vampires Of Venice" {
                        i = 226
                    } else if result == "Amy's Choice" {
                        i = 227
                    } else if result == "The Hungry Earth" {
                        i = 228
                    } else if result == "Cold Blood" {
                        i = 229
                    } else if result == "Vincent And The Doctor" {
                        i = 230
                    } else if result == "The Lodger" {
                        i = 231
                    } else if result == "The Pandorica Opens" {
                        i = 232
                    } else if result == "The Big Bang" {
                        i = 233
                    } else if result == "A Christmas Carol" {
                        i = 234
                    } else if result == "The Impossible Astronaut" {
                        i = 235
                    } else if result == "Day Of The Moon" {
                        i = 236
                    } else if result == "The Curse Of The Black Spot" {
                        i = 237
                    } else if result == "The Doctor's Wife" {
                        i = 238
                    } else if result == "The Rebel Flesh" {
                        i = 239
                    } else if result == "The Almost People" {
                        i = 240
                    } else if result == "A Good Man Goes To War" {
                        i = 241
                    } else if result == "Let's Kill Hitler" {
                        i = 242
                    } else if result == "Night Terrors" {
                        i = 243
                    } else if result == "The Girl Who Waited" {
                        i = 244
                    } else if result == "The God Complex" {
                        i = 245
                    } else if result == "Closing Time" {
                        i = 246
                    } else if result == "The Wedding Of River Song" {
                        i = 247
                    } else if result == "The Doctor, The Widow And The Wardrobe" {
                        i = 248
                    } else if result == "Asylum Of The Daleks" {
                        i = 249
                    } else if result == "Dinosaurs On A Spaceship" {
                        i = 250
                    } else if result == "A Town Called Mercy" {
                        i = 251
                    } else if result == "The Power Of Three" {
                        i = 252
                    } else if result == "The Angels Take Manhattan" {
                        i = 253
                    } else if result == "The Snowmen" {
                        i = 254
                    } else if result == "The Bells Of Saint John" {
                        i = 255
                    } else if result == "The Rings Of Akhaten" {
                        i = 256
                    } else if result == "Cold War" {
                        i = 257
                    } else if result == "Hide" {
                        i = 258
                    } else if result == "Journey To The Centre Of The TARDIS" {
                        i = 259
                    } else if result == "The Crimson Horror" {
                        i = 260
                    } else if result == "Nightmare In Silver" {
                        i = 261
                    } else if result == "The Name Of The Doctor" {
                        i = 262
                    } else if result == "The Day Of The Doctor" {
                        i = 263
                    } else if result == "The Time Of The Doctor" {
                        i = 264
                    } else if result == "Deep Breath" {
                        i = 265
                    } else if result == "Into The Dalek" {
                        i = 266
                    } else if result == "Robot Of Sherwood" {
                        i = 267
                    } else if result == "Listen" {
                        i = 268
                    } else if result == "Time Heist" {
                        i = 269
                    } else if result == "The Caretaker" {
                        i = 270
                    } else if result == "Kill The Moon" {
                        i = 271
                    } else if result == "Mummy On The Orient Express" {
                        i = 272
                    } else if result == "Flatline" {
                        i = 273
                    } else if result == "In The Forest Of The Night" {
                        i = 274
                    } else if result == "Dark Water" {
                        i = 275
                    } else if result == "Death In Heaven" {
                        i = 276
                    } else if result == "Last Christmas" {
                        i = 277
                    } else if result == "The Magician's Apprentice" {
                        i = 278
                    } else if result == "The Witch's Familiar" {
                        i = 279
                    } else if result == "Under The Lake" {
                        i = 280
                    } else if result == "Before The Flood" {
                        i = 281
                    } else if result == "The Girl Who Died" {
                        i = 282
                    } else if result == "The Woman Who Lived" {
                        i = 283
                    } else if result == "The Zygon Invasion" {
                        i = 284
                    } else if result == "The Zygon Inversion" {
                        i = 285
                    } else if result == "Sleep No More" {
                        i = 286
                    } else if result == "Face The Raven" {
                        i = 287
                    } else if result == "Heaven Sent" {
                        i = 288
                    } else if result == "Hell Bent" {
                        i = 289
                    } else if result == "The Husbands Of River Song" {
                        i = 290
                    } else if result == "The Return Of Doctor Mysterio" {
                        i = 291
                    } else if result == "The Pilot" {
                        i = 292
                    } else if result == "Smile" {
                        i = 293
                    } else if result == "Thin Ice" {
                        i = 294
                    } else if result == "Knock Knock" {
                        i = 295
                    } else if result == "Oxygen" {
                        i = 296
                    } else if result == "Extremis" {
                        i = 297
                    } else if result == "The Pyramid At The End Of The World" {
                        i = 298
                    } else if result == "The Lie Of The Land" {
                        i = 299
                    } else if result == "Empress Of Mars" {
                        i = 300
                    } else if result == "The Eaters Of Light" {
                        i = 301
                    } else if result == "World Enough And Time" {
                        i = 302
                    } else if result == "The Doctor Falls" {
                        i = 303
                    } else if result == "Twice Upon A Time" {
                        i = 304
                    } else if result == "The Woman Who Fell To Earth" {
                        i = 305
                    } else if result == "The Ghost Monument" {
                        i = 306
                    } else if result == "Rosa" {
                        i = 307
                    } else if result == "Arachnids In The UK" {
                        i = 308
                    } else if result == "The Tsuranga Conundrum" {
                        i = 309
                    } else if result == "Demons Of The Punjab" {
                        i = 310
                    } else if result == "Kerblam!" {
                        i = 311
                    } else if result == "The Witchfinders" {
                        i = 312
                    } else if result == "It Takes You Away" {
                        i = 313
                    } else if result == "The Battle Of Ranskoor Av Kolos" {
                        i = 314
                    } else if result == "Resolution" {
                        i = 315
                    } else if result == "Spyfall - Part 1" {
                        i = 316
                    } else if result == "Spyfall - Part 2" {
                        i = 317
                    } else if result == "Orphan 55" {
                        i = 318
                    } else if result == "Nikola Tesla's Night Of Terror" {
                        i = 319
                    } else if result == "Fugitive Of The Judoon" {
                        i = 320
                    } else if result == "Praxeus" {
                        i = 321
                    } else if result == "Can You Hear Me?" {
                        i = 322
                    } else if result == "The Haunting Of Villa Diodati" {
                        i = 323
                    } else if result == "Ascension Of The Cybermen" {
                        i = 324
                    } else if result == "The Timeless Children" {
                        i = 325
                    } else if result == "Revolution Of The Daleks" {
                        i = 326
                    } else if result == "The Halloween Apocalypse" {
                        i = 327
                    } else if result == "War Of The Sontarans" {
                        i = 328
                    } else if result == "Once, Upon Time" {
                        i = 329
                    } else if result == "Village Of The Angels" {
                        i = 330
                    } else if result == "Survivors Of The Flux" {
                        i = 331
                    } else if result == "The Vanquishers" {
                        i = 332
                    } else if result == "Eve Of The Daleks" {
                        i = 333
                    } else if result == "Legend Of The Sea Devils" {
                        i = 334
                    }
                    }) {
                    Text("\(result)")
                }
            }
        }
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
                    Text("2")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
