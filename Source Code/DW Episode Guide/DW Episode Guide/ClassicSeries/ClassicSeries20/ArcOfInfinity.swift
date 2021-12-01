//
//  ArcOfInfinity.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct ArcOfInfinity: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ArcOfInfinityClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ArcOfInfinityClass>
        @State var showingShare = false
        @AppStorage("ArcOfInfinityNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ArcOfInfinity_Previews: PreviewProvider {
    static var previews: some View {
        ArcOfInfinity()
    }
}
