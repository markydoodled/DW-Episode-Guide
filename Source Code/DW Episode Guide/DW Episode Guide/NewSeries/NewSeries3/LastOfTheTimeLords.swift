//
//  LastOfTheTimeLords.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct LastOfTheTimeLords: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: LastOfTheTimeLordsClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<LastOfTheTimeLordsClass>
        @State var showingShare = false
        @AppStorage("LastOfTheTimeLordsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LastOfTheTimeLords_Previews: PreviewProvider {
    static var previews: some View {
        LastOfTheTimeLords()
    }
}
