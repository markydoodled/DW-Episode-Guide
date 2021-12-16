//
//  Resolution.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 19/11/2021.
//

import SwiftUI

struct Resolution: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ResolutionClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ResolutionClass>
        @State var showingShare = false
        @AppStorage("ResolutionNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Resolution_Previews: PreviewProvider {
    static var previews: some View {
        Resolution()
    }
}
