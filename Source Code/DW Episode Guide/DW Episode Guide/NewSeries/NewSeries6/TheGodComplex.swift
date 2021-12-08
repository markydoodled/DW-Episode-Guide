//
//  TheGodComplex.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheGodComplex: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheGodComplexClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheGodComplexClass>
        @State var showingShare = false
        @AppStorage("TheGodComplexNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheGodComplex_Previews: PreviewProvider {
    static var previews: some View {
        TheGodComplex()
    }
}
