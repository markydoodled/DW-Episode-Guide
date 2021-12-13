//
//  TheZygonInversion.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheZygonInversion: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheZygonInversionClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheZygonInversionClass>
        @State var showingShare = false
        @AppStorage("TheZygonInversionNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheZygonInversion_Previews: PreviewProvider {
    static var previews: some View {
        TheZygonInversion()
    }
}
