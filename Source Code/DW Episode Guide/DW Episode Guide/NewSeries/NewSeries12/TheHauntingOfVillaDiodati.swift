//
//  TheHauntingOfVillaDiodati.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 19/11/2021.
//

import SwiftUI

struct TheHauntingOfVillaDiodati: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheHauntingOfVillaDiodatiClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheHauntingOfVillaDiodatiClass>
        @State var showingShare = false
        @AppStorage("TheHauntingOfVillaDiodatiNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheHauntingOfVillaDiodati_Previews: PreviewProvider {
    static var previews: some View {
        TheHauntingOfVillaDiodati()
    }
}
