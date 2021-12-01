//
//  SilverNemesis.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 14/11/2021.
//

import SwiftUI

struct SilverNemesis: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: SilverNemesisClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<SilverNemesisClass>
        @State var showingShare = false
        @AppStorage("SilverNemesisNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SilverNemesis_Previews: PreviewProvider {
    static var previews: some View {
        SilverNemesis()
    }
}
