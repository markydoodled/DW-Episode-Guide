//
//  TheMindOfEvil.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheMindOfEvil: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheMindOfEvilClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheMindOfEvilClass>
        @State var showingShare = false
        @AppStorage("TheMindOfEvilNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheMindOfEvil_Previews: PreviewProvider {
    static var previews: some View {
        TheMindOfEvil()
    }
}
