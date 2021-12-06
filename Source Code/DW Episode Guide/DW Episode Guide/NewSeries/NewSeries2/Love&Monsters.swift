//
//  Love&Monsters.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct Love_Monsters: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: LoveAndMonstersClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<LoveAndMonstersClass>
        @State var showingShare = false
        @AppStorage("LoveAndMonstersNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Love_Monsters_Previews: PreviewProvider {
    static var previews: some View {
        Love_Monsters()
    }
}
