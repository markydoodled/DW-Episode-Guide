//
//  FullCircle.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct FullCircle: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: FullCircleClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<FullCircleClass>
        @State var showingShare = false
        @AppStorage("FullCircleNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FullCircle_Previews: PreviewProvider {
    static var previews: some View {
        FullCircle()
    }
}
