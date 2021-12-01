//
//  DeltaAndTheBannermen.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 14/11/2021.
//

import SwiftUI

struct DeltaAndTheBannermen: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: DeltaAndTheBannermenpClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<DeltaAndTheBannermenClass>
        @State var showingShare = false
        @AppStorage("DeltaAndTheBannermenNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DeltaAndTheBannermen_Previews: PreviewProvider {
    static var previews: some View {
        DeltaAndTheBannermen()
    }
}
