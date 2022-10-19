//
//  Contact.swift
//  ContactList
//
//  Created by Kazakov Danil on 18.10.2022.
//


struct Contact {
    
    var firstName: String
    var surname: String
    var phoneNumber: String
    var email: String
    
    static func getContact() -> [Contact] {
        var contacts: [Contact] = []
        
        for i in 0..<DataStore.shared.names.count {
            contacts.append(.init(firstName: DataStore.shared.names[i],
                                  surname: DataStore.shared.surnames[i],
                                  phoneNumber: DataStore.shared.phoneNumbers[i],
                                  email: DataStore.shared.emails[i]))
        }
        return contacts
    }
}

