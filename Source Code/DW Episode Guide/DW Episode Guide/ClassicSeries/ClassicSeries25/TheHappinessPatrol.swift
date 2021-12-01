//
//  TheHappinessPatrol.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 14/11/2021.
//

import SwiftUI

struct TheHappinessPatrol: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheHappinessPatrolClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheHappinessPatrolClass>
        @State var showingShare = false
        @AppStorage("TheHappinessPatrolNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheHappinessPatrol_Previews: PreviewProvider {
    static var previews: some View {
        TheHappinessPatrol()
    }
}
