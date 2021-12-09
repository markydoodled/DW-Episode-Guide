//
//  TheDayOfTheDoctor.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheDayOfTheDoctor: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheDayOfTheDoctorClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheDayOfTheDoctorClass>
        @State var showingShare = false
        @AppStorage("TheDayOfTheDoctorNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheDayOfTheDoctor_Previews: PreviewProvider {
    static var previews: some View {
        TheDayOfTheDoctor()
    }
}
