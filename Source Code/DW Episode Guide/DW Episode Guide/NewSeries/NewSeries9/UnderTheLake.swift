//
//  UnderTheLake.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct UnderTheLake: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: UnderTheLakeClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<UnderTheLakeClass>
        @State var showingShare = false
        @AppStorage("UnderTheLakeNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct UnderTheLake_Previews: PreviewProvider {
    static var previews: some View {
        UnderTheLake()
    }
}
