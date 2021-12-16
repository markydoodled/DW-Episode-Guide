//
//  AscensionOfTheCybermen.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 19/11/2021.
//

import SwiftUI

struct AscensionOfTheCybermen: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: AscensionOfTheCybermenClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<AscensionOfTheCybermenClass>
        @State var showingShare = false
        @AppStorage("AscensionOfTheCybermanNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AscensionOfTheCybermen_Previews: PreviewProvider {
    static var previews: some View {
        AscensionOfTheCybermen()
    }
}
