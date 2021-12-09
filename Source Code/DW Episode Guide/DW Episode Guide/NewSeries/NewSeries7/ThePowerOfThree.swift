//
//  ThePowerOfThree.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct ThePowerOfThree: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ThePowerOfThreeClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ThePowerOfThreeClass>
        @State var showingShare = false
        @AppStorage("ThePowerOfThreeNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ThePowerOfThree_Previews: PreviewProvider {
    static var previews: some View {
        ThePowerOfThree()
    }
}
