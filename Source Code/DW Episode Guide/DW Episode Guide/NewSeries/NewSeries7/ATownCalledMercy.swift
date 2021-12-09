//
//  ATownCalledMercy.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct ATownCalledMercy: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ATownCalledMercyClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ATownCalledMercyClass>
        @State var showingShare = false
        @AppStorage("ATownCalledMercyNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ATownCalledMercy_Previews: PreviewProvider {
    static var previews: some View {
        ATownCalledMercy()
    }
}
