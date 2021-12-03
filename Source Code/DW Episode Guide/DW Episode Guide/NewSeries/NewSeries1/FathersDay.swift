//
//  FathersDay.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct FathersDay: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: FathersDayClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<FathersDayClass>
        @State var showingShare = false
        @AppStorage("FathersDayNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FathersDay_Previews: PreviewProvider {
    static var previews: some View {
        FathersDay()
    }
}
