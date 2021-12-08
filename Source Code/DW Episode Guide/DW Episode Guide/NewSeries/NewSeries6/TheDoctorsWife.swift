//
//  TheDoctorsWife.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheDoctorsWife: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheDoctorsWifeClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheDoctorsWifeClass>
        @State var showingShare = false
        @AppStorage("TheDoctorsWifeNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheDoctorsWife_Previews: PreviewProvider {
    static var previews: some View {
        TheDoctorsWife()
    }
}
