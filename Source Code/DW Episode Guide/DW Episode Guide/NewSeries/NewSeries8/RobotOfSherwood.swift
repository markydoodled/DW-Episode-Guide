//
//  RobotOfSherwood.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct RobotOfSherwood: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: RobotOfSherwoodClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<RobotOfSherwoodClass>
        @State var showingShare = false
        @AppStorage("RobotOfSherwoodNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RobotOfSherwood_Previews: PreviewProvider {
    static var previews: some View {
        RobotOfSherwood()
    }
}
