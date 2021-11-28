//
//  Robot.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct Robot: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: RobotClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<RobotClass>
        @State var showingShare = false
        @AppStorage("RobotNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Robot_Previews: PreviewProvider {
    static var previews: some View {
        Robot()
    }
}
