//
//  TheTwoDoctors.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 12/11/2021.
//

import SwiftUI

struct TheTwoDoctors: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheTwoDoctorsClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheTwoDoctorsClass>
        @State var showingShare = false
        @AppStorage("TheTwoDoctorsNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheTwoDoctors_Previews: PreviewProvider {
    static var previews: some View {
        TheTwoDoctors()
    }
}
