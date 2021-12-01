//
//  Timelash.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct Timelash: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TimelashClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TimelashClass>
        @State var showingShare = false
        @AppStorage("TimelashNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Timelash_Previews: PreviewProvider {
    static var previews: some View {
        Timelash()
    }
}
