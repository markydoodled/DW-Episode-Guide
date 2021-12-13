//
//  Listen.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct Listen: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ListenClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ListenClass>
        @State var showingShare = false
        @AppStorage("ListenNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Listen_Previews: PreviewProvider {
    static var previews: some View {
        Listen()
    }
}
