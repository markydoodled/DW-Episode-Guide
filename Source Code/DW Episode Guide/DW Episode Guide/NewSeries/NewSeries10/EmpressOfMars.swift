//
//  EmpressOfMars.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct EmpressOfMars: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: EmpressOfMarsClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<EmpressOfMarsClass>
        @State var showingShare = false
        @AppStorage("EmpressOfMarsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct EmpressOfMars_Previews: PreviewProvider {
    static var previews: some View {
        EmpressOfMars()
    }
}
