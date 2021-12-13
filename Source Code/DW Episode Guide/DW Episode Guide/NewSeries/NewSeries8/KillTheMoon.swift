//
//  KillTheMoon.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct KillTheMoon: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: KillTheMoonClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<KillTheMoonClass>
        @State var showingShare = false
        @AppStorage("KillTheMoonNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct KillTheMoon_Previews: PreviewProvider {
    static var previews: some View {
        KillTheMoon()
    }
}
