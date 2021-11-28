//
//  FrontierInSpace.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct FrontierInSpace: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: FrontierInSpaceClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<FrontierInSpaceClass>
        @State var showingShare = false
        @AppStorage("FrontierInSpaceNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FrontierInSpace_Previews: PreviewProvider {
    static var previews: some View {
        FrontierInSpace()
    }
}
