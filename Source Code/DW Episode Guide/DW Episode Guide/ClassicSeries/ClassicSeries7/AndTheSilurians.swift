//
//  AndTheSilurians.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct AndTheSilurians: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: AndTheSiluriansClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<AndTheSiluriansClass>
        @State var showingShare = false
        @AppStorage("AndTheSiluriansNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AndTheSilurians_Previews: PreviewProvider {
    static var previews: some View {
        AndTheSilurians()
    }
}
