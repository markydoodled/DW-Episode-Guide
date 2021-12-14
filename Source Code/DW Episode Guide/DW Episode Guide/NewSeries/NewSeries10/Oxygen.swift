//
//  Oxygen.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct Oxygen: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: OxygenClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<OxygenClass>
        @State var showingShare = false
        @AppStorage("OxygenNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Oxygen_Previews: PreviewProvider {
    static var previews: some View {
        Oxygen()
    }
}
