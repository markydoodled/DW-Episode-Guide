//
//  ThePowerOfTheDaleks.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct ThePowerOfTheDaleks: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ThePowerOfTheDaleksClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ThePowerOfTheDaleksClass>
        @State var showingShare = false
        @AppStorage("ThePowerOfTheDaleksNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ThePowerOfTheDaleks_Previews: PreviewProvider {
    static var previews: some View {
        ThePowerOfTheDaleks()
    }
}
