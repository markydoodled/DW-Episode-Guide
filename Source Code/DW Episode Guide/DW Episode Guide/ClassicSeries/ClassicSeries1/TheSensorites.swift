//
//  TheSensorites.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct TheSensorites: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(entity: TheSensoritesClass.entity(),
        sortDescriptors: [],
        animation: .default)
    private var items: FetchedResults<TheSensoritesClass>
    @State var showingShare = false
    @AppStorage("TheSensoritesNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheSensorites_Previews: PreviewProvider {
    static var previews: some View {
        TheSensorites()
    }
}
