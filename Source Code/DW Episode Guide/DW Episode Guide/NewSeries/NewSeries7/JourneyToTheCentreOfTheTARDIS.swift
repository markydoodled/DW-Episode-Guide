//
//  JourneyToTheCentreOfTheTARDIS.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct JourneyToTheCentreOfTheTARDIS: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: JourneyToTheCentreOfTheTARDISClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<JourneyToTheCentreOfTheTARDISClass>
        @State var showingShare = false
        @AppStorage("JourneyToTheCentreOfTheTARDISNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct JourneyToTheCentreOfTheTARDIS_Previews: PreviewProvider {
    static var previews: some View {
        JourneyToTheCentreOfTheTARDIS()
    }
}
