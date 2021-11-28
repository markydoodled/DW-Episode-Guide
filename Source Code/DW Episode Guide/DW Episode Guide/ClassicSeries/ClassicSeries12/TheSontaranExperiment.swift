//
//  TheSontaranExperiment.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct TheSontaranExperiment: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheSontaranExperimentClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheSontaranExperimentClass>
        @State var showingShare = false
        @AppStorage("TheSontaranExperimentNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheSontaranExperiment_Previews: PreviewProvider {
    static var previews: some View {
        TheSontaranExperiment()
    }
}
