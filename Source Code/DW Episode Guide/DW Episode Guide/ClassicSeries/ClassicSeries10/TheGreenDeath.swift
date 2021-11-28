//
//  TheGreenDeath.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheGreenDeath: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheGreenDeathClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheGreenDeathClass>
        @State var showingShare = false
        @AppStorage("TheGreenDeathNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheGreenDeath_Previews: PreviewProvider {
    static var previews: some View {
        TheGreenDeath()
    }
}
