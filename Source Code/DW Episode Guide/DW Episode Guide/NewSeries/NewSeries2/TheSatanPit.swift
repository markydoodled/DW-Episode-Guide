//
//  TheSatanPit.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheSatanPit: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheSatanPitClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheSatanPitClass>
        @State var showingShare = false
        @AppStorage("TheSatanPitNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheSatanPit_Previews: PreviewProvider {
    static var previews: some View {
        TheSatanPit()
    }
}
