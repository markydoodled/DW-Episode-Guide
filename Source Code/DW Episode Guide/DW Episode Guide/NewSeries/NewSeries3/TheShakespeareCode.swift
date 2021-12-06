//
//  TheShakespeareCode.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheShakespeareCode: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheShakespeareCodeClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheShakespeareCodeClass>
        @State var showingShare = false
        @AppStorage("TheShakespeareCodeNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheShakespeareCode_Previews: PreviewProvider {
    static var previews: some View {
        TheShakespeareCode()
    }
}
