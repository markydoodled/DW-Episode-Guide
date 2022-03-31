//
//  TheBattleOfRanskoorAvKolos.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 19/11/2021.
//

import SwiftUI

struct TheBattleOfRanskoorAvKolos: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheBattleOfRanskoorAvKolosClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheBattleOfRanskoorAvKolosClass>
        @State var showingShare = false
        @AppStorage("TheBattleOfRanskoorAvKolosNotes") var notes = ""
    #if os(iOS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    #endif
    var body: some View {
        ForEach(items) { item in
            ScrollView {
                HStack {
                    Spacer()
                    Image("TheBattleOfRanskoorAvKolos")
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(25)
                        .frame(width: 130, height: 130)
                        .contextMenu {
                            Button(action: {let pasteboard = NSPasteboard.general
                                pasteboard.clearContents()
                                pasteboard.writeObjects([NSImage(named: "TheBattleOfRanskoorAvKolos")!])
                            }) {
                                Text("Copy")
                            }
                        }
                    Spacer()
                    VStack {
                        Text("The Battle Of\nRanskoor Av Kolos")
                            .bold()
                            .font(.title)
                            .padding()
                            .multilineTextAlignment(.center)
                    Text("Story No. 286")
                            .font(.title3)
                        Text("Written By - Chris Chibnall")
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
                    .background(SharingsPicker(isPresented: $showingShare, sharingItems: [URL(string: "https://en.wikipedia.org/wiki/The_Battle_of_Ranskoor_Av_Kolos")!]))
                }
            }
            .navigationTitle("\(item.title!)")
    }
    }
}

struct TheBattleOfRanskoorAvKolos_Previews: PreviewProvider {
    static var previews: some View {
        TheBattleOfRanskoorAvKolos()
    }
}
