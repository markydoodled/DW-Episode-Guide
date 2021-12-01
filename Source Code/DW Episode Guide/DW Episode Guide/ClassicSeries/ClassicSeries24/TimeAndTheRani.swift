//
//  TimeAndTheRani.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct TimeAndTheRani: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TimeAndTheRaniClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TimeAndTheRaniClass>
        @State var showingShare = false
        @AppStorage("MindwarpNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TimeAndTheRani_Previews: PreviewProvider {
    static var previews: some View {
        TimeAndTheRani()
    }
}
