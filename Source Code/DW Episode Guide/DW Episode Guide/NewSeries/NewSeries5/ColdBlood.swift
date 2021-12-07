//
//  ColdBlood.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct ColdBlood: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ColdBloodClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ColdBloodClass>
        @State var showingShare = false
        @AppStorage("ColdBloodNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ColdBlood_Previews: PreviewProvider {
    static var previews: some View {
        ColdBlood()
    }
}
