//
//  TheMassacre.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheMassacre: View {
     @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(entity: TheMassacreClass.entity(),
        sortDescriptors: [],
        animation: .default)
    private var items: FetchedResults<TheMassacreClass>
    @State var showingShare = false
    @AppStorage("TheMassacreNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheMassacre_Previews: PreviewProvider {
    static var previews: some View {
        TheMassacre()
    }
}
