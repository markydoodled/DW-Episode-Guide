//
//  TheDoctorsDaughter.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheDoctorsDaughter: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheDoctorsDaughterClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheDoctorsDaughterClass>
        @State var showingShare = false
        @AppStorage("TheDoctorsDaughterNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheDoctorsDaughter_Previews: PreviewProvider {
    static var previews: some View {
        TheDoctorsDaughter()
    }
}
