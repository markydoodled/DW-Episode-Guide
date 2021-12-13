//
//  FaceTheRaven.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct FaceTheRaven: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: FaceTheRavenClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<FaceTheRavenClass>
        @State var showingShare = false
        @AppStorage("FaceTheRavenNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FaceTheRaven_Previews: PreviewProvider {
    static var previews: some View {
        FaceTheRaven()
    }
}
