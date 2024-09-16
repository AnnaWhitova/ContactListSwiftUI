//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Анна Белова on 16.09.2024.
//

import SwiftUI

struct ContactListView: View {
    let title = "Contact List"
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink( destination: ContactDetailsView(contact: contact)) {
                    ContactRowView(contact: contact)
                }
                .listStyle(.plain)
                .navigationTitle(title)
                
            }
            
        }
    }
}

#Preview {
    ContactListView(contacts: Person.getContactList())
}
