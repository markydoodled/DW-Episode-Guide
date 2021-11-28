//
//  ColonyInSpace.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct ColonyInSpace: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ColonyInSpaceClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ColonyInSpaceClass>
        @State var showingShare = false
        @AppStorage("ColonyInSpaceNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ColonyInSpace_Previews: PreviewProvider {
    static var previews: some View {
        ColonyInSpace()
    }
}
