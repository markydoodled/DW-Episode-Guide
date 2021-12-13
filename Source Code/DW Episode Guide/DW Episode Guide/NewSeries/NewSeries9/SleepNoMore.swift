//
//  SleepNoMore.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct SleepNoMore: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: SleepNoMoreClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<SleepNoMoreClass>
        @State var showingShare = false
        @AppStorage("SleepNoMoreNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SleepNoMore_Previews: PreviewProvider {
    static var previews: some View {
        SleepNoMore()
    }
}
