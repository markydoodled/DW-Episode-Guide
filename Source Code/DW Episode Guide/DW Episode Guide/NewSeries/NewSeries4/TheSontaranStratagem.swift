//
//  TheSontaranStratagem.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheSontaranStratagem: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheSontaranStratagemClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheSontaranStratagemClass>
        @State var showingShare = false
        @AppStorage("TheSontaranStratagemNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheSontaranStratagem_Previews: PreviewProvider {
    static var previews: some View {
        TheSontaranStratagem()
    }
}
