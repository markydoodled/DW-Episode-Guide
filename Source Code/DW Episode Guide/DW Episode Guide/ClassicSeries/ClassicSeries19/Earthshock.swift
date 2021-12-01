//
//  Earthshock.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct Earthshock: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: EarthshockClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<EarthshockClass>
        @State var showingShare = false
        @AppStorage("EarthshockNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Earthshock_Previews: PreviewProvider {
    static var previews: some View {
        Earthshock()
    }
}
