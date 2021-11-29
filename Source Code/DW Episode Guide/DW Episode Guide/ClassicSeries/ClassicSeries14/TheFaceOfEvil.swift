//
//  TheFaceOfEvil.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct TheFaceOfEvil: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheFaceOfEvilClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheFaceOfEvilClass>
        @State var showingShare = false
        @AppStorage("TheFaceOfEvilNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheFaceOfEvil_Previews: PreviewProvider {
    static var previews: some View {
        TheFaceOfEvil()
    }
}
