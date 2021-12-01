//
//  MawdrynUndead.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct MawdrynUndead: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: MawdrynUndeadClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<MawdrynUndeadClass>
        @State var showingShare = false
        @AppStorage("MawdrynUndeadNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MawdrynUndead_Previews: PreviewProvider {
    static var previews: some View {
        MawdrynUndead()
    }
}
