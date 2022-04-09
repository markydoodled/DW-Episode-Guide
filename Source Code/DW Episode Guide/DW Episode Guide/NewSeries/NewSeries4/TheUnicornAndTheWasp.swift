//
//  TheUnicornAndTheWasp.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 16/11/2021.
//

import SwiftUI

struct TheUnicornAndTheWasp: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheUnicornAndTheWaspClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheUnicornAndTheWaspClass>
        @State var showingShare = false
        @AppStorage("TheUnicornAndTheWaspNotes") var notes = ""
    #if os(iOS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    #endif
    var body: some View {
        #if os(macOS)
        ForEach(items) { item in
                    ScrollView {
                        HStack {
                            Spacer()
                            Image("TheUnicornAndTheWasp")
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(25)
                                .frame(width: 150, height: 150)
                                .contextMenu {
                                    Button(action: {let pasteboard = NSPasteboard.general
                                        pasteboard.clearContents()
                                        pasteboard.writeObjects([NSImage(named: "TheUnicornAndTheWasp")!])
                                    }) {
                                        Text("Copy")
                                    }
                                }
                            Spacer()
                            VStack {
                                Text("The Unicorn\nAnd The Wasp")
                                    .bold()
                                    .font(.title)
                                    .padding()
                                    .multilineTextAlignment(.center)
                            Text("Story No. 194")
                                    .font(.title3)
                                Text("Written By - Gareth Roberts")
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
                            .background(SharingsPicker(isPresented: $showingShare, sharingItems: [URL(string: "https://en.wikipedia.org/wiki/The_Unicorn_and_the_Wasp")!]))
                        }
                    }
                    .textSelection(.enabled)
                    .navigationTitle("\(item.title!)")
            }
    #elseif os(iOS)

    #endif
    }
}

struct TheUnicornAndTheWasp_Previews: PreviewProvider {
    static var previews: some View {
        TheUnicornAndTheWasp()
    }
}
