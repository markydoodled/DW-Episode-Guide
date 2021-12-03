//
//  Dalek.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct Dalek: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: DalekClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<DalekClass>
        @State var showingShare = false
        @AppStorage("DalekNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Dalek_Previews: PreviewProvider {
    static var previews: some View {
        Dalek()
    }
}
