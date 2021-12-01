//
//  Frontios.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct Frontios: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: FrontiosClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<FrontiosClass>
        @State var showingShare = false
        @AppStorage("FrontiosNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Frontios_Previews: PreviewProvider {
    static var previews: some View {
        Frontios()
    }
}
