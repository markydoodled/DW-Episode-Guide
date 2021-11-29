//
//  HorrorOfFangRock.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct HorrorOfFangRock: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: HorrorOfFangRockClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<HorrorOfFangRockClass>
        @State var showingShare = false
        @AppStorage("HorrorOfFangRockNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct HorrorOfFangRock_Previews: PreviewProvider {
    static var previews: some View {
        HorrorOfFangRock()
    }
}
