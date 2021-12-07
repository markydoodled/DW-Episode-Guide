//
//  TheBigBang.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheBigBang: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheBigBangClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheBigBangClass>
        @State var showingShare = false
        @AppStorage("TheBigBangNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheBigBang_Previews: PreviewProvider {
    static var previews: some View {
        TheBigBang()
    }
}
