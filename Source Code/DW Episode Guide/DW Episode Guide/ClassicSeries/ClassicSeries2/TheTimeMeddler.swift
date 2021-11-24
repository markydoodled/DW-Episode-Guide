//
//  TheTimeMeddler.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheTimeMeddler: View {
@Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: TheTimeMeddlerClass.entity(),
        sortDescriptors: [],
        animation: .default)
    private var items: FetchedResults<TheTimeMeddlerClass>
    @State var showingShare = false
    @AppStorage("TheTimeMeddlerNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheTimeMeddler_Previews: PreviewProvider {
    static var previews: some View {
        TheTimeMeddler()
    }
}
