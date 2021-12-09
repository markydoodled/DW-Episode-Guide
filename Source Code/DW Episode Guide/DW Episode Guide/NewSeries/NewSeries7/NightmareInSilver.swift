//
//  NightmareInSilver.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct NightmareInSilver: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: NightmareInSilverClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<NightmareInSilverClass>
        @State var showingShare = false
        @AppStorage("NightmareInSilverNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct NightmareInSilver_Previews: PreviewProvider {
    static var previews: some View {
        NightmareInSilver()
    }
}
