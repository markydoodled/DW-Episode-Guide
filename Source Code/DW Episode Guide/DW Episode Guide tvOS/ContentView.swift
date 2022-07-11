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
    @State var classicSearchText = ""
    let names = ["Holly", "Josh", "Rhonda", "Ted"]
    var searchResults: [String] {
            if classicSearchText.isEmpty {
                return names
            } else {
                return names.filter { $0.contains(classicSearchText) }
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
    var columns: [GridItem] =
             Array(repeating: .init(.flexible()), count: 2)
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
        .searchable(text: $classicSearchText, prompt: Text("Search For Episodes")) {
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
            Text("").searchCompletion("")
            Text("").searchCompletion("")
            Text("").searchCompletion("")
            Text("").searchCompletion("")
            Text("").searchCompletion("")
            Text("").searchCompletion("")
            Text("").searchCompletion("")
            Text("").searchCompletion("")
            //Classic Series 4
            //Classic Series 5
            //Classic Series 6
            //Classic Series 7
            //Classic Series 8
            //Classic Series 9
            //Classic Series 10
            //Classic Series 11
            //Classic Series 12
            //Classic Series 13
            //Classic Series 14
            //Classic Series 15
            //Classic Series 16
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
