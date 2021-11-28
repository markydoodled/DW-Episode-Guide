//
//  SpearheadFromSpace.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct SpearheadFromSpace: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: SpearheadFromSpaceClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<SpearheadFromSpaceClass>
        @State var showingShare = false
        @AppStorage("SpearheadFromSpaceNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SpearheadFromSpace_Previews: PreviewProvider {
    static var previews: some View {
        SpearheadFromSpace()
    }
}
