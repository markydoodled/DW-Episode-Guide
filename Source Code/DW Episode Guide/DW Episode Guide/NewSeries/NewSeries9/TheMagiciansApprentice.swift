//
//  TheMagiciansApprentice.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheMagiciansApprentice: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheMagiciansApprenticeClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheMagiciansApprenticeClass>
        @State var showingShare = false
        @AppStorage("TheMagiciansApprenticeNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheMagiciansApprentice_Previews: PreviewProvider {
    static var previews: some View {
        TheMagiciansApprentice()
    }
}
