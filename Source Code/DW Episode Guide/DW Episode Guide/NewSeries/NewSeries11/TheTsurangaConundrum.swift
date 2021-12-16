//
//  TheTsurangaConundrum.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheTsurangaConundrum: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheTsurangaConundrumClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheTsurangaConundrumClass>
        @State var showingShare = false
        @AppStorage("TheTsurangaConundrumNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheTsurangaConundrum_Previews: PreviewProvider {
    static var previews: some View {
        TheTsurangaConundrum()
    }
}
