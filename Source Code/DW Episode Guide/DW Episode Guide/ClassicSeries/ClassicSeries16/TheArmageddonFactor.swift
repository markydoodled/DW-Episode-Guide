//
//  TheArmageddonFactor.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct TheArmageddonFactor: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheArmageddonFactorClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheArmageddonFactorClass>
        @State var showingShare = false
        @AppStorage("TheArmageddonFactoraNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheArmageddonFactor_Previews: PreviewProvider {
    static var previews: some View {
        TheArmageddonFactor()
    }
}
