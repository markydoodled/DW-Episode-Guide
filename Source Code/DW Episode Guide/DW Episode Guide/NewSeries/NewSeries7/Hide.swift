//
//  Hide.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct Hide: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: HideClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<HideClass>
        @State var showingShare = false
        @AppStorage("HideNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Hide_Previews: PreviewProvider {
    static var previews: some View {
        Hide()
    }
}
