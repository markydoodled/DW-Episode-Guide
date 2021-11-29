//
//  TheMasqueOfMandragora.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct TheMasqueOfMandragora: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheMasqueOfMandragoraClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheMasqueOfMandragoraClass>
        @State var showingShare = false
        @AppStorage("TheMasqueOfMandragoraNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheMasqueOfMandragora_Previews: PreviewProvider {
    static var previews: some View {
        TheMasqueOfMandragora()
    }
}
