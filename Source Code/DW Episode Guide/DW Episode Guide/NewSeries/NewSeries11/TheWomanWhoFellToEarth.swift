//
//  TheWomanWhoFellToEarth.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheWomanWhoFellToEarth: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheWomanWhoFellToEarthClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheWomanWhoFellToEarthClass>
        @State var showingShare = false
        @AppStorage("TheWomanWhoFellToEarthNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheWomanWhoFellToEarth_Previews: PreviewProvider {
    static var previews: some View {
        TheWomanWhoFellToEarth()
    }
}
