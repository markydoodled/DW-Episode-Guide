//
//  HellBent.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct HellBent: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: HellBentClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<HellBentClass>
        @State var showingShare = false
        @AppStorage("HellBentNotes") var notes = ""
    var body: some View {
        ForEach(items) { item in
            ScrollView {
                HStack {
                    Spacer()
                    Image("HellBent")
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(25)
                        .frame(width: 130, height: 130)
                        .contextMenu {
                            Button(action: {let pasteboard = NSPasteboard.general
                                pasteboard.clearContents()
                                pasteboard.writeObjects([NSImage(named: "HellBent")!])
                            }) {
                                Text("Copy")
                            }
                        }
                    Spacer()
                    VStack {
                    Text("\(item.title!)")
                            .bold()
                            .font(.title)
                            .padding()
                    Text("Story No. 262")
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
                    .background(SharingsPicker(isPresented: $showingShare, sharingItems: [URL(string: "https://en.wikipedia.org/wiki/Hell_Bent_(Doctor_Who)")!]))
                }
            }
            .navigationTitle("\(item.title!)")
    }
    }
}

struct HellBent_Previews: PreviewProvider {
    static var previews: some View {
        HellBent()
    }
}
