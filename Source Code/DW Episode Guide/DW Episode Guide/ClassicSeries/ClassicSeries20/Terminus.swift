//
//  Terminus.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct Terminus: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TerminusClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TerminusClass>
        @State var showingShare = false
        @AppStorage("TerminusNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Terminus_Previews: PreviewProvider {
    static var previews: some View {
        Terminus()
    }
}
