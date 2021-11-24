//
//  TheRescue.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheRescue: View {
@Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: TheRescueClass.entity(),
        sortDescriptors: [],
        animation: .default)
    private var items: FetchedResults<TheRescueClass>
    @State var showingShare = false
    @AppStorage("TheRescueNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheRescue_Previews: PreviewProvider {
    static var previews: some View {
        TheRescue()
    }
}
