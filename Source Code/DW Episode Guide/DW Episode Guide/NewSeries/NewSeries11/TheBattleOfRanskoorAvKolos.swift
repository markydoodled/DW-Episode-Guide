//
//  TheBattleOfRanskoorAvKolos.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 19/11/2021.
//

import SwiftUI

struct TheBattleOfRanskoorAvKolos: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheBattleOfRanskoorAvKolosClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheBattleOfRanskoorAvKolosClass>
        @State var showingShare = false
        @AppStorage("TheBattleOfRanskoorAvKolosNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheBattleOfRanskoorAvKolos_Previews: PreviewProvider {
    static var previews: some View {
        TheBattleOfRanskoorAvKolos()
    }
}
