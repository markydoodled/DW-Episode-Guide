//
//  DayOfTheMoon.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct DayOfTheMoon: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: DayOfTheMoonClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<DayOfTheMoonClass>
        @State var showingShare = false
        @AppStorage("DayOfTheMoonNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DayOfTheMoon_Previews: PreviewProvider {
    static var previews: some View {
        DayOfTheMoon()
    }
}
