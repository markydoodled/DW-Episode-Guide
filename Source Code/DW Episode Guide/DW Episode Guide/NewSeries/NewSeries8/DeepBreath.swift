//
//  DeepBreath.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct DeepBreath: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: DeepBreathClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<DeepBreathClass>
        @State var showingShare = false
        @AppStorage("DeepBreathNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DeepBreath_Previews: PreviewProvider {
    static var previews: some View {
        DeepBreath()
    }
}
