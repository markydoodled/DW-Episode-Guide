//
//  AttackOfTheCybermen.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct AttackOfTheCybermen: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: AttackOfTheCybermenClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<AttackOfTheCybermenClass>
        @State var showingShare = false
        @AppStorage("AttackOfTheCybermenNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AttackOfTheCybermen_Previews: PreviewProvider {
    static var previews: some View {
        AttackOfTheCybermen()
    }
}
