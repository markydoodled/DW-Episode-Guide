//
//  SurvivorsOfTheFlux.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 20/11/2021.
//

import SwiftUI

struct SurvivorsOfTheFlux: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: SurvivorsOfTheFluxClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<SurvivorsOfTheFluxClass>
        @State var showingShare = false
        @AppStorage("SurvivorsOfTheFluxNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SurvivorsOfTheFlux_Previews: PreviewProvider {
    static var previews: some View {
        SurvivorsOfTheFlux()
    }
}
