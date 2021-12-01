//
//  TheTwinDilemma.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct TheTwinDilemma: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheTwinDilemmaClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheTwinDilemmaClass>
        @State var showingShare = false
        @AppStorage("TheTwinDilemmaNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheTwinDilemma_Previews: PreviewProvider {
    static var previews: some View {
        TheTwinDilemma()
    }
}
