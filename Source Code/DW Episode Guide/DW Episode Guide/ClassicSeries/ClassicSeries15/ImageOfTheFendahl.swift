//
//  ImageOfTheFendahl.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct ImageOfTheFendahl: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ImageOfTheFendahlClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ImageOfTheFendahlClass>
        @State var showingShare = false
        @AppStorage("ImageOfTheFendahlNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ImageOfTheFendahl_Previews: PreviewProvider {
    static var previews: some View {
        ImageOfTheFendahl()
    }
}
