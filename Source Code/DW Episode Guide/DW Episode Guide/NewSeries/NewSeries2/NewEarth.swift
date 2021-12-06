//
//  NewEarth.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct NewEarth: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: NewEarthClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<NewEarthClass>
        @State var showingShare = false
        @AppStorage("NewEarthNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct NewEarth_Previews: PreviewProvider {
    static var previews: some View {
        NewEarth()
    }
}
