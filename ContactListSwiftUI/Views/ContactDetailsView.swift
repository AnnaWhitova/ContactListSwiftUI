//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Анна Белова on 16.09.2024.
//

import SwiftUI

struct ContactDetailsView: View {
    let contact: Person
   
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .foregroundStyle(.black)
                    .padding(.top)
                Spacer()
            }
            HStack {
                VStack(alignment: .leading) {
                    DetailsInfoView(contact: contact, name: "phone")
                    DetailsInfoView(contact: contact, name: "tray")
                    Spacer()
                }
                Spacer()
            }
            .padding()
            .navigationTitle("\(contact.fullName)")
        }
    }
}

#Preview {
    ContactDetailsView(contact: Person.getContact())
}
