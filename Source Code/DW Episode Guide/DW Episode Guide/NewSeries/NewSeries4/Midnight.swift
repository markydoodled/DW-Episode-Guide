//
//  Midnight.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct Midnight: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: MidnightClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<MidnightClass>
        @State var showingShare = false
        @AppStorage("MidnightNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Midnight_Previews: PreviewProvider {
    static var previews: some View {
        Midnight()
    }
}
