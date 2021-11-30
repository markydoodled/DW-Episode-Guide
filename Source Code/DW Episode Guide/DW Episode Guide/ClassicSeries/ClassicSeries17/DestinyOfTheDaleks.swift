//
//  DestinyOfTheDaleks.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct DestinyOfTheDaleks: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: DestinyOfTheDaleksClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<DestinyOfTheDaleksClass>
        @State var showingShare = false
        @AppStorage("DestinyOfTheDaleksNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DestinyOfTheDaleks_Previews: PreviewProvider {
    static var previews: some View {
        DestinyOfTheDaleks()
    }
}
