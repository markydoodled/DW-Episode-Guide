//
//  IntoTheDalek.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct IntoTheDalek: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: IntoTheDalekClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<IntoTheDalekClass>
        @State var showingShare = false
        @AppStorage("IntoTheDalekNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct IntoTheDalek_Previews: PreviewProvider {
    static var previews: some View {
        IntoTheDalek()
    }
}
