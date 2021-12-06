//
//  Utopia.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct Utopia: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: UtopiaClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<UtopiaClass>
        @State var showingShare = false
        @AppStorage("UtopiaNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Utopia_Previews: PreviewProvider {
    static var previews: some View {
        Utopia()
    }
}
