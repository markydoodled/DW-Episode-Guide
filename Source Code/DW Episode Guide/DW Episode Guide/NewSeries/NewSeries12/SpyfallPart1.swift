//
//  SpyfallPart1.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 19/11/2021.
//

import SwiftUI

struct SpyfallPart1: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: SpyfallPart1Class.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<SpyfallPart1Class>
        @State var showingShare = false
        @AppStorage("SpyfallPart1Notes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SpyfallPart1_Previews: PreviewProvider {
    static var previews: some View {
        SpyfallPart1()
    }
}
