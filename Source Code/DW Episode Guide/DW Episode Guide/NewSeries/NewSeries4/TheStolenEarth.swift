//
//  TheStolenEarth.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheStolenEarth: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheStolenEarthClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheStolenEarthClass>
        @State var showingShare = false
        @AppStorage("TheStolenEarthNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheStolenEarth_Previews: PreviewProvider {
    static var previews: some View {
        TheStolenEarth()
    }
}
