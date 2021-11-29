//
//  TheSunMakers.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct TheSunMakers: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheSunMakersClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheSunMakersClass>
        @State var showingShare = false
        @AppStorage("TheSunMakersNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheSunMakers_Previews: PreviewProvider {
    static var previews: some View {
        TheSunMakers()
    }
}
