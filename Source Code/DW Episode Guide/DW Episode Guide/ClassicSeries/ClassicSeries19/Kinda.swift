//
//  Kinda.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct Kinda: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: KindaClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<KindaClass>
        @State var showingShare = false
        @AppStorage("KindaNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Kinda_Previews: PreviewProvider {
    static var previews: some View {
        Kinda()
    }
}
