//
//  TheTalonsOfWengChiang.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 11/11/2021.
//

import SwiftUI

struct TheTalonsOfWengChiang: View {
/*@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: TheTalonsOfWengChiangClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<TheTalonsOfWengChiangClass>*/
        @State var showingShare = false
        @AppStorage("TheTalonsOfWengChiangNotes") var notes = ""
    #if os(iOS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    #endif
    var body: some View {
        #if os(macOS)
        //ForEach(items) { item in
            ScrollView {
                HStack {
                    Spacer()
                    Image("TheTalonsOfWengChiang")
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(25)
                        .frame(width: 150, height: 150)
                        .contextMenu {
                            Button(action: {let pasteboard = NSPasteboard.general
                                pasteboard.clearContents()
                                pasteboard.writeObjects([NSImage(named: "TheTalonsOfWengChiang")!])
                            }) {
                                Text("Copy")
                            }
                        }
                    Spacer()
                    VStack {
                    Text("The Talons Of Weng Chiang")
                            .bold()
                            .font(.title)
                            .padding()
                    Text("Story No. 91")
                            .font(.title3)
                        Text("Written By - Robert Holmes")
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
                        Text("26 February 1977\n2 April 1977")
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
                        Text("Leela (Louise Jameson)")
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
                        Text("David Maloney")
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
                        Text("Philip Hinchcliffe")
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
                        Text("4th Doctor\n(Tom Baker)")
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
                        Text("6 Episodes\n25 Minutes Each")
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
                    .background(SharingsPicker(isPresented: $showingShare, sharingItems: [URL(string: "https://en.wikipedia.org/wiki/The_Talons_of_Weng-Chiang")!]))
                }
            }
            .textSelection(.enabled)
            .navigationTitle("The Talons Of Weng Chiang")
    //}
    #elseif os(iOS)

    #endif
    }
}

struct TheTalonsOfWengChiang_Previews: PreviewProvider {
    static var previews: some View {
        TheTalonsOfWengChiang()
    }
}
