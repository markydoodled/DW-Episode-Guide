//
//  ThePoisonSky.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct ThePoisonSky: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ThePoisonSkyClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ThePoisonSkyClass>
        @State var showingShare = false
        @AppStorage("ThePoisonSkyNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ThePoisonSky_Previews: PreviewProvider {
    static var previews: some View {
        ThePoisonSky()
    }
}
