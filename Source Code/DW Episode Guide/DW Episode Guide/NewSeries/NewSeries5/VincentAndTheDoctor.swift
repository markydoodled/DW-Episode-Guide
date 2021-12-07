//
//  VincentAndTheDoctor.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct VincentAndTheDoctor: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: VincentAndTheDoctorClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<VincentAndTheDoctorClass>
        @State var showingShare = false
        @AppStorage("VincentAndTheDoctorNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct VincentAndTheDoctor_Previews: PreviewProvider {
    static var previews: some View {
        VincentAndTheDoctor()
    }
}
