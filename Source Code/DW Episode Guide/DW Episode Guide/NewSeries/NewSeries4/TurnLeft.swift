//
//  TurnLeft.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TurnLeft: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TurnLeftClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TurnLeftClass>
        @State var showingShare = false
        @AppStorage("TurnLeftNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TurnLeft_Previews: PreviewProvider {
    static var previews: some View {
        TurnLeft()
    }
}
