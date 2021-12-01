//
//  RevelationOfTheDaleks.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct RevelationOfTheDaleks: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: RevelationOfTheDaleksClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<RevelationOfTheDaleksClass>
        @State var showingShare = false
        @AppStorage("RevelationOfTheDaleksNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RevelationOfTheDaleks_Previews: PreviewProvider {
    static var previews: some View {
        RevelationOfTheDaleks()
    }
}
