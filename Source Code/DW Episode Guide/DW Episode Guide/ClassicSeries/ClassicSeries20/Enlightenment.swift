//
//  Enlightenment.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct Enlightenment: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: EnlightenmentClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<EnlightenmentClass>
        @State var showingShare = false
        @AppStorage("EnlightenmentNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Enlightenment_Previews: PreviewProvider {
    static var previews: some View {
        Enlightenment()
    }
}
