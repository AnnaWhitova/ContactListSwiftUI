//
//  DataStore.swift
//  ContactListSwiftUI
//
//  Created by Анна Белова on 16.09.2024.
//

import Foundation

final class DataStore {
    static let shared = DataStore()
    
    let names = ["Anna", "John", "Alex", "Kate",  "Fiby"]
    let surnames = ["Blake",  "Smith", "Jones", "Miller", "Wilson"]
    let phoneNumbers = ["8857710511", "8452208671", "8264492261", "8051253131", "8751234051"]
    let emails = ["aaa@gmail.com", "kerk@mail.ru", "ssld@yandex.ru", "en18ee@gmail.com", "76rer@mail.ru"]
    let id = [1, 2, 3, 4, 5]
    
    private init() {}
}
