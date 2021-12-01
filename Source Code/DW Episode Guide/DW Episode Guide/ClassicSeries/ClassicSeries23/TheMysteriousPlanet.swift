//
//  TheMysteriousPlanet.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct TheMysteriousPlanet: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheMysteriousPlanetClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheMysteriousPlanetClass>
        @State var showingShare = false
        @AppStorage("TheMysteriousPlanetNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheMysteriousPlanet_Previews: PreviewProvider {
    static var previews: some View {
        TheMysteriousPlanet()
    }
}
