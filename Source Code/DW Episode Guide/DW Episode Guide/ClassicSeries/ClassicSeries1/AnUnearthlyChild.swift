//
//  AnUnearthlyChild.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct AnUnearthlyChild: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(entity: AnUnearthlyChildClass.entity(),
        sortDescriptors: [],
        animation: .default)
    private var items: FetchedResults<AnUnearthlyChildClass>
    @State var showingShare = false
    @AppStorage("AnUnearthlyChildNotes") var notes = ""
    #if os(iOS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    #endif
    var body: some View {
        #if os(macOS)
        ForEach(items) { item in
            ScrollView {
                HStack {
                    Spacer()
                    Image("AnUnearthlyChild")
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(25)
                        .frame(width: 150, height: 150)
                        .contextMenu {
                            Button(action: {let pasteboard = NSPasteboard.general
                                pasteboard.clearContents()
                                pasteboard.writeObjects([NSImage(named: "AnUnearthlyChild")!])
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
                    Text("Story No. 1")
                            .font(.title3)
                        Text("Written By - Anthony Coburn")
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
                    .background(SharingsPicker(isPresented: $showingShare, sharingItems: [URL(string: "https://en.wikipedia.org/wiki/An_Unearthly_Child")!]))
                }
            }
            .navigationTitle("\(item.title!)")
    }
        #elseif os(iOS)
        if horizontalSizeClass == .compact {
            NavigationView {
                ForEach(items) { item in
                Form {
                    HStack {
                        Spacer()
                        Image("AnUnearthlyChild")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(25)
                            .frame(width: 150, height: 150)
                            .contextMenu {
                                Button(action: {let pasteboard = UIPasteboard.general
                                    pasteboard.image = UIImage(named: "AnUnearthlyChild")
                                }) {
                                    Label("Copy", systemImage: "doc.on.doc")
                                }
                            }
                        Spacer()
                    }
                    Text("Story No. 1")
                    Text("Written By - Anthony Coburn")
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
                    Section(header: Label("Notes", systemImage: "note.text")) {
                        TextEditor(text: $notes)
                            .frame(height: 200)
                    }
                }
                .textSelection(.enabled)
                .navigationTitle("\(item.title!)")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {self.showingShare = true}) {
                            Image(systemName: "square.and.arrow.up")
                        }
                        .sheet(isPresented: $showingShare) {
                            ActivityView(activityItems: [URL(string: "https://en.wikipedia.org/wiki/An_Unearthly_Child")!], applicationActivities: nil)
                        }
                    }
                }
            }
            }
        } else {
            ForEach(items) { item in
                ScrollView {
                    HStack {
                        Spacer()
                        Image("AnUnearthlyChild")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(25)
                            .frame(width: 150, height: 150)
                            .contextMenu {
                                Button(action: {let pasteboard = UIPasteboard.general
                                    pasteboard.image = UIImage(named: "AnUnearthlyChild")
                                }) {
                                    Label("Copy", systemImage: "doc.on.doc")
                                }
                            }
                        Spacer()
                        VStack {
                        Text("\(item.title!)")
                                .bold()
                                .font(.title)
                                .padding()
                        Text("Story No. 1")
                                .font(.title3)
                            Text("Written By - Anthony Coburn")
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
                        .sheet(isPresented: $showingShare) {
                            ActivityView(activityItems: [URL(string: "https://en.wikipedia.org/wiki/An_Unearthly_Child")!], applicationActivities: nil)
                        }
                    }
                }
                .navigationTitle("\(item.title!)")
        }
        }
        #endif
    }
}

struct AnUnearthlyChild_Previews: PreviewProvider {
    static var previews: some View {
        AnUnearthlyChild()
    }
}

#if os(macOS)
struct SharingsPicker: NSViewRepresentable {
    @Binding var isPresented: Bool
    var sharingItems: [Any] = []

    func makeNSView(context: Context) -> NSView {
        let view = NSView()
        return view
    }

    func updateNSView(_ nsView: NSView, context: Context) {
        if isPresented {
            let picker = NSSharingServicePicker(items: sharingItems)
            picker.delegate = context.coordinator

            DispatchQueue.main.async {
                picker.show(relativeTo: .zero, of: nsView, preferredEdge: .minY)
            }
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(owner: self)
    }

    class Coordinator: NSObject, NSSharingServicePickerDelegate {
        let owner: SharingsPicker

        init(owner: SharingsPicker) {
            self.owner = owner
        }

        func sharingServicePicker(_ sharingServicePicker: NSSharingServicePicker, didChoose service: NSSharingService?) {
            sharingServicePicker.delegate = nil
            self.owner.isPresented = false
        }
    }
}
#endif

#if os(iOS)
struct ActivityView: UIViewControllerRepresentable {
    let activityItems: [Any]
    let applicationActivities: [UIActivity]?
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ActivityView>) -> UIActivityViewController {
            return UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
        }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
#endif
