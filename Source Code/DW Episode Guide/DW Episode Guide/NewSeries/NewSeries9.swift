//
//  NewSeries9.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct NewSeries9: View {
    var body: some View {
        List {
            Group {
            NavigationLink(destination: LastChristmas()) {
                Text("Last Christmas")
            }
            NavigationLink(destination: TheMagiciansApprentice()) {
                Text("The Magician's Apprentice")
            }
            NavigationLink(destination: TheWitchsFamiliar()) {
                Text("The Witch's Familiar")
            }
            NavigationLink(destination: UnderTheLake()) {
                Text("Under The Lake")
            }
            NavigationLink(destination: BeforeTheFlood()) {
                Text("Before The Flood")
            }
            NavigationLink(destination: TheGirlWhoDied()) {
                Text("The Girl Who Died")
            }
            NavigationLink(destination: TheWomanWhoLived()) {
                Text("The Woman Who Lived")
            }
            NavigationLink(destination: TheZygonInvasion()) {
                Text("The Zygon Invasion")
            }
            NavigationLink(destination: TheZygonInversion()) {
                Text("The Zygon Inversion")
            }
            NavigationLink(destination: SleepNoMore()) {
                Text("Sleep No More")
            }
        }
        Group {
            NavigationLink(destination: FaceTheRaven()) {
                Text("Face The Raven")
            }
            NavigationLink(destination: HeavenSent()) {
                Text("Heaven Sent")
            }
            NavigationLink(destination: HellBent()) {
                Text("Hell Bent")
            }
            NavigationLink(destination: TheHusbandsOfRiverSong()) {
                Text("The Husbands Of River Song")
            }
        }
        }
        #if os(macOS)
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        #elseif os(iOS)
        .listStyle(InsetListStyle())
        #endif
        .navigationTitle("New Series 9")
    }
}

struct NewSeries9_Previews: PreviewProvider {
    static var previews: some View {
        NewSeries9()
    }
}
