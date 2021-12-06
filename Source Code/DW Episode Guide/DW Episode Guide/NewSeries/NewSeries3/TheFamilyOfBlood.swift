//
//  TheFamilyOfBlood.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheFamilyOfBlood: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheFamilyOfBloodClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheFamilyOfBloodClass>
        @State var showingShare = false
        @AppStorage("TheFamilyOfBloodNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheFamilyOfBlood_Previews: PreviewProvider {
    static var previews: some View {
        TheFamilyOfBlood()
    }
}
