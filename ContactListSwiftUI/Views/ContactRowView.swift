//
//  ContactRowView.swift
//  ContactListSwiftUI
//
//  Created by Анна Белова on 16.09.2024.
//

import SwiftUI

struct ContactRowView: View {
    let contact: Person
  
    var body: some View {
        HStack {
            Text("\(contact.fullName)")
                .font(.title3)
        }
    }
}

#Preview {
    ContactRowView(contact: Person.getContact())
}
