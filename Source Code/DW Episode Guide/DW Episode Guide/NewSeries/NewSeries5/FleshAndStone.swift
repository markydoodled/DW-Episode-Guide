//
//  FleshAndStone.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct FleshAndStone: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: FleshAndStoneClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<FleshAndStoneClass>
        @State var showingShare = false
        @AppStorage("FleshAndStoneNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FleshAndStone_Previews: PreviewProvider {
    static var previews: some View {
        FleshAndStone()
    }
}
