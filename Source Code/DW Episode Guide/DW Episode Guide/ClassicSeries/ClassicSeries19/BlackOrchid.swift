//
//  BlackOrchid.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct BlackOrchid: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: BlackOrchidClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<BlackOrchidClass>
        @State var showingShare = false
        @AppStorage("BlackOrchidNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct BlackOrchid_Previews: PreviewProvider {
    static var previews: some View {
        BlackOrchid()
    }
}
