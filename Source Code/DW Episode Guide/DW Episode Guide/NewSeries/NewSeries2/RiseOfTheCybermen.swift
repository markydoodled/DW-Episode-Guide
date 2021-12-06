//
//  RiseOfTheCybermen.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct RiseOfTheCybermen: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: RiseOfTheCybermenClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<RiseOfTheCybermenClass>
        @State var showingShare = false
        @AppStorage("RiseOfTheCybermenNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RiseOfTheCybermen_Previews: PreviewProvider {
    static var previews: some View {
        RiseOfTheCybermen()
    }
}
