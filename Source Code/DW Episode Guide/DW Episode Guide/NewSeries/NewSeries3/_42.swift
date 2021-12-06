//
//  _42.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct _42: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: _42Class.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<_42Class>
        @State var showingShare = false
        @AppStorage("42Notes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct _42_Previews: PreviewProvider {
    static var previews: some View {
        _42()
    }
}
