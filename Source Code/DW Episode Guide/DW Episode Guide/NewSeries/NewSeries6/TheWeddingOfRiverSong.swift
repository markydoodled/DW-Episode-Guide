//
//  TheWeddingOfRiverSong.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct TheWeddingOfRiverSong: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheWeddingOfRiverSongClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheWeddingOfRiverSongClass>
        @State var showingShare = false
        @AppStorage("TheWeddingOfRiverSongNotes") var notes = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TheWeddingOfRiverSong_Previews: PreviewProvider {
    static var previews: some View {
        TheWeddingOfRiverSong()
    }
}
