//
//  TheInvasionOfTime.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct TheInvasionOfTime: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheInvasionOfTimeClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheInvasionOfTimeClass>
        @State var showingShare = false
        @AppStorage("TheInvasionOfTimeNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheInvasionOfTime_Previews: PreviewProvider {
    static var previews: some View {
        TheInvasionOfTime()
    }
}
