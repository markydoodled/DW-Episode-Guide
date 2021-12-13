//
//  InTheForestOfTheNight.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct InTheForestOfTheNight: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: InTheForestOfTheNightClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<InTheForestOnTheNightClass>
        @State var showingShare = false
        @AppStorage("InTheForestOfTheNightNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct InTheForestOfTheNight_Previews: PreviewProvider {
    static var previews: some View {
        InTheForestOfTheNight()
    }
}
