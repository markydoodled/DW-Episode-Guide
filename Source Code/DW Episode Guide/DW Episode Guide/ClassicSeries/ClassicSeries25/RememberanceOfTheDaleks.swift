//
//  RememberanceOfTheDaleks.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 14/11/2021.
//

import SwiftUI

struct RememberanceOfTheDaleks: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: RememranceOfTheDaleksClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<RememranceOfTheDaleksClass>
        @State var showingShare = false
        @AppStorage("RememberanceOfTheDaleksNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RememberanceOfTheDaleks_Previews: PreviewProvider {
    static var previews: some View {
        RememberanceOfTheDaleks()
    }
}
