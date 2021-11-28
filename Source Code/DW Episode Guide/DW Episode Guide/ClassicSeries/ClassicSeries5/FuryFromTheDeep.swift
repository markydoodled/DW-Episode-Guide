//
//  FuryFromTheDeep.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct FuryFromTheDeep: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: FuryFromTheDeepClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<FuryFromTheDeepClass>
        @State var showingShare = false
        @AppStorage("FuryFromTheDeepNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FuryFromTheDeep_Previews: PreviewProvider {
    static var previews: some View {
        FuryFromTheDeep()
    }
}
