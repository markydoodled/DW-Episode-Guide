//
//  NikolaTeslasNightOfTerror.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 19/11/2021.
//

import SwiftUI

struct NikolaTeslasNightOfTerror: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: NikolaTeslasNightOfTerrorClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<NikolaTeslasNightOfTerrorClass>
        @State var showingShare = false
        @AppStorage("NikolaTeslasNightOfTerrorNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct NikolaTeslasNightOfTerror_Previews: PreviewProvider {
    static var previews: some View {
        NikolaTeslasNightOfTerror()
    }
}
