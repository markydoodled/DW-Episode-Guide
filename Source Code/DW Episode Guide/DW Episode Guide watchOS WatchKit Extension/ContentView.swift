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
                setting
                    .navigationTitle("Settings")
            }
                .tag(3)
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
            Section(header: Label("Misc.", systemImage: "ellipsis.circle"), footer: Text("?? Mark Howard 2022, All Rights And Images Owned By The BBC")) {
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
