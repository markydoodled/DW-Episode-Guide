//
//  TheTimeOfAngels.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheTimeOfAngels: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheTimeOfAngelsClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheTimeOfAngelsClass>
        @State var showingShare = false
        @AppStorage("TheTimeOfAngelsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheTimeOfAngels_Previews: PreviewProvider {
    static var previews: some View {
        TheTimeOfAngels()
    }
}
