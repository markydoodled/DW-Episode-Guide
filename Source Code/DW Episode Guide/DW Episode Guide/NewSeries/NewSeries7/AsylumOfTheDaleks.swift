//
//  AsylumOfTheDaleks.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct AsylumOfTheDaleks: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: AsylumOfTheDaleksClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<AsylumOfTheDaleksClass>
        @State var showingShare = false
        @AppStorage("AsylumOfTheDaleksNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AsylumOfTheDaleks_Previews: PreviewProvider {
    static var previews: some View {
        AsylumOfTheDaleks()
    }
}
