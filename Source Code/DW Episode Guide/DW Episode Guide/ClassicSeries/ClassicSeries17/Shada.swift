//
//  Shada.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct Shada: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ShadaClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ShadaClass>
        @State var showingShare = false
        @AppStorage("ShadaNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Shada_Previews: PreviewProvider {
    static var previews: some View {
        Shada()
    }
}
