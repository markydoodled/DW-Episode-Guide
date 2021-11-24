//
//  TheRomans.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheRomans: View {
@Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: TheRomansClass.entity(),
        sortDescriptors: [],
        animation: .default)
    private var items: FetchedResults<TheRomansClass>
    @State var showingShare = false
    @AppStorage("TheRomanNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheRomans_Previews: PreviewProvider {
    static var previews: some View {
        TheRomans()
    }
}
