//
//  Rose.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct Rose: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: RoseClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<RoseClass>
        @State var showingShare = false
        @AppStorage("RoseNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Rose_Previews: PreviewProvider {
    static var previews: some View {
        Rose()
    }
}
