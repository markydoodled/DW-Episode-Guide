//
//  TheRunawayBride.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheRunawayBride: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheRunawayBrideClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheRunawayBrideClass>
        @State var showingShare = false
        @AppStorage("TheRunawayBrideNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheRunawayBride_Previews: PreviewProvider {
    static var previews: some View {
        TheRunawayBride()
    }
}
