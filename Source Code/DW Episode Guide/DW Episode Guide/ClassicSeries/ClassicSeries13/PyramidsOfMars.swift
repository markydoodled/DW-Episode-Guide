//
//  PyramidsOfMars.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct PyramidsOfMars: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: PyramidsOfMarsClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<PyramidsOfMarsClass>
        @State var showingShare = false
        @AppStorage("PyramidsOfMarsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PyramidsOfMars_Previews: PreviewProvider {
    static var previews: some View {
        PyramidsOfMars()
    }
}
