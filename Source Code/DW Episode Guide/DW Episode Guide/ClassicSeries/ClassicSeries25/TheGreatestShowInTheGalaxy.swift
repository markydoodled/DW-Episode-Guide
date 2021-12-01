//
//  TheGreatestShowInTheGalaxy.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 14/11/2021.
//

import SwiftUI

struct TheGreatestShowInTheGalaxy: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheGreatestShowInTheGalaxyClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheGreatestShowInTheGalaxyClass>
        @State var showingShare = false
        @AppStorage("TheGreatestShowInTheGalaxyNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheGreatestShowInTheGalaxy_Previews: PreviewProvider {
    static var previews: some View {
        TheGreatestShowInTheGalaxy()
    }
}
