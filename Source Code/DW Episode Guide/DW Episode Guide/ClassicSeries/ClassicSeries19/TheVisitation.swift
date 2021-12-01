//
//  TheVisitation.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct TheVisitation: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheVisitationClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheVisitationClass>
        @State var showingShare = false
        @AppStorage("TheVisitationNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheVisitation_Previews: PreviewProvider {
    static var previews: some View {
        TheVisitation()
    }
}
