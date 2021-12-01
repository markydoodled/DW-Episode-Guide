//
//  TerrorOfTheVervoids.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct TerrorOfTheVervoids: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TerrorOfTheVervoidsClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TerrorOfTheVervoidsClass>
        @State var showingShare = false
        @AppStorage("TerrorOfTheVervoidsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TerrorOfTheVervoids_Previews: PreviewProvider {
    static var previews: some View {
        TerrorOfTheVervoids()
    }
}
