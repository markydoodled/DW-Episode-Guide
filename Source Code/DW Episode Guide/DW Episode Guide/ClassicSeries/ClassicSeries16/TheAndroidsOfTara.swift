//
//  TheAndroidsOfTara.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct TheAndroidsOfTara: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheAndroidsOfTaraClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheAndroidsOfTaraClass>
        @State var showingShare = false
        @AppStorage("TheAndroidsOfTaraNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheAndroidsOfTara_Previews: PreviewProvider {
    static var previews: some View {
        TheAndroidsOfTara()
    }
}
