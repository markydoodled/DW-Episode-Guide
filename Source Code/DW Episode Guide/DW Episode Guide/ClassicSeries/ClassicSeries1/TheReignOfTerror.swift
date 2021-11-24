//
//  TheReignOfTerror.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct TheReignOfTerror: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(entity: TheReignOfTerrorClass.entity(),
        sortDescriptors: [],
        animation: .default)
    private var items: FetchedResults<TheReignOfTerrorClass>
    @State var showingShare = false
    @AppStorage("TheReignOfTerrorNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheReignOfTerror_Previews: PreviewProvider {
    static var previews: some View {
        TheReignOfTerror()
    }
}
