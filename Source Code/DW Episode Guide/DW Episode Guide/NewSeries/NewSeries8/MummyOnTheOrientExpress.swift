//
//  MummyOnTheOrientExpress.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct MummyOnTheOrientExpress: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: MummyOnTheOrientExpressClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<MummyOnTheOrientExpressClass>
        @State var showingShare = false
        @AppStorage("MummyOnTheOrientExpressNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MummyOnTheOrientExpress_Previews: PreviewProvider {
    static var previews: some View {
        MummyOnTheOrientExpress()
    }
}
