//
//  Doomsday.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct Doomsday: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: DoomsdayClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<DoomsdayClass>
        @State var showingShare = false
        @AppStorage("DoomsdayNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Doomsday_Previews: PreviewProvider {
    static var previews: some View {
        Doomsday()
    }
}
