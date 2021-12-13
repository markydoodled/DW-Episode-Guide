//
//  TimeHeist.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TimeHeist: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TimeHeistClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TimeHeistClass>
        @State var showingShare = false
        @AppStorage("TimeHeistNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TimeHeist_Previews: PreviewProvider {
    static var previews: some View {
        TimeHeist()
    }
}
