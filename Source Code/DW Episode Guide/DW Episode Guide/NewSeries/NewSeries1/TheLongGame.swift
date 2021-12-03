//
//  TheLongGame.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheLongGame: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheLongGameClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheLongGameClass>
        @State var showingShare = false
        @AppStorage("TheLongGameNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheLongGame_Previews: PreviewProvider {
    static var previews: some View {
        TheLongGame()
    }
}
