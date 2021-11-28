//
//  Galaxy4.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct Galaxy4: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: Galaxy4Class.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<Galaxy4Class>
        @State var showingShare = false
        @AppStorage("Galaxy4Notes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Galaxy4_Previews: PreviewProvider {
    static var previews: some View {
        Galaxy4()
    }
}
