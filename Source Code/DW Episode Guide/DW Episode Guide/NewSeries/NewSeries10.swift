//
//  NewSeries10.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct NewSeries10: View {
    var body: some View {
        List {
            Group {
            NavigationLink(destination: TheReturnOfDoctorMysterio()) {
                Text("The Return Of Doctor Mysterio")
            }
            NavigationLink(destination: ThePilot()) {
                Text("The Pilot")
            }
            NavigationLink(destination: Smile()) {
                Text("Smile")
            }
            NavigationLink(destination: ThinIce()) {
                Text("Thin Ice")
            }
            NavigationLink(destination: KnockKnock()) {
                Text("Knock Knock")
            }
            NavigationLink(destination: Oxygen()) {
                Text("Oxygen")
            }
            NavigationLink(destination: Extremis()) {
                Text("Extremis")
            }
            NavigationLink(destination: ThePyramidAtTheEndOfTheWorld()) {
                Text("The Pyramid At The End Of The World")
            }
            NavigationLink(destination: TheLieOfTheLand()) {
                Text("The Lie Of The Land")
            }
            NavigationLink(destination: EmpressOfMars()) {
                Text("Empress Of Mars")
            }
        }
        Group {
            NavigationLink(destination: TheEatersOfLight()) {
                Text("The Eaters Of Light")
            }
            NavigationLink(destination: WorldEnoughAndTime()) {
                Text("World Enough And Time")
            }
            NavigationLink(destination: TheDoctorFalls()) {
                Text("The Doctor Falls")
            }
            NavigationLink(destination: TwiceUponATime()) {
                Text("Twice Upon A Time")
            }
        }
        }
        .listStyle(InsetListStyle(alternatesRowBackgrounds: true))
        .navigationTitle("New Series 10")
    }
}

struct NewSeries10_Previews: PreviewProvider {
    static var previews: some View {
        NewSeries10()
    }
}
