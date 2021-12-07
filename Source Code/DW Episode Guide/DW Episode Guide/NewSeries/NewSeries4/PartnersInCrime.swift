//
//  PartnersInCrime.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct PartnersInCrime: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: PartnersInCrimeClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<PartnersInCrimeClass>
        @State var showingShare = false
        @AppStorage("PartnersInCrimeNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PartnersInCrime_Previews: PreviewProvider {
    static var previews: some View {
        PartnersInCrime()
    }
}
