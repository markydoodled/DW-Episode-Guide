//
//  TheTombOfTheCybermen.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheTombOfTheCybermen: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheTombOfTheCybermenClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheTombOfTheCybermenClass>
        @State var showingShare = false
        @AppStorage("TheTombOfTheCybermenNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheTombOfTheCybermen_Previews: PreviewProvider {
    static var previews: some View {
        TheTombOfTheCybermen()
    }
}
