//
//  TheBeastBelow.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheBeastBelow: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheBeastBelowClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheBeastBelowClass>
        @State var showingShare = false
        @AppStorage("TheBeastBelowNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheBeastBelow_Previews: PreviewProvider {
    static var previews: some View {
        TheBeastBelow()
    }
}
