//
//  TheEndOfTimePart2.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheEndOfTimePart2: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheEndOfTimePart2Class.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheEndOfTimePart2Class>
        @State var showingShare = false
        @AppStorage("TheEndOfTimePart2Notes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheEndOfTimePart2_Previews: PreviewProvider {
    static var previews: some View {
        TheEndOfTimePart2()
    }
}
