//
//  ContentView.swift
//  DW Episode Guide tvOS
//
//  Created by Mark Howard on 07/07/2022.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State var tabSelection = 1
    @State var searchText = ""
    let epNames = ["An Unearthly Child", "The Daleks", "The Edge Of Destruction", "Marco Polo", "The Keys Of Marinus", "The Aztecs", "The Sensorites", "The Reign Of Terror", "Planet Of Giants", "The Dalek Invasion Of Earth", "The Rescue", "The Romans", "The Web Planet", "The Crusade", "The Space Museum", "The Chase", "The Time Meddler", "Galaxy 4", "Mission To The Unknown", "The Myth Makers", "The Daleks' Master Plan", "The Massacre", "The Ark", "The Celestial Toymaker", "The Gunfighters", "The Savages", "The War Machines", "The Smugglers", "The Tenth Planet", "The Power Of The Daleks", "The Highlanders", "The Underwater Menace", "The Moonbase", "The Macra Terror", "The Faceles Ones", "The Evil Of The Daleks", "The Tomb Of The Cybermen", "The Abominable Snowmen", "The Ice Warriors", "The Enemy Of The World", "The Web Of Fear", "Fury From The Deep", "The Wheel In Space", "The Mind Robber", "The Invasion", "The Krotons", "The Seeds Of Death", "The Space Pirates", "The War Games", "Spearhead From Space", "Doctor Who And The Silurians", "The Ambassadors Of Death", "Inferno", "Terror Of The Autons", "The Mind Of Evil", "The Claws Of Axos", "Colony In Space", "The Daemons", "Day Of The Daleks", "The Curse Of Peladon", "The Sea Devils", "The Mutants", "The Time Monster", "The Three Doctors", "Carnival Of Monsters", "Frontier In Space", "Planet Of The Daleks", "The Green Death", "The Time Warrior", "Invasion Of The Dinosaurs", "Death To The Daleks", "The Monster Of Peladon", "Planet Of The Spiders", "Robot", "The Ark In Space", "The Sontaran Experiment", "Genesis Of The Daleks", "Revenge Of The Cybermen", "Terror Of The Zygons", "Planet Of Evil", "Pyramids Of Mars", "The Android Invasion", "The Brain Of Morbius", "The Seeds Of Doom", "The Masque Of Mandragora", "The Hand Of Fear", "The Deadly Assassin", "The Face Of Evil", "The Robots Of Death", "The Talons Of Weng-Chiang", "Horror Of Fang Rock", "The Invisible Enemy", "Image Of The Fendahl", "The Sun Makers", "Underworld", "The Invasion Of Time", "The Ribos Operation", "The Pirate Planet", "The Stones Of Blood", "The Androids Of Tara", "The Power Of Kroll", "The Armageddon Factor", "Destiny Of The Daleks", "City Of Death", "The Creature From The Pit", "Nightmare Of Eden", "The Horns Of Nimon", "Shada", "The Leisure Hive", "Meglos", "Full Circle", "State Of Decay", "Warriors' Gate", "The Keeper Of Traken", "Logopolis", "Castrovalva", "Four To Doomsday", "Kinda", "The Visitation", "Black Orchid", "Earthshock", "Time-Flight", "Arc Of Infinity", "Snakedance", "Mawdryn Undead", "Terminus", "Enlightenment", "The King's Demons", "The Five Doctors", "Warriors Of The Deep", "The Awakening", "Frontios", "Resurrection Of The Daleks", "Planet Of Fire", "The Caves Of Androzani", "The Twin Dilemma", "Attack Of The Cybermen", "Vengeance On Varos", "The Mark Of The Rani", "The Two Doctors", "Timelash", "Revelation Of The Daleks", "The Mysterious Planet", "Mindwarp", "Terror Of The Vervoids", "The Ultimate Foe", "Time And The Rani", "Paradise Towers", "Delta And The Bannermen", "Dragonfire", "Remembrance Of The Daleks", "The  Happiness Patrol", "Silver Nemesis", "The Greatest Show In The Galaxy", "Battlefield", "Ghost Light", "The Curse Of Fenric", "Survival", "TV Movie", "Rose", "The End Of The World", "The Unquiet Dead", "Aliens Of London", "World War Three", "Dalek", "The Long Game", "Father's Day", "The Empty Child", "The Doctor Dances", "Boom Town", "Bad Wolf", "The Parting Of The Ways", "The Christmas Invasion", "New Earth", "Tooth And Claw", "School Reunion", "The Girl In The Fireplace", "Rise Of The Cybermen", "The Age Of Steel", "The Idiot's Lantern", "The Impossible Planet", "The Satan Pit", "Love & Monsters", "Fear Her", "Army Of Ghosts", "Doomsday", "The Runaway Bride", "Smith And Jones", "The Shakespeare Code", "Gridlock", "Daleks In Manhattan", "Evolution Of The Daleks", "The Lazarus Experiment", "42", "Human Nature", "The Family Of Blood", "Blink", "Utopia", "The Sound Of Drums", "Last Of The Time Lords", "Voyage Of The Damned", "Partners In Crime", "The Fires Of Pompeii", "Planet Of The Ood", "The Sontaran Stratagem", "The Poison Sky", "The Doctor's Daughter", "The Unicorn And The Wasp", "Silence In The Library", "Forest Of The Dead", "Midnight", "Turn Left", "The Stolen Earth", "Journey's End", "The Next Doctor", "Planet Of The Dead", "The Waters Of Mars", "The End Of Time - Part 1", "The End Of Time Part 2", "The Eleventh Hour", "The Beast Below", "Victory Of The Daleks", "The Time Of The Angels", "Flesh And Stone", "The Vampires Of Venice", "Amy's Choice", "The Hungry Earth", "Cold Blood", "Vincent And The Doctor", "The Lodger", "The Pandorica Opens", "The Big Bang", "A Christmas Carol", "The Impossible Astronaut", "Day Of The Moon", "The Curse Of The Black Spot", "The Doctor's Wife", "The Rebel Flesh", "The Almost People", "A Good Man Goes To War", "Let's Kill Hitler", "Night Terrors", "The Girl Who Waited", "The God Complex", "Closing Time", "The Wedding Of River Song", "The Doctor, The Widow And The Wardrobe", "Asylum Of The Daleks", "Dinosaurs On A Spaceship", "A Town Called Mercy", "The Power Of Three", "The Angels Take Manhattan", "The Snowmen", "The Bells Of Saint John", "The Rings Of Akhaten", "Cold War", "Hide", "Journey To The Centre Of The TARDIS", "The Crimson Horror", "Nightmare In Silver", "The Name Of The Doctor", "The Day Of The Doctor", "The Time Of The Doctor", "Deep Breath", "Into The Dalek", "Robot Of Sherwood", "Listen", "Time Heist", "The Caretaker", "Kill The Moon", "Mummy On The Orient Express", "Flatline", "In The Forest Of The Night", "Dark Water", "Death In Heaven", "Last Christmas", "The Magician's Apprentice", "The Witch's Familiar", "Under The Lake", "Before The Flood", "The Girl Who Died", "The Woman Who Lived", "The Zygon Invasion", "The Zygon Inversion", "Sleep No More", "Face The Raven", "Heaven Sent", "Hell Bent", "The Husbands Of River Song", "The Return Of Doctor Mysterio", "The Pilot", "Smile", "Thin Ice", "Knock Knock", "Oxygen", "Extremis", "The Pyramid At The End Of The World", "The Lie Of The Land", "Empress Of Mars", "The Eaters Of Light", "World Enough And Time", "The Doctor Falls", "Twice Upon A Time", "The Woman Who Fell To Earth", "The Ghost Monument", "Rosa", "Arachnids In The UK", "The Tsuranga Conundrum", "Demons Of The Punjab", "Kerblam!", "The Witchfinders", "It Takes You Away", "The Battle Of Ranskoor Av Kolos", "Resolution", "Spyfall - Part 1", "Spyfall - Part 2", "Orphan 55", "Nikola Tesla's Night Of Terror", "Fugitive Of The Judoon", "Praxeus", "Can You Hear Me?", "The Haunting Of Villa ￼Diodati", "Ascension Of The Cybermen", "The Timeless Children", "Revolution Of The Daleks", "The Halloween Apocalypse", "War Of The Sontarans", "Once, Upon Time", "Village Of The Angels", "Survivors Of The Flux", "The Vanquishers", "Eve Of The Daleks", "Legend Of The Sea Devils"]
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
            .tabItem {
                Image(systemName: "c.circle")
                Text("Classic")
            }
            NavigationView {
                List {
                    newSeriesBlock1
                    newSeriesBlock2
                }
                .navigationTitle("New Series")
            }
            .tag(2)
            .tabItem {
                Image(systemName: "n.circle")
                Text("New")
            }
            search
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
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    var searchResults: [String] {
            if searchText.isEmpty {
                return epNames
            } else {
                return epNames.filter { $0.contains(searchText) }
            }
        }
    var search: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                        navLink
                }
            }
    }
        .searchable(text: $searchText, placement: .automatic) {
            ForEach(searchResults, id: \.self) { result in
                Text("\(result)").searchCompletion("\(result)")
        }
    }
    }
    /*var group1: some View {
        Group {
        Group {
if name == "An Unearthly Child" {
AnUnearthlyChild()
}
if name == "The Daleks" {
TheDaleks()
}
if name == "The Edge Of Destruction" {
TheEdgeOfDestruction()
}
if name == "Marco Polo" {
MarcoPolo()
}
if name == "The Keys Of Marinus" {
TheKeysOfMarinus()
}
if name == "The Aztecs" {
TheAztecs()
}
if name == "The Sensorites" {
TheSensorites()
}
if name == "The Reign Of Terror" {
TheReignOfTerror()
}
if name == "Planet Of Giants" {
PlanetOfGiants()
}
if name == "The Dalek Invasion Of Earth" {
TheDalekInvasionOfEarth()
}
}
       Group {
if name == "The Rescue" {
TheRescue()
}
if name == "The Romans" {
TheRomans()
}
if name == "The Web Planet" {
TheWebPlanet()
}
if name == "The Crusade" {
TheCrusade()
}
if name == "The Space Museum" {
TheSpaceMuseum()
}
if name == "The Chase" {
TheChase()
}
if name == "The Time Meddler" {
TheTimeMeddler()
}
if name == "Galaxy 4" {
Galaxy4()
}
if name == "Mission To The Unknown" {
MissionToTheUnknown()
}
if name == "The Myth Makers" {
TheMythMakers()
}
}
       Group {
if name == "The Daleks' Master Plan" {
TheDaleksMasterPlan()
}
if name == "The Massacre" {
TheMassacre()
}
if name == "The Ark" {
TheArk()
}
if name == "The Celestial Toymaker" {
TheCelestialToymaker()
}
if name == "The Gunfighters" {
TheGunfighters()
}
if name == "The Savages" {
TheSavages()
}
if name == "The War Machines" {
TheWarMachines()
}
if name == "The Smugglers" {
TheSmugglers()
}
if name == "The Tenth Planet" {
TheTenthPlanet()
}
if name == "The Power Of The Daleks" {
ThePowerOfTheDaleks()
}
}
       Group {
if name == "The Highlanders" {
TheHighlanders()
}
if name == "The Underwater Menace" {
TheUnderwaterMenace()
}
if name == "The Moonbase" {
TheMoonbase()
}
if name == "The Macra Terror" {
TheMacraTerror()
}
if name == "The Faceless Ones" {
TheFacelessOnes()
}
if name == "The Evil Of The Daleks" {
TheEvilOfTheDaleks()
}
if name == "The Tomb Of The Cybermen" {
TheTombOfTheCybermen()
}
if name == "The Abominable Snowmen" {
TheAbominableSnowmen()
}
if name == "The Ice Warriors" {
TheIceWarriors()
}
if name == "The Enemy Of The World" {
TheEnemyOfTheWorld()
}
}
       Group {
if name == "The Web Of Fear" {
TheWebOfFear()
}
if name == "Fury From The Deep" {
FuryFromTheDeep()
}
if name == "The Wheel In Space" {
TheWheelInSpace()
}
if name == "The Dominators" {
TheDominators()
}
if name == "The Mind Robber" {
TheMindRobber()
}
if name == "The Invasion" {
TheInvasion()
}
if name == "The Krotons" {
TheKrotons()
}
if name == "The Seeds Of Death" {
TheSeedsOfDeath()
}
if name == "The Space Pirates" {
TheSpacePirates()
}
if name == "The War Games" {
TheWarGames()
}
}
       Group {
if name == "Spearhead From Space" {
SpearheadFromSpace()
}
if name == "Doctor Who And The Silurians" {
AndTheSilurians()
}
if name == "The Ambassadors Of Death" {
TheAmbassadorsOfDeath()
}
if name == "Inferno" {
Inferno()
}
if name == "Terror Of The Autons" {
TerrorOfTheAutons()
}
if name == "The Mind Of Evil" {
TheMindOfEvil()
}
if name == "The Claws Of Axos" {
TheClawsOfAxos()
}
if name == "Colony In Space" {
ColonyInSpace()
}
if name == "The Daemons" {
TheDaemons()
}
if name == "Day Of The Daleks" {
DayOfTheDaleks()
}
}
       Group {
if name == "The Curse Of Peladon" {
TheCurseOfPeladon()
}
if name == "The Sea Devils" {
TheSeaDevils()
}
if name == "The Mutants" {
TheMutants()
}
if name == "The Time Monster" {
TheTimeMonster()
}
if name == "The Three Doctors" {
TheThreeDoctors()
}
if name == "Carnival Of Monsters" {
CarnivalOfMonsters()
}
if name == "Frontier In Space" {
FrontierInSpace()
}
if name == "Planet Of The Daleks" {
PlanetOfTheDaleks()
}
if name == "The Green Death" {
TheGreenDeath()
}
if name == "The Time Warrior" {
TheTimeWarrior()
}
}
       Group {
if name == "Invasion Of The Dinosaurs" {
InvasionOfTheDinosaurs()
}
if name == "Death To The Daleks" {
DeathToTheDaleks()
}
if name == "The Monster Of Peladon" {
TheMonsterOfPeladon()
}
if name == "Planet Of The Spiders" {
PlanetOfTheSpiders()
}
if name == "Robot" {
Robot()
}
if name == "The Ark In Space" {
TheArkInSpace()
}
if name == "The Sontaran Experiment" {
TheSontaranExperiment()
}
if name == "Genesis Of The Daleks" {
GenesisOfTheDaleks()
}
if name == "Revenge Of The Cybermen" {
RevengeOfTheCybermen()
}
if name == "Terror Of The Zygons" {
TerrorOfTheZygons()
}
}
       Group {
if name == "Planet Of Evil" {
PlanetOfEvil()
}
if name == "Pyramids Of Mars" {
PyramidsOfMars()
}
if name == "The Android Invasion" {
TheAndroidInvasion()
}
if name == "The Brain Of Morbius" {
TheBrainOfMorbius()
}
if name == "The Seeds Of Doom" {
TheSeedsOfDoom()
}
if name == "The Masque Of Mandragora" {
TheMasqueOfMandragora()
}
if name == "The Hand Of Fear" {
TheHandOfFear()
}
if name == "The Deadly Assassin" {
TheDeadlyAssassin()
}
if name == "The Face Of Evil" {
TheFaceOfEvil()
}
if name == "The Robots Of Death" {
TheRobotsOfDeath()
}
}
       Group {
if name == "The Talons Of Weng-Chiang" {
TheTalonsOfWengChiang()
}
if name == "Horror Of Fang Rock" {
HorrorOfFangRock()
}
if name == "The Invisible Enemy" {
TheInvisibleEnemy()
}
if name == "Image Of The Fendahl" {
ImageOfTheFendahl()
}
if name == "The Sun Makers" {
TheSunMakers()
}
if name == "Underworld" {
Underworld()
}
if name == "The Invasion Of Time" {
TheInvasionOfTime()
}
if name == "The Ribos Operation" {
TheRibosOperation()
}
if name == "The Pirate Planet" {
ThePiratePlanet()
}
if name == "The Stones Of Blood" {
TheStonesOfBlood()
}
}
}
    }
    var group2: some View {
        Group {
        Group {
if name == "The Androids Of Tara" {
 TheAndroidsOfTara()
}
if name == "The Power Of Kroll" {
 ThePowerOfKroll()
}
if name == "The Armageddon Factor" {
 TheArmageddonFactor()
}
if name == "Destiny Of The Daleks" {
 DestinyOfTheDaleks()
}
if name == "City Of Death" {
 CityOfDeath()
}
if name == "The Creature From The Pit" {
 TheCreatureFromThePit()
}
if name == "Nightmare Of Eden" {
 NightmareOfEden()
}
if name == "The Horns Of Nimon" {
 TheHornsOfNimon()
}
if name == "Shada" {
 Shada()
}
if name == "The Leisure Hive" {
 TheLeisureHive()
}
}
        Group {
if name == "Meglos" {
 Meglos()
}
if name == "Full Circle" {
 FullCircle()
}
if name == "State Of Decay" {
 StateOfDecay()
}
if name == "Warriors' Gate" {
 WarriorsGate()
}
if name == "The Keeper Of Traken" {
 TheKeeperOfTraken()
}
if name == "Logopolis" {
 Logopolis()
}
if name == "Castrovalva" {
 Castrovalva()
}
if name == "Four To Doomsday" {
 FourToDoomsday()
}
if name == "Kinda" {
 Kinda()
}
if name == "The Visitation" {
 TheVisitation()
}
}
        Group {
if name == "Black Orchid" {
 BlackOrchid()
}
if name == "Earthshock" {
 Earthshock
}
if name == "Time-Flight" {
 TimeFlight()
}
if name == "Arc Of Infinity" {
 ArcOfInfinity()
}
if name == "Snakedance" {
 Snakedance()
}
if name == "Mawdryn Undead" {
 MawdrynUndead()
}
if name == "Terminus" {
 Terminus()
}
if name == "Enlightenment" {
 Enlightenment()
}
if name == "The King's Demons" {
 TheKingsDemons()
}
if name == "The Five Doctors" {
 TheFiveDoctors()
}
}
        Group {
if name == "Warriors Of The Deep" {
 WarriorsOfTheDeep()
}
if name == "The Awakening" {
 TheAwakening()
}
if name == "Frontios" {
 Frontios()
}
if name == "Resurrection Of The Daleks" {
 ResurrectionOfTheDaleks()
}
if name == "Planet Of Fire" {
 PlanetOfFire()
}
if name == "The Caves Of Androzani" {
 TheCavesOfAndrozani()
}
if name == "The Twin Dilemma" {
 TheTwinDilemma()
}
if name == "Attack Of The Cybermen" {
 AttackOfTheCybermen()
}
if name == "Vengeance On Varos" {
 VengeanceOnVaros()
}
if name == "The Mark Of The Rani" {
 TheMarkOfTheRani()
}
}
        Group {
if name == "The Two Doctors" {
 TheTwoDoctors()
}
if name == "Timelash" {
 Timelash()
}
if name == "Revelation Of The Daleks" {
 RevelationOfTheDaleks()
}
if name == "The Mysterious Planet" {
 TheMysteriousPlanet()
}
if name == "Mindwarp" {
 Mindwarp()
}
if name == "Terror Of The Vervoids" {
 TerrorOfTheVervoids()
}
if name == "The Ultimate Foe" {
 TheUltimateFoe()
}
if name == "Time And The Rani" {
 TimeAndTheRani()
}
if name == "Paradise Towers" {
 ParadiseTowers()
}
if name == "Delta And The Bannermen" {
 DeltaAndTheBannermen()
}
}
        Group {
if name == "Dragonfire" {
 Dragonfire()
}
if name == "Remembrance Of The Daleks" {
 RememberanceOfTheDaleks()
}
if name == "The Happiness Patrol" {
 TheHappinessPatrol()
}
if name == "Silver Nemesis" {
 SilverNemesis()
}
if name == "The Greatest Show In The Galaxy" {
 TheGreatestShowInTheGalaxy()
}
if name == "Battlefield" {
 Battlefield()
}
if name == "Ghost Light" {
 GhostLight()
}
if name == "The Curse Of Fenric" {
 TheCurseOfFenric()
}
if name == "Survival" {
 Survival()
}
if name == "TV Movie" {
 TVMovie()
}
}
        Group {
if name == "Rose" {
 Rose()
}
if name == "The End Of The World" {
 TheEndOfTheWorld()
}
if name == "The Unquiet Dead" {
 TheUnquietDead()
}
if name == "Aliens Of London" {
 AliensOfLondon()
}
if name == "World War Three" {
 WorldWarThree()
}
if name == "Dalek" {
 Dalek()
}
if name == "The Long Game" {
 TheLongGame()
}
if name == "Father's Day" {
 FathersDay()
}
if name == "The Empty Child" {
 TheEmptyChild()
}
if name == "The Doctor Dances" {
 TheDoctorDances()
}
}
        Group {
if name == "Boom Town" {
 BoomTown()
}
if name == "Bad Wolf" {
 BadWolf()
}
if name == "The Parting Of The Ways" {
 ThePartingOfTheWays()
}
if name == "The Christmas Invasion" {
 TheChristmasInvasion()
}
if name == "New Earth" {
 NewEarth()
}
if name == "Tooth And Claw" {
 ToothAndClaw()
}
if name == "School Reunion" {
 SchoolReunion()
}
if name == "The Girl In The Fireplace" {
 TheGirlInTheFireplace()
}
if name == "Rise Of The Cybermen" {
 RiseOfTheCybermen()
}
if name == "The Age Of Steel" {
 TheAgeOfSteel()
}
}
        Group {
if name == "The Idiot's Lantern" {
 TheIdiotsLantern()
}
if name == "The Impossible Planet" {
 TheImpossiblePlanet()
}
if name == "The Satan Pit" {
 TheSatanPit()
}
if name == "Love & Monsters" {
 Love_Monsters()
}
if name == "Fear Her" {
 FearHer()
}
if name == "Army Of Ghosts" {
 ArmyOfGhosts()
}
if name == "Doomsday" {
 Doomsday()
}
if name == "The Runaway Bride" {
 TheRunawayBride()
}
if name == "Smith And Jones" {
 SmithAndJones()
}
if name == "The Shakespeare Code" {
 TheShakespeareCode()
}
}
        Group {
if name == "Gridlock" {
 Gridlock()
}
if name == "Daleks In Manhattan" {
 DaleksInManhattan()
}
if name == "Evolution Of The Daleks" {
 EvolutionOfTheDaleks()
}
if name == "The Lazarus Experiment" {
 TheLazarusExperiment()
}
if name == "42" {
 _42()
}
if name == "Human Nature" {
 HumanNature()
}
if name == "The Family Of Blood" {
 TheFamilyOfBlood()
}
if name == "Blink" {
 Blink()
}
if name == "Utopia" {
 Utopia()
}
if name == "The Sound Of Drums" {
 TheSoundOfDrums()
}
}
        }
    }
    var group3: some View {
        Group {
        Group {
if name == "Last Of The Time Lords" {
 LastOfTheTimeLords()
}
if name == "Voyage Of The Damned" {
 VoyageOfTheDamned()
}
if name == "Partners In Crime" {
 PartnersInCrime()
}
if name == "The Fires Of Pompeii" {
 TheFiresOfPompeii()
}
if name == "Planet Of The Ood" {
 PlanetOfTheOod()
}
if name == "The Sontaran Stratagem" {
 TheSontaranStratagem()
}
if name == "The Poison Sky" {
 ThePoisonSky()
}
if name == "The Doctor's Daughter" {
 TheDoctorsDaughter()
}
if name == "The Unicorn And The Wasp" {
 TheUnicornAndTheWasp()
}
if name == "Silence In The Library" {
 SilenceInTheLibrary()
}
}
        Group {
if name == "Forest Of The Dead" {
 ForestOfTheDead()
}
if name == "Midnight" {
 Midnight()
}
if name == "Turn Left" {
 TurnLeft()
}
if name == "The Stolen Earth" {
 TheStolenEarth()
}
if name == "Journey's End" {
 JourneysEnd()
}
if name == "The Next Doctor" {
 TheNextDoctor()
}
if name == "Planet Of The Dead" {
 PlanetOfTheDead()
}
if name == "The Waters Of Mars" {
 TheWatersOfMars()
}
if name == "The End Of Time - Part 1" {
 TheEndOfTimePart1()
}
if name == "The End Of Time - Part 2" {
 TheEndOfTimePart2()
}
}
        Group {
if name == "The Eleventh Hour" {
 TheEleventhHour()
}
if name == "The Beast Below" {
 TheBeastBelow()
}
if name == "Victory Of The Daleks" {
 VictoryOfTheDaleks()
}
if name == "The Time Of Angels" {
 TheTimeOfAngels()
}
if name == "Flesh And Stone" {
 FleshAndStone()
}
if name == "The Vampires Of Venice" {
 TheVampiresOfVenice()
}
if name == "Amy's Choice" {
 AmysChoice()
}
if name == "The Hungry Earth" {
 TheHungryEarth()
}
if name == "Cold Blood" {
 ColdBlood()
}
if name == "Vincent And The Doctor" {
 VincentAndTheDoctor()
}
}
        Group {
if name == "The Lodger" {
 TheLodger()
}
if name == "The Pandorica Opens" {
 ThePandoricaOpens()
}
if name == "The Big Bang" {
 TheBigBang()
}
if name == "A Christmas Carol" {
 AChristmasCarol()
}
if name == "The Impossible Astronaut" {
 TheImpossibleAstronaut()
}
if name == "Day Of The Moon" {
 DayOfTheMoon()
}
if name == "The Curse Of The Black Spot" {
 TheCurseOfTheBlackSpot()
}
if name == "The Doctor's Wife" {
 TheDoctorsWife()
}
if name == "The Rebel Flesh" {
 TheRebelFlesh()
}
if name == "The Almost People" {
 TheAlmostPeople()
}
}
        Group {
if name == "A Good Man Goes To War" {
 AGoodManGoesToWar()
}
if name == "Let's Kill Hitler" {
 LetsKillHitler()
}
if name == "Night Terrors" {
 NightTerrors()
}
if name == "The Girl Who Waited" {
 TheGirlWhoWaited()
}
if name == "The God Complex" {
 TheGodComplex()
}
if name == "Closing Time" {
 ClosingTime()
}
if name == "The Wedding Of River Song" {
 TheWeddingOfRiverSong()
}
if name == "The Doctor, The Widow And The Wardrobe" {
 TheDoctorTheWidowAndTheWardrobe()
}
if name == "Asylum Of The Daleks" {
 AsylumOfTheDaleks()
}
if name == "Dinosaurs On A Spaceship" {
 DinosaursOnASpaceship()
}
}
        Group {
if name == "A Town Called Mercy" {
 ATownCalledMercy()
}
if name == "The Power Of Three" {
 ThePowerOfThree()
}
if name == "The Angels Take Manhattan" {
 TheAngelsTakeManhattan()
}
if name == "The Snowmen" {
 TheSnowmen()
}
if name == "The Bells Of Saint John" {
 TheBellsOfSaintJohn()
}
if name == "The Rings Of Akhaten" {
 TheRingsOfAkhaten()
}
if name == "Cold War" {
 ColdWar()
}
if name == "Hide" {
 Hide()
}
if name == "Journey To The Centre Of The TARDIS" {
 JourneyToTheCentreOfTheTARDIS()
}
if name == "The Crimson Horror" {
 TheCrimsonHorror()
}
}
        Group {
if name == "Nightmare In Silver" {
 NightmareInSilver()
}
if name == "The Name Of The Doctor" {
 TheNameOfTheDoctor()
}
if name == "The Day Of The Doctor" {
 TheDayOfTheDoctor()
}
if name == "The Time Of The Doctor" {
 TheTimeOfTheDoctor()
}
if name == "Deep Breath" {
 DeepBreath()
}
if name == "Into The Dalek" {
 IntoTheDalek()
}
if name == "Robot Of Sherwood" {
 RobotOfSherwood()
}
if name == "Listen" {
 Listen()
}
if name == "Time Heist" {
 TimeHeist()
}
if name == "The Caretaker" {
 TheCaretaker()
}
}
        Group {
if name == "Kill The Moon" {
 KillTheMoon()
}
if name == "Mummy On The Orient Express" {
 MummyOnTheOrientExpress()
}
if name == "Flatline" {
 Flatline()
}
if name == "In The Forest Of The Night" {
 InTheForestOfTheNight()
}
if name == "Dark Water" {
 DarkWater()
}
if name == "Death In Heaven" {
 DeathInHeaven()
}
if name == "Last Christmas" {
 LastChristmas()
}
if name == "The Magician's Apprentice" {
 TheMagiciansApprentice()
}
if name == "The Witch's Familiar" {
 TheWitchsFamiliar()
}
if name == "Under The Lake" {
 UnderTheLake()
}
}
        Group {
if name == "Before The Flood" {
 BeforeTheFlood()
}
if name == "The Girl Who Died" {
 TheGirlWhoDied()
}
if name == "The Woman Who Lived" {
 TheWomanWhoLived()
}
if name == "The Zygon Invasion" {
 TheZygonInvasion()
}
if name == "The Zygon Inversion" {
 TheZygonInversion()
}
if name == "Sleep No More" {
 SleepNoMore()
}
if name == "Face The Raven" {
 FaceTheRaven()
}
if name == "Heaven Sent" {
 HeavenSent()
}
if name == "Hell Bent" {
 HellBent()
}
if name == "The Husbands Of River Song" {
 TheHusbandsOfRiverSong()
}
}
        Group {
if name == "The Return Of Doctor Mysterio" {
 TheReturnOfDoctorMysterio()
}
if name == "The Pilot" {
 ThePilot()
}
if name == "Smile" {
 Smile()
}
if name == "Thin Ice" {
 ThinIce()
}
if name == "Knock Knock" {
 KnockKnock()
}
if name == "Oxygen" {
 Oxygen()
}
if name == "Extremis" {
 Extremis()
}
if name == "The Pyramid At The End Of The World" {
 ThePyramidAtTheEndOfTheWorld()
}
if name == "The Lie Of The Land" {
 TheLieOfTheLand()
}
if name == "Empress Of Mars" {
 EmpressOfMars()
}
}
}
    }
    var group4: some View {
        Group {
       Group {
if name == "The Eaters Of Light" {
TheEatersOfLight()
}
if name == "World Enough And Time" {
WorldEnoughAndTime()
}
if name == "The Doctor Falls" {
TheDoctorFalls()
}
if name == "Twice Upon A Time" {
TwiceUponATime()
}
if name == "The Woman Who Fell To Earth" {
TheWomanWhoFellToEarth()
}
if name == "The Ghost Monument" {
TheGhostMonument()
}
if name == "Rosa" {
Rosa()
}
if name == "Arachnids In The UK" {
ArachnidsInTheUK()
}
if name == "The Tsuranga Conundrum" {
TheTsurangaConundrum()
}
if name == "Demons Of The Punjab" {
DemonsOfThePunjab()
}
}
       Group {
if name == "Kerblam!" {
Kerblam()
}
if name == "The Witchfinders" {
TheWitchfinders()
}
if name == "It Takes You Away" {
ItTakesYouAway()
}
if name == "The Battle Of Ranskoor Av Kolos" {
TheBattleOfRanskoorAvKolos()
}
if name == "Resolution" {
Resolution()
}
if name == "Spyfall - Part 1" {
SpyfallPart1()
}
if name == "Spyfall - Part 2" {
SpyfallPart2()
}
if name == "Orphan 55" {
Orphan55()
}
if name == "Nikola Tesla's Night Of Terror" {
NikolaTeslasNightOfTerror()
}
if name == "Fugitive Of The Judoon" {
FugitiveOfTheJudoon()
}
}
       Group {
if name == "Praxeus" {
Praxeus()
}
if name == "Can You Hear Me?" {
CanYouHearMe()
}
if name == "The Haunting Of Villa Diodati" {
TheHauntingOfVillaDiodati()
}
if name == "Ascension Of The Cybermen" {
AscensionOfTheCybermen()
}
if name == "The Timeless Children" {
TheTimelessChildren()
}
if name == "Revolution Of The Daleks" {
RevolutionOfTheDaleks_()
}
if name == "The Halloween Apocalypse" {
TheHalloweenApocalypse()
}
if name == "War Of The Sontarans" {
WarOfTheSontarans()
}
if name == "Once, Upon Time" {
OnceUponTime()
}
if name == "Village Of The Angels" {
VillageOfTheAngels()
}
}
       Group {
if name == "Survivors Of The Flux" {
SurvivorsOfTheFlux()
}
if name == "The Vanquishers" {
TheVanquishers()
}
if name == "Eve Of The Daleks" {
EveOfTheDaleks()
}
if name == "Legend Of The Sea Devils" {
LegendOfTheSeaDevils()
}
}
       }
    }*/
    var navLink: some View {
        ForEach(searchResults, id: \.self) { name in
        NavigationLink(destination:
                       Group {
                       Group {
            if name == "An Unearthly Child" {
            AnUnearthlyChild()
            }
            if name == "The Daleks" {
            TheDaleks()
            }
            if name == "The Edge Of Destruction" {
            TheEdgeOfDestruction()
            }
            if name == "Marco Polo" {
            MarcoPolo()
            }
            if name == "The Keys Of Marinus" {
            TheKeysOfMarinus()
            }
            if name == "The Aztecs" {
            TheAztecs()
            }
            if name == "The Sensorites" {
            TheSensorites()
            }
            if name == "The Reign Of Terror" {
            TheReignOfTerror()
            }
            if name == "Planet Of Giants" {
            PlanetOfGiants()
            }
            if name == "The Dalek Invasion Of Earth" {
            TheDalekInvasionOfEarth()
            }
                       }
                       Group {
                           if name == "The Rescue" {
                           TheRescue()
                           }
                           if name == "The Romans" {
                           TheRomans()
                           }
                           if name == "The Web Planet" {
                           TheWebPlanet()
                           }
                           if name == "The Crusade" {
                           TheCrusade()
                           }
                           if name == "The Space Museum" {
                           TheSpaceMuseum()
                           }
                           if name == "The Chase" {
                           TheChase()
                           }
                           if name == "The Time Meddler" {
                           TheTimeMeddler()
                           }
                           if name == "Galaxy 4" {
                           Galaxy4()
                           }
                           if name == "Mission To The Unknown" {
                           MissionToTheUnknown()
                           }
                           if name == "The Myth Makers" {
                           TheMythMakers()
                           }
        }
            Group {
                if name == "The Daleks' Master Plan" {
                TheDaleksMasterPlan()
                }
                if name == "The Massacre" {
                TheMassacre()
                }
                if name == "The Ark" {
                TheArk()
                }
                if name == "The Celestial Toymaker" {
                TheCelestialToymaker()
                }
                if name == "The Gunfighters" {
                TheGunfighters()
                }
                if name == "The Savages" {
                TheSavages()
                }
                if name == "The War Machines" {
                TheWarMachines()
                }
                if name == "The Smugglers" {
                TheSmugglers()
                }
                if name == "The Tenth Planet" {
                TheTenthPlanet()
                }
                if name == "The Power Of The Daleks" {
                ThePowerOfTheDaleks()
                }
            }
            Group {
                
            }
            Group {
                
            }
            Group {
                
            }
            Group {
                
            }
            Group {
                
            }
            Group {
                
            }
            Group {
                
            }
                       }
        ) {
            VStack {
                Spacer()
                HStack {
                    Spacer()
            Text("\(name)")
                    .bold()
                    .font(.caption)
                    Spacer()
            }
                Spacer()
        }
    }
    }
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
                Text("1")
            }
        }
    }
    .navigationTitle("Settings")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
