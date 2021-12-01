//
//  TheCurseOfFenric.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 14/11/2021.
//

import SwiftUI

struct TheCurseOfFenric: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheCurseOfFenricClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheCurseOfFenricClass>
        @State var showingShare = false
        @AppStorage("TheCurseOfFenricNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheCurseOfFenric_Previews: PreviewProvider {
    static var previews: some View {
        TheCurseOfFenric()
    }
}
