//
//  WorldEnoughAndTime.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct WorldEnoughAndTime: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: WorldEnoughAndTimeClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<WorldEnoughAndTimeClass>
        @State var showingShare = false
        @AppStorage("WorldEnoughAndTimeNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct WorldEnoughAndTime_Previews: PreviewProvider {
    static var previews: some View {
        WorldEnoughAndTime()
    }
}
