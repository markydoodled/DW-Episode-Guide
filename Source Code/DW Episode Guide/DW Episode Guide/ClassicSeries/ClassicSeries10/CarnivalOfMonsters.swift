//
//  CarnivalOfMonsters.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct CarnivalOfMonsters: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: CarnivalOfMonstersClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<CarnivalOfMonstersClass>
        @State var showingShare = false
        @AppStorage("CarnivalOfMonstersNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CarnivalOfMonsters_Previews: PreviewProvider {
    static var previews: some View {
        CarnivalOfMonsters()
    }
}
