//
//  SettingsView.swift
//  DW Episode Guide
//
//  Created by Mark Howard on 07/11/2021.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        GroupBox(label: Label("Misc.", systemImage: "ellipsis.circle")) {
                           VStack {
                               HStack {
                                   Text("Version")
                                       .bold()
                                   Spacer()
                                   Text("1.2")
                               }
                               HStack {
                                   Text("Build")
                                       .bold()
                                   Spacer()
                                   Text("1")
                               }
                           }
                           .padding()
            HStack {
                Text("Feedback")
                    .bold()
                Spacer()
                Button(action: {SendEmail.send()}) {
                    Text("Send Feedback")
                }
            }
            .padding([.horizontal, .bottom])
                       }
                       .padding()
                       .frame(width: 300, height: 150)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

class SendEmail: NSObject {
    static func send() {
        let service = NSSharingService(named: NSSharingService.Name.composeEmail)!
        service.recipients = ["markhoward2005@gmail.com"]
        service.subject = "DW Episode Guide Feedback"

        service.perform(withItems: ["Please Fill Out All Applicable Sections:", "Report A Bug - ", "Rate The App - ", "Suggest An Improvment - "])
    }
}
