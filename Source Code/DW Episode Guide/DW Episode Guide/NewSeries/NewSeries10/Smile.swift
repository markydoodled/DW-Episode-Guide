//
//  Smile.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct Smile: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: SmileClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<SmileClass>
        @State var showingShare = false
        @AppStorage("SmileNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Smile_Previews: PreviewProvider {
    static var previews: some View {
        Smile()
    }
}
