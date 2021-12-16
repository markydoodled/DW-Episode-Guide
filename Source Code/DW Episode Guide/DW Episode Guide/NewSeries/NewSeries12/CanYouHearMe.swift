//
//  CanYouHearMe.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 19/11/2021.
//

import SwiftUI

struct CanYouHearMe: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: CanYouHearMeClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<CanYouHearMeClass>
        @State var showingShare = false
        @AppStorage("CanYouHearMeNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CanYouHearMe_Previews: PreviewProvider {
    static var previews: some View {
        CanYouHearMe()
    }
}
