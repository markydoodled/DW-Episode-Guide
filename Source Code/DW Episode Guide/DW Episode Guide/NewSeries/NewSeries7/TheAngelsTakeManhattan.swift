//
//  TheAngelsTakeManhattan.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheAngelsTakeManhattan: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheAngelsTakeManhattanClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheAngelsTakeManhattanClass>
        @State var showingShare = false
        @AppStorage("TheAngelsTakeManhattanNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheAngelsTakeManhattan_Previews: PreviewProvider {
    static var previews: some View {
        TheAngelsTakeManhattan()
    }
}
