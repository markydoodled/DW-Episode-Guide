//
//  TheImpossibleAstronaut.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheImpossibleAstronaut: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheImpossibleAstronautClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheImpossibleAstronautClass>
        @State var showingShare = false
        @AppStorage("TheImpossibleAstronautNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheImpossibleAstronaut_Previews: PreviewProvider {
    static var previews: some View {
        TheImpossibleAstronaut()
    }
}
