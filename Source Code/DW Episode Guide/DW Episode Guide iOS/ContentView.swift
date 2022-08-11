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
