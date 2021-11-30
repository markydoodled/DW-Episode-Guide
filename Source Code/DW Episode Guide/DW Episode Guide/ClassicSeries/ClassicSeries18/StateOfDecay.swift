//
//  StateOfDecay.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct StateOfDecay: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: StateOfDecayClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<StateOfDecayClass>
        @State var showingShare = false
        @AppStorage("StateOfDecayNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct StateOfDecay_Previews: PreviewProvider {
    static var previews: some View {
        StateOfDecay()
    }
}
