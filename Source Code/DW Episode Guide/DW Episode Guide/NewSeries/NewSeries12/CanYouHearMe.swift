//
//  CanYouHearMe.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 19/11/2021.
//

import SwiftUI
import UniformTypeIdentifiers

struct CanYouHearMe: View {
@Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(entity: CanYouHearMeClass.entity(),
            sortDescriptors: [],
            animation: .default)
        private var items: FetchedResults<CanYouHearMeClass>
        @State var showingShare = false
        @AppStorage("CanYouHearMeNotes") var notes = ""
        @AppStorage("CanYouHearMeWatched") var watched: Bool = false
    @FocusState private var isViewFocused: Bool
    #if os(iOS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @FocusState private var isFocused: Bool
    #endif
    var body: some View {
        #if os(macOS)
        ForEach(items) { item in
            ScrollView {
                HStack {
                    Spacer()
                    Image("CanYouHearMe")
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(25)
                        .frame(width: 130, height: 130)
                        .contextMenu {
                            Button(action: {let pasteboard = NSPasteboard.general
                                pasteboard.clearContents()
                                pasteboard.writeObjects([NSImage(named: "CanYouHearMe")!])
                            }) {
                                Text("Copy")
                            }
                        }
                        .onDrag {
                            let data = NSImage(named: "CanYouHearMe")?.tiffRepresentation
                            let provider = NSItemProvider(item: data as NSSecureCoding?, typeIdentifier: UTType.tiff.identifier as String)
                            provider.previewImageHandler = { (handler, _, _) -> Void in
                            handler?(data as NSSecureCoding?, nil)
                            }
                            return provider
                        }
                    Spacer()
                    VStack {
                    Text("\(item.title!)")
                            .bold()
                            .font(.title)
                            .padding()
                    Text("Story No. 293")
                            .font(.title3)
                        Text("Written By - Charlene James\nAnd Chris Chibnall")
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
                        Button(action: {self.watched.toggle()}) {
                            Image(systemName: self.watched == true ? "checkmark.square.fill" : "square")
                        }
                    }
                ToolbarItem(placement: .primaryAction) {
                    Button(action: {self.showingShare = true}) {
                        Image(systemName: "square.and.arrow.up")
                    }
                    .background(SharingsPicker(isPresented: $showingShare, sharingItems: [URL(string: "https://en.wikipedia.org/wiki/Can_You_Hear_Me%3F_(Doctor_Who)")!]))
                }
            }
            .textSelection(.enabled)
            .navigationTitle("\(item.title!)")
    }
    #elseif os(iOS)
        if horizontalSizeClass == .compact {
                ForEach(items) { item in
                Form {
                    HStack {
                        Spacer()
                        Image("CanYouHearMe")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .contextMenu {
                                Button(action: {let pasteboard = UIPasteboard.general
                                    pasteboard.image = UIImage(named: "CanYouHearMe")
                                }) {
                                    Label("Copy", systemImage: "doc.on.doc")
                                }
                            }
                            .onDrag {
                                return NSItemProvider(object: UIImage(named: "CanYouHearMe")! as UIImage)
                            } preview: {Image("CanYouHearMe")}
                        Spacer()
                    }
                    Text("Story No. 293")
                    .onDrag {
                        return NSItemProvider(object: String("Story No. 293") as NSString)
                    }
                    Text("Written By - Charlene James\nAnd Chris Chibnall")
                        .onDrag {
                            return NSItemProvider(object: String("Written By - Charlene James\nAnd Chris Chibnall") as NSString)
                        }
                    Section(header: Label("Broadcast", systemImage: "dot.radiowaves.left.and.right")) {
                        Text("\(item.broadcast!)")
                            .onDrag {
                                return NSItemProvider(object: String("\(item.broadcast!)") as NSString)
                            }
                    }
                    Section(header: Label("Companions", systemImage: "person.2.fill")) {
                        Text("\(item.companions!)")
                            .onDrag {
                                return NSItemProvider(object: String("\(item.companions!)") as NSString)
                            }
                    }
                    Section(header: Label("Director", systemImage: "camera.fill")) {
                        Text("\(item.director!)")
                            .onDrag {
                                return NSItemProvider(object: String("\(item.director!)") as NSString)
                            }
                    }
                    Section(header: Label("Producer", systemImage: "person.text.rectangle")) {
                        Text("\(item.producer!)")
                            .onDrag {
                                return NSItemProvider(object: String("\(item.producer!)") as NSString)
                            }
                    }
                    Section(header: Label("Doctor", systemImage: "person.crop.square.filled.and.at.rectangle")) {
                        Text("\(item.doctor!)")
                            .onDrag {
                                return NSItemProvider(object: String("\(item.doctor!)") as NSString)
                            }
                    }
                    Section(header: Label("Length", systemImage: "clock.arrow.circlepath")) {
                        Text("\(item.length!)")
                            .onDrag {
                                return NSItemProvider(object: String("\(item.length!)") as NSString)
                            }
                    }
                    Section(header: Label("Notes", systemImage: "note.text")) {
                        TextEditor(text: $notes)
                                .frame(height: 200)
                                .focused($isFocused)
                    }
                }
                .textSelection(.enabled)
                .navigationTitle("\(item.title!)")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {self.watched.toggle()}) {
                            Image(systemName: self.watched == true ? "checkmark.square.fill" : "square")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {self.showingShare = true}) {
                            Image(systemName: "square.and.arrow.up")
                        }
                        .sheet(isPresented: $showingShare) {
                            ActivityView(activityItems: [URL(string: "https://en.wikipedia.org/wiki/Can_You_Hear_Me%3F_(Doctor_Who)")!], applicationActivities: nil)
                        }
                    }
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            isFocused = false
                        }
                        }
                }
            }
        } else {
            ForEach(items) { item in
                ScrollView {
                    HStack {
                        Spacer()
                        Image("CanYouHearMe")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(25)
                            .frame(width: 150, height: 150)
                            .contextMenu {
                                Button(action: {let pasteboard = UIPasteboard.general
                                    pasteboard.image = UIImage(named: "CanYouHearMe")
                                }) {
                                    Label("Copy", systemImage: "doc.on.doc")
                                }
                            }
                            .onDrag {
                                return NSItemProvider(object: UIImage(named: "CanYouHearMe")! as UIImage)
                            } preview: {Image("CanYouHearMe")}
                        Spacer()
                        VStack {
                        Text("\(item.title!)")
                                .bold()
                                .font(.title)
                                .padding()
                        Text("Story No. 293")
                                .font(.title3)
                                .onDrag {
                                    return NSItemProvider(object: String("Story No. 293") as NSString)
                                }
                            Text("Written By - Charlene James\nAnd Chris Chibnall")
                                .font(.title3)
                                .multilineTextAlignment(.center)
                                .onDrag {
                                    return NSItemProvider(object: String("Written By - Charlene James\nAnd Chris Chibnall") as NSString)
                                }
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
                        .onDrag {
                            return NSItemProvider(object: String("\(item.broadcast!)") as NSString)
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
                        .onDrag {
                            return NSItemProvider(object: String("\(item.companions!)") as NSString)
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
                        .onDrag {
                            return NSItemProvider(object: String("\(item.director!)") as NSString)
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
                        .onDrag {
                            return NSItemProvider(object: String("\(item.producer!)") as NSString)
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
                        .onDrag {
                            return NSItemProvider(object: String("\(item.doctor!)") as NSString)
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
                        .onDrag {
                            return NSItemProvider(object: String("\(item.length!)") as NSString)
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
                                .focused($isFocused)
                        }
                        Spacer()
                    }
                    .padding()
                }
                .toolbar {
                ToolbarItem(placement: .primaryAction) {
                        Button(action: {self.watched.toggle()}) {
                            Image(systemName: self.watched == true ? "checkmark.square.fill" : "square")
                        }
                    }
                    ToolbarItem(placement: .primaryAction) {
                        Button(action: {self.showingShare = true}) {
                            Image(systemName: "square.and.arrow.up")
                        }
                        .sheet(isPresented: $showingShare) {
                            ActivityView(activityItems: [URL(string: "https://en.wikipedia.org/wiki/Can_You_Hear_Me%3F_(Doctor_Who)")!], applicationActivities: nil)
                        }
                    }
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            isFocused = false
                        }
                        }
                }
                .textSelection(.enabled)
                .navigationTitle("\(item.title!)")
                .navigationBarTitleDisplayMode(.inline)
        }
        }
        #elseif os(watchOS)
        ForEach(items) { item in
            Form {
                HStack {
                   Spacer()
                    Image("CanYouHearMe")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                }
                Text("Story No. 293")
                Text("Written By - Charlene James\nAnd Chris Chibnall")
                Section(header: Label("Broadcast", systemImage: "dot.radiowaves.left.and.right")) {
                    Text("\(item.broadcast!)")
                }
                Section(header: Label("Companions", systemImage: "person.2.fill")) {
                    Text("\(item.companions!)")
                }
                Section(header: Label("Director", systemImage: "camera.fill")) {
                    Text("\(item.director!)")
                }
                Section(header: Label("Producer", systemImage: "person.text.rectangle")) {
                    Text("\(item.producer!)")
                }
                Section(header: Label("Doctor", systemImage: "person.crop.square.filled.and.at.rectangle")) {
                    Text("\(item.doctor!)")
                }
                Section(header: Label("Length", systemImage: "clock.arrow.circlepath")) {
                    Text("\(item.length!)")
                }
                Button(action: {self.watched.toggle()}) {
                    Label("Watched", systemImage: self.watched == true ? "checkmark.square.fill" : "square")
                }
            }
            .navigationTitle("\(item.title!)")
        }
#elseif os(tvOS)
ForEach(items) { item in
    ScrollView {
        HStack {
            Spacer()
            Image("CanYouHearMe")
                .resizable()
                .scaledToFill()
                .cornerRadius(25)
                .frame(width: 350, height: 350)
            Spacer()
            VStack {
            Text("\(item.title!)")
                    .bold()
                    .font(.title)
                    .padding()
            Text("Story No. 293")
                    .font(.title3)
                Text("Written By - Charlene James\nAnd Chris Chibnall")
                    .font(.title3)
                    .multilineTextAlignment(.center)
        }
            Spacer()
        }
        .padding()
        Divider()
        HStack {
            Spacer()
            Button(action: {}) {
                VStack {
                    Label("Broadcast", systemImage: "dot.radiowaves.left.and.right")
                        .padding()
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Text("\(item.broadcast!)")
                            Spacer()
                        }
                        Spacer()
                    }
                    Spacer()
                }
        }
            Spacer()
            Button(action: {}) {
                VStack {
                    Label("Companions", systemImage: "person.2.fill")
                        .padding()
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Text("\(item.companions!)")
                            Spacer()
                        }
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
            Button(action: {}) {
                VStack {
                    Label("Director", systemImage: "camera.fill")
                        .padding()
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Text("\(item.director!)")
                            Spacer()
                        }
                        Spacer()
                    }
                    Spacer()
                }
        }
            Spacer()
            Button(action: {}) {
                VStack {
                    Label("Producer", systemImage: "person.text.rectangle")
                        .padding()
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Text("\(item.producer!)")
                            Spacer()
                        }
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
            Button(action: {}) {
                VStack {
                    Label("Doctor", systemImage: "person.crop.square.filled.and.at.rectangle")
                        .padding()
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Text("\(item.doctor!)")
                            Spacer()
                        }
                        Spacer()
                    }
                    Spacer()
                }
        }
            Spacer()
            Button(action: {}) {
                VStack {
                    Label("Length", systemImage: "clock.arrow.circlepath")
                        .padding()
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Text("\(item.length!)")
                            Spacer()
                        }
                        Spacer()
                    }
                    Spacer()
                }
            }
            Spacer()
        }
        .padding()
        Button(action: {self.watched.toggle()}) {
            Label("Watched", systemImage: self.watched == true ? "checkmark.square.fill" : "square")
        }
    }
}
    #endif
    }
}

struct CanYouHearMe_Previews: PreviewProvider {
    static var previews: some View {
        CanYouHearMe()
    }
}
