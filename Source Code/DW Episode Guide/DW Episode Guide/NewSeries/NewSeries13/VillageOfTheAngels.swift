//
//  VillageOfTheAngels.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 20/11/2021.
//

import SwiftUI

struct VillageOfTheAngels: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: VillageOfTheAngelsClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<VillageOfTheAngelsClass>
        @State var showingShare = false
        @AppStorage("VillageOfTheAngelsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct VillageOfTheAngels_Previews: PreviewProvider {
    static var previews: some View {
        VillageOfTheAngels()
    }
}
