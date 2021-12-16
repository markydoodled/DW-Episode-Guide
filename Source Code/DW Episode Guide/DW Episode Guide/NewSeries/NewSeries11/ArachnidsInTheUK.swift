//
//  ArachnidsInTheUK.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct ArachnidsInTheUK: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ArachnidsInTheUKClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ArachnidsInTheUKClass>
        @State var showingShare = false
        @AppStorage("ArachnidsInTheUKNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ArachnidsInTheUK_Previews: PreviewProvider {
    static var previews: some View {
        ArachnidsInTheUK()
    }
}
