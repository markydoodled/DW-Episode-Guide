//
//  TheDaleks.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct TheDaleks: View {
	@Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: TheDaleksClass.entity(),
        sortDescriptors: [],
        animation: .default)
    private var items: FetchedResults<TheDaleksClass>
    @State var showingShare = false
    @AppStorage("TheDaleksNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheDaleks_Previews: PreviewProvider {
    static var previews: some View {
        TheDaleks()
    }
}
