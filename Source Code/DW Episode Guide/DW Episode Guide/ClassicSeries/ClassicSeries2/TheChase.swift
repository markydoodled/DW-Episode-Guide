//
//  TheChase.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheChase: View {
@Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: TheChaseClass.entity(),
        sortDescriptors: [],
        animation: .default)
    private var items: FetchedResults<TheChaseClass>
    @State var showingShare = false
    @AppStorage("TheChaseNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheChase_Previews: PreviewProvider {
    static var previews: some View {
        TheChase()
    }
}
