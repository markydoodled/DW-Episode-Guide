//
//  HellBent.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct HellBent: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: HellBentClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<HellBentClass>
        @State var showingShare = false
        @AppStorage("HellBentNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct HellBent_Previews: PreviewProvider {
    static var previews: some View {
        HellBent()
    }
}
