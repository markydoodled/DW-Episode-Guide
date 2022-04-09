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
    #if os(iOS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    #endif
    var body: some View {
        #if os(macOS)
        ForEach(items) { item in
            ScrollView {
                HStack {
                    Spacer()
                    Image("TheWeddingOfRiverSong")
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(25)
                        .frame(width: 150, height: 150)
                        .contextMenu {
                            Button(action: {let pasteboard = NSPasteboard.general
                                pasteboard.clearContents()
                                pasteboard.writeObjects([NSImage(named: "TheWeddingOfRiverSong")!])
                            }) {
                                Text("Copy")
                            }
                        }
                    Spacer()
                    VStack {
                        Text("The Wedding\nOf River Song")
                            .bold()
                            .font(.title)
                            .padding()
                            .multilineTextAlignment(.center)
                    Text("Story No. 224")
                            .font(.title3)
                        Text("Written By - Steven Moffat")
                            .font(.title3)
                }
                    Spacer()
                }
                .padding()
                Divider()
                HStack {
                    Spacer()
                    GroupBox(label: Label("Broadcast", systemImage: "dot.radiowaves.left.and.right")) {
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                        Text("\(item.broadcast!)")
                                Spacer()
                            }
                            Spacer()
                        }
                    }
                    Spacer()
                    GroupBox(label: Label("Companions", systemImage: "person.2.fill")) {
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                        Text("\(item.companions!)")
                                Spacer()
                            }
                            Spacer()
                        }
                    }
                    Spacer()
                }
                .padding()
                Divider()
                HStack {
                    Spacer()
                    GroupBox(label: Label("Director", systemImage: "camera.fill")) {
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                        Text("\(item.director!)")
                                Spacer()
                            }
                            Spacer()
                        }
                    }
                    Spacer()
                    GroupBox(label: Label("Producer", systemImage: "person.text.rectangle")) {
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                        Text("\(item.producer!)")
                                Spacer()
                        }
                            Spacer()
                        }
                    }
                    Spacer()
                }
                .padding()
                Divider()
                HStack {
                    Spacer()
                    GroupBox(label: Label("Doctor", systemImage: "person.crop.square.filled.and.at.rectangle")) {
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                        Text("\(item.doctor!)")
                                Spacer()
                        }
                            Spacer()
                        }
                    }
                    Spacer()
                    GroupBox(label: Label("Length", systemImage: "clock.arrow.circlepath")) {
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                        Text("\(item.length!)")
                                Spacer()
                            }
                            Spacer()
                        }
                    }
                    Spacer()
                }
                .padding()
                Divider()
                HStack {
                    Spacer()
                    GroupBox(label: Label("Notes", systemImage: "note.text")) {
                    TextEditor(text: $notes)
                            .frame(height: 200)
                    }
                    Spacer()
                }
                .padding()
            }
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(action: {self.showingShare = true}) {
                        Image(systemName: "square.and.arrow.up")
                    }
                    .background(SharingsPicker(isPresented: $showingShare, sharingItems: [URL(string: "https://en.wikipedia.org/wiki/The_Wedding_of_River_Song")!]))
                }
            }
            .textSelection(.enabled)
            .navigationTitle("\(item.title!)")
    }
    #elseif os(iOS)

    #endif
    }
}

struct TheWeddingOfRiverSong_Previews: PreviewProvider {
    static var previews: some View {
        TheWeddingOfRiverSong()
    }
}
