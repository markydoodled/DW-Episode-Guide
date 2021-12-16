//
//  WarOfTheSontarans.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 20/11/2021.
//

import SwiftUI

struct WarOfTheSontarans: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: WarOfTheSontaransClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<WarOfTheSontaransClass>
        @State var showingShare = false
        @AppStorage("WarOfTheSontaransNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct WarOfTheSontarans_Previews: PreviewProvider {
    static var previews: some View {
        WarOfTheSontarans()
    }
}
