//
//  ToothAndClaw.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct ToothAndClaw: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ToothAndClawClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ToothAndClawClass>
        @State var showingShare = false
        @AppStorage("ToothAndClawNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ToothAndClaw_Previews: PreviewProvider {
    static var previews: some View {
        ToothAndClaw()
    }
}
