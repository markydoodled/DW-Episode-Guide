//
//  TheEnemyOfTheWorld.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheEnemyOfTheWorld: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheEnemyOfTheWorldClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheEnemyOfTheWorldClass>
        @State var showingShare = false
        @AppStorage("TheEnemyOfTheWorldNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheEnemyOfTheWorld_Previews: PreviewProvider {
    static var previews: some View {
        TheEnemyOfTheWorld()
    }
}
