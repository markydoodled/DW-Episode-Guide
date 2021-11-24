//
//  TheSpaceMuseum.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheSpaceMuseum: View {
@Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: TheSpaceMuseumClass.entity(),
        sortDescriptors: [],
        animation: .default)
    private var items: FetchedResults<TheSpaceMuseumClass>
    @State var showingShare = false
    @AppStorage("TheSpaceMuseumNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheSpaceMuseum_Previews: PreviewProvider {
    static var previews: some View {
        TheSpaceMuseum()
    }
}
