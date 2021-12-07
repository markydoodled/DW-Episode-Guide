//
//  TheLodger.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheLodger: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheLodgerClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheLodgerClass>
        @State var showingShare = false
        @AppStorage("TheLodgerNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheLodger_Previews: PreviewProvider {
    static var previews: some View {
        TheLodger()
    }
}
