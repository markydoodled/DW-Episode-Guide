//
//  TheGirlWhoDied.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheGirlWhoDied: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheGirlWhoDiedClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheGirlWhoDiedClass>
        @State var showingShare = false
        @AppStorage("TheGirlWhoDiedNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheGirlWhoDied_Previews: PreviewProvider {
    static var previews: some View {
        TheGirlWhoDied()
    }
}
