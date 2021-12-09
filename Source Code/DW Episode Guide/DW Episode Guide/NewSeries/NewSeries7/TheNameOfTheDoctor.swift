//
//  TheNameOfTheDoctor.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheNameOfTheDoctor: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheNameOfTheDoctorClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheNameOfTheDoctorClass>
        @State var showingShare = false
        @AppStorage("TheNameOfTheDoctorNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheNameOfTheDoctor_Previews: PreviewProvider {
    static var previews: some View {
        TheNameOfTheDoctor()
    }
}
