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
        Image(systemName: "person")
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 120)
            .foregroundStyle(.black)
            .padding(.top)
        HStack {
            VStack(alignment: .leading) {
                DetailsInfoView(contact: contact)
                Spacer()
            }
            Spacer()
        }
        .padding()
        .navigationTitle("\(contact.fullName)")
    }
}

#Preview {
    ContactDetailsView(contact: Person.getContact())
}
