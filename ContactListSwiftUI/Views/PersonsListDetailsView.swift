//
//  PersonsListDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Анна Белова on 16.09.2024.
//

import SwiftUI

struct PersonsListDetailsView: View {
    let contacts: [Person]
    let title = "Contact List"
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section(header: Text("\(contact.fullName)").font(.headline)) {
                    DetailsInfoView(contact: contact, name: "phone")
                    DetailsInfoView(contact: contact, name: "tray")
                }
            }
            .listStyle(.plain)
            .navigationTitle(title)
        }
    }
}

#Preview {
    PersonsListDetailsView(contacts: Person.getContactList())
}
