//
//  TheNextDoctor.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheNextDoctor: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheNextDoctorClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheNextDoctorClass>
        @State var showingShare = false
        @AppStorage("TheNextDoctorNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheNextDoctor_Previews: PreviewProvider {
    static var previews: some View {
        TheNextDoctor()
    }
}
