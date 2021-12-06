//
//  DaleksInManhattan.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct DaleksInManhattan: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: DaleksInManhattanClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<DaleksInManhattanClass>
        @State var showingShare = false
        @AppStorage("DaleksInManhattanNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DaleksInManhattan_Previews: PreviewProvider {
    static var previews: some View {
        DaleksInManhattan()
    }
}
