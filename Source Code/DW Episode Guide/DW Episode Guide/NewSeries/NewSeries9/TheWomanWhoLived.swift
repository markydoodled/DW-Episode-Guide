//
//  TheWomanWhoLived.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheWomanWhoLived: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheWomanWhoLivedClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheWomanWhoLivedClass>
        @State var showingShare = false
        @AppStorage("TheWomanWhoLivedNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheWomanWhoLived_Previews: PreviewProvider {
    static var previews: some View {
        TheWomanWhoLived()
    }
}
