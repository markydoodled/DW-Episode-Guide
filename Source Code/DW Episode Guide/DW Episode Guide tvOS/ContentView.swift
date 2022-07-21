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
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    var search: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(searchResults, id: \.self) { name in
                        NavigationLink(destination: Text("Test")) {
                        ZStack {
                            Image("AnUnearthlyChild")
                            VStack {
                                Spacer()
                            Text("An Unearthly Child")
                                    .padding()
                        }
                        }
                    }
                    }
                }
            }
        .searchable(text: $searchText, prompt: Text("Search For Episodes")) {
            //Classic Series 1
            Text("An Unearthly Child").searchCompletion("An Unearthly Child")
            Text("The Daleks").searchCompletion("The Daleks")
            Text("The Edge Of Destruction").searchCompletion("The Edge Of Destruction")
            Text("Marco Polo").searchCompletion("Marco Polo")
            Text("The Keys Of Marinus").searchCompletion("The Keys Of Marinus")
            Text("The Aztecs").searchCompletion("The Aztecs")
            Text("The Sensorites").searchCompletion("The Sensorites")
            Text("The Reign Of Terror").searchCompletion("The Reign Of Terror")
            //Classic Series 2
            Text("Planet Of Giants").searchCompletion("Planet Of Giants")
            Text("The Dalek Invasion Of Earth").searchCompletion("The Dalek Invasion Of Earth")
            Text("The Rescue").searchCompletion("The Rescue")
            Text("The Romans").searchCompletion("The Romans")
            Text("The Web Planet").searchCompletion("The Web Planet")
            Text("The Crusade").searchCompletion("The Crusade")
            Text("The Space Museum").searchCompletion("The Space Museum")
            Text("The Chase").searchCompletion("The Chase")
            Text("The Time Meddler").searchCompletion("The Time Meddler")
            //Classic Series 3
            Text("Galaxy 4").searchCompletion("Galaxy 4")
            Text("Mission To The Unknown").searchCompletion("Mission To The Unknown")
            Text("The Myth Makers").searchCompletion("The Myth Makers")
            Text("The Daleks' Master Plan").searchCompletion("The Daleks' Master Plan")
            Text("The Massacre").searchCompletion("The Massacre")
            Text("The Ark").searchCompletion("The Ark")
            Text("The Celestial Toymaker").searchCompletion("The Celestial Toymaker")
            Text("The Gunfighters").searchCompletion("The Gunfighters")
            Text("The Savages").searchCompletion("The Savages")
            Text("The War Machines").searchCompletion("The War Machines") 
            //Classic Series 4
            Text("The Smugglers").searchCompletion("The Smugglers")
            Text("The Tenth Planet").searchCompletion("The Tenth Planet")
            Text("The Power Of The Daleks").searchCompletion("The Power Of The Daleks")
            Text("The Highlanders").searchCompletion("The Highlanders")
            Text("The Underwater Menace").searchCompletion("The Underwater Menace")
            Text("The Moonbase").searchCompletion("The Moonbase")
            Text("The Macra Terror").searchCompletion("The Macra Terror")
            Text("The Faceless Ones").searchCompletion("The Faceless Ones")
            Text("The Evil Of The Daleks").searchCompletion("The Evil Of The Daleks")
            //Classic Series 5
            Text("The Tomb Of The Cybermen").searchCompletion("The Tomb Of The Cybermen")
            Text("The Abominable Snowmen").searchCompletion("The Abominable Snowmen")
            Text("The Ice Warriors").searchCompletion("The Ice Warriors")
            Text("The Enemy Of The World").searchCompletion("The Enemy Of The World")
            Text("The Web Of Fear").searchCompletion("The Web Of Fear")
            Text("Fury From The Deep").searchCompletion("Fury From The Deep")
            Text("The Wheel In Space").searchCompletion("The Wheel In Space")
            //Classic Series 6
            Text("The Dominators").searchCompletion("The Dominators")
            Text("The Mind Robber").searchCompletion("The Mind Robber")
            Text("The Invasion").searchCompletion("The Invasion")
            Text("The Krotons").searchCompletion("The Krotons")
            Text("The Seeds Of Death").searchCompletion("The Seeds Of Death")
            Text("The Space Pirates").searchCompletion("The Space Pirates")
            Text("The War Games").searchCompletion("The War Games")
            //Classic Series 7
            Text("Spearhead From Space").searchCompletion("Spearhead From Space")
            Text("Doctor Who And The Silurians").searchCompletion("Doctor Who And The Silurians")
            Text("The Ambassadors Of Death").searchCompletion("The Ambassadors Of Death")
            Text("Inferno").searchCompletion("Inferno")
            //Classic Series 8
            Text("Terror Of The Autons").searchCompletion("Terror Of The Autons")
            Text("The Mind Of Evil").searchCompletion("The Mind Of Evil")
            Text("The Claws Of Axos").searchCompletion("The Claws Of Axos")
            Text("Colony In Space").searchCompletion("Colony In Space")
            Text("The Daemons").searchCompletion("The Daemons")
            //Classic Series 9
            Text("Day Of The Daleks").searchCompletion("Day Of The Daleks")
            Text("The Curse Of Peladon").searchCompletion("The Curse Of Peladon")
            Text("The Sea Devils").searchCompletion("The Sea Devils")
            Text("The Mutants").searchCompletion("The Mutants")
            Text("The Time Monster").searchCompletion("The Time Monster")
            //Classic Series 10
            Text("The Three Doctors").searchCompletion("The Three Doctors")
            Text("Carnival Of Monsters").searchCompletion("Carnival Of Monsters")
            Text("Frontier In Space").searchCompletion("Frontier In Space")
            Text("Planet Of The Daleks").searchCompletion("Planet Of The Daleks")
            Text("The Green Death").searchCompletion("The Green Death")
            //Classic Series 11
            Text("The Time Warrior").searchCompletion("The Time Warrior")
            Text("Invasion Of The Dinosaurs").searchCompletion("Invasion Of The Dinosaurs")
            Text("Death To The Daleks").searchCompletion("Death To The Daleks")
            Text("The Monster Of Peladon").searchCompletion("The Monster Of Peladon")
            Text("Planet Of The Spiders").searchCompletion("Planet Of The Spiders")
            //Classic Series 12
            Text("Robot").searchCompletion("Robot")
            Text("The Ark In Space").searchCompletion("The Ark In Space")
            Text("The Sontaran Experiment").searchCompletion("The Sontaran Experiment")
            Text("Genesis Of The Daleks").searchCompletion("Genesis Of The Daleks")
            Text("Revenge Of The Cybermen").searchCompletion("Revenge Of The Cybermen")
            //Classic Series 13
            Text("Terror Of The Zygons").searchCompletion("Terror Of The Zygons")
            Text("Planet Of Evil").searchCompletion("Planet Of Evil")
            Text("Pyramids Of Mars").searchCompletion("Pyramids Of Mars")
            Text("The Android Invasion").searchCompletion("The Android Invasion")
            Text("The Brain Of Morbius").searchCompletion("The Brain Of Morbius")
            Text("The Seeds Of Doom").searchCompletion("The Seeds Of Doom")
            //Classic Series 14
            Text("The Masque Of Mandragora").searchCompletion("The Masque Of Mandragora")
            Text("The Hand Of Fear").searchCompletion("The Hand Of Fear")
            Text("The Deadly Assassin").searchCompletion("The Deadly Assassin")
            Text("The Face Of Evil").searchCompletion("The Face Of Evil")
            Text("The Robots Of Death").searchCompletion("The Robots Of Death")
            Text("The Talons Of Weng-Chiang").searchCompletion("The Talons Of Weng-Chiang")
            //Classic Series 15
            Text("Horror Of Fang Rock").searchCompletion("Horror Of Fang Rock")
            Text("The Invisible Enemy").searchCompletion("The Invisible Enemy")
            Text("Image Of The Fendahl").searchCompletion("Image Of The Fendahl")
            Text("The Sun Makers").searchCompletion("The Sun Makers")
            Text("Underworld").searchCompletion("Underworld")
            Text("The Invasion Of Time").searchCompletion("The Invasion Of Time")
            //Classic Series 16
            Text("The Ribos Operation").searchCompletion("The Ribos Operation")
            Text("The Pirate Planet").searchCompletion("The Pirate Planet")
            Text("The Stones Of Blood").searchCompletion("The Stones Of Blood")
            Text("The Androids Of Tara").searchCompletion("The Androids Of Tara")
            Text("The Power Of Kroll").searchCompletion("The Power Of Kroll")
            Text("The Armageddon Factor").searchCompletion("The Armageddon Factor")
            //Classic Series 17
            Text("Destiny Of The Daleks").searchCompletion("Destiny Of The Daleks")
            Text("City Of Death").searchCompletion("City Of Death")
            Text("The Creature From The Pit").searchCompletion("The Creature From The Pit")
            Text("Nightmare Of Eden").searchCompletion("Nightmare Of Eden")
            Text("The Horns Of Nimon").searchCompletion("The Horns Of Nimon")
            Text("Shada").searchCompletion("Shada")
            //Classic Series 18
            Text("The Leisure Hive").searchCompletion("The Leisure Hive")
            Text("Meglos").searchCompletion("Meglos")
            Text("Full Circle").searchCompletion("Full Circle")
            Text("State Of Decay").searchCompletion("State Of Decay")
            Text("Warriors' Gate").searchCompletion("Warriors' Gate")
            Text("The Keeper Of Traken").searchCompletion("The Keeper Of Traken")
            Text("Logopolis").searchCompletion("Logopolis")
            //Classic Series 19
            Text("Castrovalva").searchCompletion("Castrovalva")
            Text("Four To Doomsday").searchCompletion("Four To Doomsday")
            Text("Kinda").searchCompletion("Kinda")
            Text("The Visitation").searchCompletion("The Visitation")
            Text("Black Orchid").searchCompletion("Black Orchid")
            Text("Earthshock").searchCompletion("Earthshock")
            Text("Time-Flight").searchCompletion("Time-Flight")
            //Classic Series 20
            Text("Arc Of Infinity").searchCompletion("Arc Of Infinity")
            Text("Snakedance").searchCompletion("Snakedance")
            Text("Mawdryn Undead").searchCompletion("Mawdryn Undead")
            Text("Terminus").searchCompletion("Terminus")
            Text("Enlightenment").searchCompletion("Enlightenment")
            Text("The King's Demons").searchCompletion("The King's Demons")
            Text("The Five Doctors").searchCompletion("The Five Doctors")
            //Classic Series 21
            Text("Warriors Of The Deep").searchCompletion("Warriors Of The Deep")
            Text("The Awakening").searchCompletion("The Awakening")
            Text("Frontios").searchCompletion("Frontios")
            Text("Resurrection Of The Daleks").searchCompletion("Resurrection Of The Daleks")
            Text("Planet Of Fire").searchCompletion("Planet Of Fire")
            Text("The Caves Of Androzani").searchCompletion("The Caves Of Androzani")
            Text("The Twin Dilemma").searchCompletion("The Twin Dilemma")
            //Classic Series 22
            Text("Attack Of The Cybermen").searchCompletion("Attack Of The Cybermen")
            Text("Vengeance On Varos").searchCompletion("Vengeance On Varos")
            Text("The Mark Of The Rani").searchCompletion("The Mark Of The Rani")
            Text("The Two Doctors").searchCompletion("The Two Doctors")
            Text("Timelash").searchCompletion("Timelash")
            Text("Revelation Of The Daleks").searchCompletion("Revelation Of The Daleks")
            //Classic Series 23
            Text("The Mysterious Planet").searchCompletion("The Mysterious Planet")
            Text("Mindwarp").searchCompletion("Mindwarp")
            Text("Terror Of The Vervoids").searchCompletion("Terror Of The Vervoids")
            Text("The Ultimate Foe").searchCompletion("The Ultimate Foe")
            //Classic Series 24
            Text("Time And The Rani").searchCompletion("Time And The Rani")
            Text("Paradise Towers").searchCompletion("Paradise Towers")
            Text("Delta And The Bannermen").searchCompletion("Delta And The Bannermen")
            Text("Dragonfire").searchCompletion("Dragonfire")
            //Classic Series 25
            Text("Remembrance Of The Daleks").searchCompletion("Remembrance Of The Daleks")
            Text("The Happiness Patrol").searchCompletion("The Happiness Patrol")
            Text("Silver Nemesis").searchCompletion("Silver Nemesis")
            Text("The Greatest Show In The Galaxy").searchCompletion("The Greatest Show In The Galaxy")
            //Classic Series 26
            Text("Battlefield").searchCompletion("Battlefield")
            Text("Ghost Light").searchCompletion("Ghost Light")
            Text("The Curse Of Fenric").searchCompletion("The Curse Of Fenric")
            Text("Survival").searchCompletion("Survival")
            Text("TV Movie").searchCompletion("TV Movie")
            //New Series 1
            Text("Rose").searchCompletion("Rose")
            Text("The End Of The World").searchCompletion("The End Of The World")
            Text("The Unquiet Dead").searchCompletion("The Unquiet Dead")
            Text("Aliens Of London").searchCompletion("Aliens Of London")
            Text("World War Three").searchCompletion("World War Three")
            Text("Dalek").searchCompletion("Dalek")
            Text("The Long Game").searchCompletion("The Long Game")
            Text("Father's Day").searchCompletion("Father's Day")
            Text("The Empty Child").searchCompletion("The Empty Child")
            Text("The Doctor Dances").searchCompletion("The Doctor Dances")
            Text("Boom Town").searchCompletion("Boom Town")
            Text("Bad Wolf").searchCompletion("Bad Wolf")
            Text("The Parting Of The Ways").searchCompletion("The Parting Of The Ways")
            //New Series 2
            Text("The Christmas Invasion").searchCompletion("The Christmas Invasion")
            Text("New Earth").searchCompletion("New Earth")
            Text("Tooth And Claw").searchCompletion("Tooth And Claw")
            Text("School Reunion").searchCompletion("School Reunion")
            Text("The Girl In The Fireplace").searchCompletion("The Girl In The Fireplace")
            Text("Rise Of The Cybermen").searchCompletion("Rise Of The Cybermen")
            Text("The Age Of Steel").searchCompletion("The Age Of Steel")
            Text("The Idiot's Lantern").searchCompletion("The Idiot's Lantern")
            Text("The Impossible Planet").searchCompletion("The Impossible Planet")
            Text("The Satan Pit").searchCompletion("The Satan Pit")
            Text("Love & Monsters").searchCompletion("Love & Monsters")
            Text("Fear Her").searchCompletion("Fear Her")
            Text("Army Of Ghosts").searchCompletion("Army Of Ghosts")
            Text("Doomsday").searchCompletion("Doomsday")
            //New Series 3
            Text("The Runaway Bride").searchCompletion("The Runaway Bride")
            Text("Smith And Jones").searchCompletion("Smith And Jones")
            Text("The Shakespeare Code").searchCompletion("The Shakespeare Code")
            Text("Gridlock").searchCompletion("Gridlock")
            Text("Daleks In Manhattan").searchCompletion("Daleks In Manhattan")
            Text("Evolution Of The Daleks").searchCompletion("Evolution Of The Daleks")
            Text("The Lazarus Experiment").searchCompletion("The Lazarus Experiment")
            Text("42").searchCompletion("42")
            Text("Human Nature").searchCompletion("Human Nature")
            Text("The Family Of Blood").searchCompletion("The Family Of Blood")
            Text("Blink").searchCompletion("Blink")
            Text("Utopia").searchCompletion("Utopia")
            Text("The Sound Of Drums").searchCompletion("The Sound Of Drums")
            Text("Last Of The Time Lords").searchCompletion("Last Of The Time Lords")
            //New Series 4
            Text("Voyage Of The Damned").searchCompletion("Voyage Of The Damned")
            Text("Partners In Crime").searchCompletion("Partners In Crime")
            Text("The Fires Of Pompeii").searchCompletion("The Fires Of Pompeii")
            Text("Planet Of The Ood").searchCompletion("Planet Of The Ood")
            Text("The Sontaran Stratagem").searchCompletion("The Sontaran Stratagem")
            Text("The Poison Sky").searchCompletion("The Poison Sky")
            Text("The Doctor's Daughter").searchCompletion("The Doctor's Daughter")
            Text("The Unicorn And The Wasp").searchCompletion("The Unicorn And The Wasp")
            Text("Silence In The Library").searchCompletion("Silence In The Library")
            Text("Forest Of The Dead").searchCompletion("Forest Of The Dead")
            Text("Midnight").searchCompletion("Midnight")
            Text("Turn Left").searchCompletion("Turn Left")
            Text("The Stolen Earth").searchCompletion("The Stolen Earth")
            Text("Journey's End").searchCompletion("Journey's End")
            Text("The Next Doctor").searchCompletion("The Next Doctor")
            Text("Planet Of The Dead").searchCompletion("Planet Of The Dead")
            Text("The Waters Of Mars").searchCompletion("The Waters Of Mars")
            Text("The End Of Time - Part 1").searchCompletion("The End Of Time - Part 1")
            Text("The End Of Time - Part 2").searchCompletion("The End Of Time - Part 2") 
            //New Series 5
            Text("The Eleventh Hour").searchCompletion("The Eleventh Hour")
            Text("The Beast Below").searchCompletion("The Beast Below")
            Text("Victory Of The Daleks").searchCompletion("Victory Of The Daleks")
            Text("The Time Of The Angels").searchCompletion("The Time Of The Angels")
            Text("Flesh And Stone").searchCompletion("Flesh And Stone")
            Text("The Vampires Of Venice").searchCompletion("The Vampires Of Venice")
            Text("Amy's Choice").searchCompletion("Amy's Choice")
            Text("The Hungry Earth").searchCompletion("The Hungry Earth")
            Text("Cold Blood").searchCompletion("Cold Blood")
            Text("Vincent And The Doctor").searchCompletion("Vincent And The Doctor")
            Text("The Lodger").searchCompletion("The Lodger")
            Text("The Pandorica Opens").searchCompletion("The Pandorica Opens")
            Text("The Big Bang").searchCompletion("The Big Bang")
            //New Series 6
            Text("A Christmas Carol").searchCompletion("A Christmas Carol")
            Text("The Impossible Astronaut").searchCompletion("The Impossible Astronaut")
            Text("Day Of The Moon").searchCompletion("Day Of The Moon")
            Text("The Curse Of The Black Spot").searchCompletion("The Curse Of The Black Spot")
            Text("The Doctor's Wife").searchCompletion("The Doctor's Wife")
            Text("The Rebel Flesh").searchCompletion("The Rebel Flesh")
            Text("The Almost People").searchCompletion("The Almost People")
            Text("A Good Man Goes To War").searchCompletion("A Good Man Goes To War")
            Text("Let's Kill Hitler").searchCompletion("Let's Kill Hitler")
            Text("Night Terrors").searchCompletion("Night Terrors")
            Text("The Girl Who Waited").searchCompletion("The Girl Who Waited")
            Text("The God Complex").searchCompletion("The God Complex")
            Text("Closing Time").searchCompletion("Closing Time")
            Text("The Wedding Of River Song").searchCompletion("The Wedding Of River Song") 
            //New Series 7
            Text("The Doctor, The Widow And The Wardrobe").searchCompletion("The Doctor, The Widow And The Wardrobe")
            Text("Asylum Of The Daleks").searchCompletion("Asylum Of The Daleks")
            Text("Dinosaurs On A Spaceship").searchCompletion("Dinosaurs On A Spaceship")
            Text("A Town Called Mercy").searchCompletion("A Town Called Mercy")
            Text("The Power Of Three").searchCompletion("The Power Of Three")
            Text("The Angels Take Manhattan").searchCompletion("The Angels Take Manhattan")
            Text("The Snowmen").searchCompletion("The Snowmen")
            Text("The Bells Of Saint John").searchCompletion("The Bells Of Saint John")
            Text("The Rings Of Akhaten").searchCompletion("The Rings Of Akhaten")
            Text("Cold War").searchCompletion("Cold War")
            Text("Hide").searchCompletion("Hide")
            Text("Journey To The Centre Of The TARDIS").searchCompletion("Journey To The Centre Of The TARDIS")
            Text("The Crimson Horror").searchCompletion("The Crimson Horror")
            Text("Nightmare In Silver").searchCompletion("Nightmare In Silver")
            Text("The Name Of The Doctor").searchCompletion("The Name Of The Doctor")
            Text("The Day Of The Doctor").searchCompletion("The Day Of The Doctor")
            Text("The Time Of The Doctor").searchCompletion("The Time Of The Doctor")
            //New Series 8
            Text("Deep Breath").searchCompletion("Deep Breath")
            Text("Into The Dalek").searchCompletion("Into The Dalek")
            Text("Robot Of Sherwood").searchCompletion("Robot Of Sherwood")
            Text("Listen").searchCompletion("Listen")
            Text("Time Heist").searchCompletion("Time Heist")
            Text("The Caretaker").searchCompletion("The Caretaker")
            Text("Kill The Moon").searchCompletion("Kill The Moon")
            Text("Mummy On The Orient Express").searchCompletion("Mummy On The Orient Express")
            Text("Flatline").searchCompletion("Flatline")
            Text("In The Forest Of The Night").searchCompletion("In The Forest Of The Night")
            Text("Dark Water").searchCompletion("Dark Water")
            Text("Death In Heaven").searchCompletion("Death In Heaven")
            //New Series 9
            Text("Last Christmas").searchCompletion("Last Christmas")
            Text("The Magician's Apprentice").searchCompletion("The Magician's Apprentice")
            Text("The Witch's Familiar").searchCompletion("The Witch's Familiar")
            Text("Under The Lake").searchCompletion("Under The Lake")
            Text("Before The Flood").searchCompletion("Before The Flood")
            Text("The Girl Who Died").searchCompletion("The Girl Who Died")
            Text("The Woman Who Lived").searchCompletion("The Woman Who Lived")
            Text("The Zygon Invasion").searchCompletion("The Zygon Invasion")
            Text("The Zygon Inversion").searchCompletion("The Zygon Inversion")
            Text("Sleep No More").searchCompletion("Sleep No More")
            Text("Face The Raven").searchCompletion("Face The Raven")
            Text("Heaven Sent").searchCompletion("Heaven Sent")
            Text("Hell Bent").searchCompletion("Hell Bent")
            Text("The Husbands Of River Song").searchCompletion("The Husbands Of River Song")
            //New Series 10
            Text("The Return Of Doctor Mysterio").searchCompletion("The Return Of Doctor Mysterio")
            Text("The Pilot").searchCompletion("The Pilot")
            Text("Smile").searchCompletion("Smile")
            Text("Thin Ice").searchCompletion("Thin Ice")
            Text("Knock Knock").searchCompletion("Knock Knock")
            Text("Oxygen").searchCompletion("Oxygen")
            Text("Extremis").searchCompletion("Extremis")
            Text("The Pyramid At The End Of The World").searchCompletion("The Pyramid At The End Of The World")
            Text("The Lie Of The Land").searchCompletion("The Lie Of The Land")
            Text("Empress Of Mars").searchCompletion("Empress Of Mars")
            Text("The Eaters Of Light").searchCompletion("The Eaters Of Light")
            Text("World Enough And Time").searchCompletion("World Enough And Time")
            Text("The Doctor Falls").searchCompletion("The Doctor Falls")
            Text("Twice Upon A Time").searchCompletion("Twice Upon A Time")
            //New Series 11
            Text("The Woman Who Fell To Earth").searchCompletion("The Woman Who Fell To Earth")
            Text("The Ghost Monument").searchCompletion("The Ghost Monument")
            Text("Rosa").searchCompletion("Rosa")
            Text("Arachnids In The UK").searchCompletion("Arachnids In The UK")
            Text("The Tsuranga Conundrum").searchCompletion("The Tsuranga Conundrum")
            Text("Demons Of The Punjab").searchCompletion("Demons Of The Punjab")
            Text("Kerblam!").searchCompletion("Kerblam!")
            Text("The Witchfinders").searchCompletion("The Witchfinders")
            Text("It Takes You Away").searchCompletion("It Takes You Away")
            Text("The Battle Of Ranskoor Av Kolos").searchCompletion("The Battle Of Ranskoor Av Kolos")
            Text("Resolution").searchCompletion("Resolution")
            //New Series 12
            Text("Spyfall - Part 1").searchCompletion("Spyfall - Part 1")
            Text("Spyfall - Part 2").searchCompletion("Spyfall - Part 2")
            Text("Orphan 55").searchCompletion("Orphan 55")
            Text("Nikola Tesla's Night Of Terror").searchCompletion("Nikola Tesla's Night Of Terror")
            Text("Fugitive Of The Judoon").searchCompletion("Fugitive Of The Judoon")
            Text("Praxeus").searchCompletion("Praxeus")
            Text("Can You Hear Me?").searchCompletion("Can You Hear Me?")
            Text("The Haunting Of Villa Diodati").searchCompletion("The Haunting Of Villa Diodati")
            Text("Ascension Of The Cybermen").searchCompletion("Ascension Of The Cybermen")
            Text("The Timeless Children").searchCompletion("The Timeless Children")
            Text("Revolution Of The Daleks").searchCompletion("Revolution Of The Daleks")
            //New Series 13
            Text("The Halloween Apocalypse").searchCompletion("The Halloween Apocalypse")
            Text("War Of The Sontarans").searchCompletion("War Of The Sontarans")
            Text("Once, Upon Time").searchCompletion("Once, Upon Time")
            Text("Village Of The Angels").searchCompletion("Village Of The Angels")
            Text("Survivors Of The Flux").searchCompletion("Survivors Of The Flux")
            Text("The Vanquishers").searchCompletion("The Vanquishers")
            Text("Eve Of The Daleks").searchCompletion("Eve Of The Daleks")
            Text("Legend Of The Sea Devils").searchCompletion("Legend Of The Sea Devils")
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
