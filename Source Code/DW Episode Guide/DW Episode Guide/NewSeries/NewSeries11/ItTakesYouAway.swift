//
//  ItTakesYouAway.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct ItTakesYouAway: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ItTakesYouAwayClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ItTakesYouAwayClass>
        @State var showingShare = false
        @AppStorage("ItTakesYouAwayNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ItTakesYouAway_Previews: PreviewProvider {
    static var previews: some View {
        ItTakesYouAway()
    }
}
