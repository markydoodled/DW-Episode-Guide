//
//  TheEleventhHour.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheEleventhHour: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheEleventhHourClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheEleventhHourClass>
        @State var showingShare = false
        @AppStorage("TheEleventhHourNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheEleventhHour_Previews: PreviewProvider {
    static var previews: some View {
        TheEleventhHour()
    }
}
