//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Анна Белова on 16.09.2024.
//

import Foundation

struct Person: Identifiable {
    let id: Int
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
   static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        let dataStore = DataStore.shared
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let emails = dataStore.emails.shuffled()
        let phones = dataStore.phoneNumbers.shuffled()
        let id = dataStore.id.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count,
            id.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                id: id[index], name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
    
    static func getContact() -> Person {
        let dataStore = DataStore.shared
        
        let name = dataStore.names.shuffled().randomElement() ?? ""
        let surname = dataStore.surnames.shuffled().randomElement() ?? ""
        let email = dataStore.emails.shuffled().randomElement() ?? ""
        let phone = dataStore.phoneNumbers.shuffled().randomElement() ?? ""
        let id = dataStore.id.shuffled().randomElement() ?? 0
        
        let person = Person(
            id: id,
            name: name,
            surname: surname,
            email: email,
            phoneNumber: phone
        )
        
        return person
    }
}
