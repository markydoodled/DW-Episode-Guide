//
//  Survival.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 14/11/2021.
//

import SwiftUI

struct Survival: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: SurvivalClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<SurvivalClass>
        @State var showingShare = false
        @AppStorage("SurvivalNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Survival_Previews: PreviewProvider {
    static var previews: some View {
        Survival()
    }
}
