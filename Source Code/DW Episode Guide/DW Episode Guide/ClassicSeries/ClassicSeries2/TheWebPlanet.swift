//
//  TheWebPlanet.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheWebPlanet: View {
@Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: TheWebPlanetClass.entity(),
        sortDescriptors: [],
        animation: .default)
    private var items: FetchedResults<TheWebPlanetClass>
    @State var showingShare = false
    @AppStorage("TheWebPlanetNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheWebPlanet_Previews: PreviewProvider {
    static var previews: some View {
        TheWebPlanet()
    }
}
