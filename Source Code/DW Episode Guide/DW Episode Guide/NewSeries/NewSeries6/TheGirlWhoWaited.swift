//
//  TheGirlWhoWaited.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheGirlWhoWaited: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheGirlWhoWaitedClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheGirlWhoWaitedClass>
        @State var showingShare = false
        @AppStorage("TheGirlWhoWaitedNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheGirlWhoWaited_Previews: PreviewProvider {
    static var previews: some View {
        TheGirlWhoWaited()
    }
}
