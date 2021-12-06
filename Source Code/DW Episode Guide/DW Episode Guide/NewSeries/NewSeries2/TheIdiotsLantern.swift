//
//  TheIdiotsLantern.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheIdiotsLantern: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheIdiotsLanternClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheIdiotsLanternClass>
        @State var showingShare = false
        @AppStorage("TheIdiotsLanternNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheIdiotsLantern_Previews: PreviewProvider {
    static var previews: some View {
        TheIdiotsLantern()
    }
}
