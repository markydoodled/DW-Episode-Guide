//
//  TheCrusade.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheCrusade: View {
@Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: TheCrusadeClass.entity(),
        sortDescriptors: [],
        animation: .default)
    private var items: FetchedResults<TheCrusadeClass>
    @State var showingShare = false
    @AppStorage("TheCrusadeNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheCrusade_Previews: PreviewProvider {
    static var previews: some View {
        TheCrusade()
    }
}
