//
//  TerrorOfTheAutons.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TerrorOfTheAutons: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TerrorOfTheAutonsClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TerrorOfTheAutonsClass>
        @State var showingShare = false
        @AppStorage("TerrorOfTheAutonsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TerrorOfTheAutons_Previews: PreviewProvider {
    static var previews: some View {
        TerrorOfTheAutons()
    }
}
