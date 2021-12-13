//
//  DarkWater.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct DarkWater: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: DarkWaterClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<DarkWaterClass>
        @State var showingShare = false
        @AppStorage("DarkWaterNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DarkWater_Previews: PreviewProvider {
    static var previews: some View {
        DarkWater()
    }
}
