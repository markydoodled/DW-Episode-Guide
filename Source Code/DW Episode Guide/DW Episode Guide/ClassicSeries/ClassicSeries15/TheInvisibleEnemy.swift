//
//  TheInvisibleEnemy.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct TheInvisibleEnemy: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheInvisibleEnemyClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheInvisibleEnemyClass>
        @State var showingShare = false
        @AppStorage("TheInvisibleEnemyNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheInvisibleEnemy_Previews: PreviewProvider {
    static var previews: some View {
        TheInvisibleEnemy()
    }
}
