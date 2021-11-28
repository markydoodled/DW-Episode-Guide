//
//  TheClawsOfAxos.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheClawsOfAxos: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheClawsOfAxosClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheClawsOfAxosClass>
        @State var showingShare = false
        @AppStorage("TheClawsOfAxosNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheClawsOfAxos_Previews: PreviewProvider {
    static var previews: some View {
        TheClawsOfAxos()
    }
}
