//
//  OnceUponTime.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 20/11/2021.
//

import SwiftUI

struct OnceUponTime: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: OnceUponTimeClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<OnceUponTimeClass>
        @State var showingShare = false
        @AppStorage("OnceUponTimeNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct OnceUponTime_Previews: PreviewProvider {
    static var previews: some View {
        OnceUponTime()
    }
}
