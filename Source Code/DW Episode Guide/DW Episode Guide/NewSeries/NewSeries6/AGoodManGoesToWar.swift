//
//  AGoodManGoesToWar.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct AGoodManGoesToWar: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: AGoodManGoesToWarClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<AGoodManGoesToWarClass>
        @State var showingShare = false
        @AppStorage("AGoodManGoesToWarNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AGoodManGoesToWar_Previews: PreviewProvider {
    static var previews: some View {
        AGoodManGoesToWar()
    }
}
