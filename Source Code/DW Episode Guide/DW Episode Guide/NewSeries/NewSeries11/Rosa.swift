//
//  Rosa.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct Rosa: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: RosaClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<RosaClass>
        @State var showingShare = false
        @AppStorage("RosaNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Rosa_Previews: PreviewProvider {
    static var previews: some View {
        Rosa()
    }
}
