//
//  DetailsInfoView.swift
//  ContactListSwiftUI
//
//  Created by Анна Белова on 16.09.2024.
//

import SwiftUI

struct DetailsInfoView: View {
    let contact: Person
  
    var body: some View {
        HStack {
            Image(systemName: "phone")
                .resizable()
                .frame(width: 25, height: 25)
                .foregroundStyle(.blue)
            Text("\(contact.phoneNumber)")
                .font(.title3)
        }
        HStack {
            Image(systemName: "tray")
                .resizable()
                .frame(width: 25, height: 25)
                .foregroundStyle(.blue)
            Text("\(contact.email)")
                .font(.title3)
        }
    }
}

#Preview {
    DetailsInfoView(contact: Person.getContact())
}
