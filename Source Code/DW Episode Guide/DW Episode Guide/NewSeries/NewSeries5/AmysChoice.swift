//
//  AmysChoice.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct AmysChoice: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: AmysChoiceClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<AmysChoiceClass>
        @State var showingShare = false
        @AppStorage("AmysChoiceNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AmysChoice_Previews: PreviewProvider {
    static var previews: some View {
        AmysChoice()
    }
}
