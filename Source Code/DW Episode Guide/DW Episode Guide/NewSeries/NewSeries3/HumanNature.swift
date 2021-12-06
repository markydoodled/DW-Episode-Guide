//
//  HumanNature.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct HumanNature: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: HumanNatureClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<HumanNatureClass>
        @State var showingShare = false
        @AppStorage("HumanNatureNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct HumanNature_Previews: PreviewProvider {
    static var previews: some View {
        HumanNature()
    }
}
