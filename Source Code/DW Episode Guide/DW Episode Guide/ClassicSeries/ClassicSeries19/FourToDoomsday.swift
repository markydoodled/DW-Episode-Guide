//
//  FourToDoomsday.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct FourToDoomsday: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: FourToDoomsdayClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<FourToDoomsdayClass>
        @State var showingShare = false
        @AppStorage("FourToDoomsdayNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FourToDoomsday_Previews: PreviewProvider {
    static var previews: some View {
        FourToDoomsday()
    }
}
