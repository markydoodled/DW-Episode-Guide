//
//  TheLazarusExperiment.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheLazarusExperiment: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheLazarusExperimentClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheLazarusExperimentClass>
        @State var showingShare = false
        @AppStorage("TheLararusExperimentNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheLazarusExperiment_Previews: PreviewProvider {
    static var previews: some View {
        TheLazarusExperiment()
    }
}
