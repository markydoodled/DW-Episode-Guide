//
//  RevengeOfTheCybermen.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct RevengeOfTheCybermen: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: RevengeOfTheCybermenClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<RevengeOfTheCybermenClass>
        @State var showingShare = false
        @AppStorage("RevengeOfTheCybermenNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RevengeOfTheCybermen_Previews: PreviewProvider {
    static var previews: some View {
        RevengeOfTheCybermen()
    }
}
