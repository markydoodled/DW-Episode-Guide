//
//  TheStonesOfBlood.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct TheStonesOfBlood: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheStonesOfBloodClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheStonesOfBloodClass>
        @State var showingShare = false
        @AppStorage("TheStonesOfBloodNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheStonesOfBlood_Previews: PreviewProvider {
    static var previews: some View {
        TheStonesOfBlood()
    }
}
