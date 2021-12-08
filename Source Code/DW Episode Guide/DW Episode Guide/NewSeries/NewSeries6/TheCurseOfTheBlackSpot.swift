//
//  TheCurseOfTheBlackSpot.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheCurseOfTheBlackSpot: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheCurseOfTheBlackSpotClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheCurseOfTheBlackSpotClass>
        @State var showingShare = false
        @AppStorage("TheCurseOfTheBlackSpotNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheCurseOfTheBlackSpot_Previews: PreviewProvider {
    static var previews: some View {
        TheCurseOfTheBlackSpot()
    }
}
