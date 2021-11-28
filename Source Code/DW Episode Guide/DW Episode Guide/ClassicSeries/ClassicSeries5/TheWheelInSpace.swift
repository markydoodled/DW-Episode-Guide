//
//  TheWheelInSpace.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheWheelInSpace: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheWheelInSpaceClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheWheelInSpaceClass>
        @State var showingShare = false
        @AppStorage("TheWheelInSpaceNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheWheelInSpace_Previews: PreviewProvider {
    static var previews: some View {
        TheWheelInSpace()
    }
}
