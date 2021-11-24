//
//  TheDalekInvasionOfEarth.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 09/11/2021.
//

import SwiftUI

struct TheDalekInvasionOfEarth: View {
@Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: TheDalekInvasionOfEarthClass.entity(),
        sortDescriptors: [],
        animation: .default)
    private var items: FetchedResults<TheDalekInvasionOfEarthClass>
    @State var showingShare = false
    @AppStorage("TheDalekInvasionOfEarthNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheDalekInvasionOfEarth_Previews: PreviewProvider {
    static var previews: some View {
        TheDalekInvasionOfEarth()
    }
}
