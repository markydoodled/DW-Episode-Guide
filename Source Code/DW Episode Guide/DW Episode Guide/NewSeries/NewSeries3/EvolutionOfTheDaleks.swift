//
//  EvolutionOfTheDaleks.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct EvolutionOfTheDaleks: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: EvolutionOfTheDaleksClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<EvolutionOfTheDaleksClass>
        @State var showingShare = false
        @AppStorage("EvolutionOfTheDaleksNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct EvolutionOfTheDaleks_Previews: PreviewProvider {
    static var previews: some View {
        EvolutionOfTheDaleks()
    }
}
