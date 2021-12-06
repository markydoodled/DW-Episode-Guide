//
//  Blink.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct Blink: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: BlinkClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<BlinkClass>
        @State var showingShare = false
        @AppStorage("BlinkNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Blink_Previews: PreviewProvider {
    static var previews: some View {
        Blink()
    }
}
