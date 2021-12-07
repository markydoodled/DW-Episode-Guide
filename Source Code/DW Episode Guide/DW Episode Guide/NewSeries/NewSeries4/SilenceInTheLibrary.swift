//
//  SilenceInTheLibrary.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct SilenceInTheLibrary: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: SilenceInTheLibraryClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<SilenceInTheLibraryClass>
        @State var showingShare = false
        @AppStorage("SilenceInTheLibraryNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SilenceInTheLibrary_Previews: PreviewProvider {
    static var previews: some View {
        SilenceInTheLibrary()
    }
}
