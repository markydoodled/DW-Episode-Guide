//
//  TheTimelessChildren.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 19/11/2021.
//

import SwiftUI

struct TheTimelessChildren: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheTimelessChildrenClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheTimelessChildrenClass>
        @State var showingShare = false
        @AppStorage("TheTimelessChildrenNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheTimelessChildren_Previews: PreviewProvider {
    static var previews: some View {
        TheTimelessChildren()
    }
}
