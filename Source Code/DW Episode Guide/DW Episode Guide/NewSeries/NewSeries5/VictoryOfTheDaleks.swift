//
//  VictoryOfTheDaleks.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct VictoryOfTheDaleks: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: VictoryOfTheDaleksClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<VictoryOfTheDaleksClass>
        @State var showingShare = false
        @AppStorage("VictoryOfTheDaleksNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct VictoryOfTheDaleks_Previews: PreviewProvider {
    static var previews: some View {
        VictoryOfTheDaleks()
    }
}
