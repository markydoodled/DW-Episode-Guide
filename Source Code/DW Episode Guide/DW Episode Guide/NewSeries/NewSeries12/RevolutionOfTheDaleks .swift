//
//  RevolutionOfTheDaleks .swift
//  DW Episode Guide
//
//  Created by Mark Howard on 19/11/2021.
//

import SwiftUI

struct RevolutionOfTheDaleks_: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: RevolutionOfTheDaleksClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<RevolutionOfTheDaleksClass>
        @State var showingShare = false
        @AppStorage("RevolutionOfTheDaleksNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RevolutionOfTheDaleks__Previews: PreviewProvider {
    static var previews: some View {
        RevolutionOfTheDaleks_()
    }
}
