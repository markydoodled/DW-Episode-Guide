//
//  TheThreeDoctors.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheThreeDoctors: View {
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheThreeDoctorsClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheThreeDoctorsClass>
        @State var showingShare = false
        @AppStorage("TheThreeDoctorsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheThreeDoctors_Previews: PreviewProvider {
    static var previews: some View {
        TheThreeDoctors()
    }
}
