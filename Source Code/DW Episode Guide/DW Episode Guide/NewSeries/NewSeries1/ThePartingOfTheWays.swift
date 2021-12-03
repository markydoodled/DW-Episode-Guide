//
//  ThePartingOfTheWays.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct ThePartingOfTheWays: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ThePartingOfTheWaysClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ThePartingOfTheWaysClass>
        @State var showingShare = false
        @AppStorage("ThePartingOfTheWaysNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ThePartingOfTheWays_Previews: PreviewProvider {
    static var previews: some View {
        ThePartingOfTheWays()
    }
}
