//
//  TheFacelessOnes.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheFacelessOnes: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheFacelessOnesClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheFacelessOnesClass>
        @State var showingShare = false
        @AppStorage("TheFacelessOnesNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheFacelessOnes_Previews: PreviewProvider {
    static var previews: some View {
        TheFacelessOnes()
    }
}
