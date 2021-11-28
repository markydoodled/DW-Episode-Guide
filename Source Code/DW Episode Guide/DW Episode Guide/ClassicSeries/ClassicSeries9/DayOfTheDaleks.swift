//
//  DayOfTheDaleks.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct DayOfTheDaleks: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: DayOfTheDaleksClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<DayOfTheDaleksClass>
        @State var showingShare = false
        @AppStorage("DayOfTheDaleksNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DayOfTheDaleks_Previews: PreviewProvider {
    static var previews: some View {
        DayOfTheDaleks()
    }
}
