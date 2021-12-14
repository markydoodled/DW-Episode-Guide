//
//  KnockKnock.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct KnockKnock: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: KnockKnockClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<KnockKnockClass>
        @State var showingShare = false
        @AppStorage("KnockKnockNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct KnockKnock_Previews: PreviewProvider {
    static var previews: some View {
        KnockKnock()
    }
}
