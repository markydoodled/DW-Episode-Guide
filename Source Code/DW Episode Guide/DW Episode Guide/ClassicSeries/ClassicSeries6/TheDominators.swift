//
//  TheDominators.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheDominators: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheDominatorsClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheDominatorsClass>
        @State var showingShare = false
        @AppStorage("TheDominatorsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheDominators_Previews: PreviewProvider {
    static var previews: some View {
        TheDominators()
    }
}
