//
//  ThePyramidAtTheEndOfTheWorld.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 17/11/2021.
//

import SwiftUI

struct ThePyramidAtTheEndOfTheWorld: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: ThePyramidAtTheEndOfTheWorldClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<ThePyramidAtTheEndOfTheWorldClass>
        @State var showingShare = false
        @AppStorage("ThePyramidAtTheEndOfTheWorldNotes") var notes = ""
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        ForEach(items) { item in
            ScrollView {
                HStack {
                    Spacer()
                    Image("ThePyramidAtTheEndOfTheWorld")
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(25)
                        .frame(width: 150, height: 150)
                        .contextMenu {
                            Button(action: {let pasteboard = NSPasteboard.general
                                pasteboard.clearContents()
                                pasteboard.writeObjects([NSImage(named: "ThePyramidAtTheEndOfTheWorld")!])
                            }) {
                                Text("Copy")
                            }
                        }
                    Spacer()
                    VStack {
                        Text("The Pyramid\nAt The End\nOf The World")
                            .bold()
                            .font(.title)
                            .padding()
                            .multilineTextAlignment(.center)
                    Text("Story No. 271")
                            .font(.title3)
                        Text("Written By - Peter Harness\nAnd Steven Moffat")
                            .font(.title3)
                            .multilineTextAlignment(.center)
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
                    .background(SharingsPicker(isPresented: $showingShare, sharingItems: [URL(string: "https://en.wikipedia.org/wiki/The_Pyramid_at_the_End_of_the_World")!]))
                }
            }
            .navigationTitle("\(item.title!)")
    }
    }
}

struct ThePyramidAtTheEndOfTheWorld_Previews: PreviewProvider {
    static var previews: some View {
        ThePyramidAtTheEndOfTheWorld()
    }
}
