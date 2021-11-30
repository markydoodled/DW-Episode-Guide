//
//  NightmareOfEden.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct NightmareOfEden: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: NightmareOfEdenClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<NightmareOfEdenClass>
        @State var showingShare = false
        @AppStorage("NightmareOfEdenNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct NightmareOfEden_Previews: PreviewProvider {
    static var previews: some View {
        NightmareOfEden()
    }
}
