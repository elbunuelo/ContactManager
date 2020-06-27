//
//  Contact.swift
//  ContactManager
//
//  Created by Nicolas Arias on 6/27/20.
//

import Foundation
var idCounter = 1

struct Contact: Identifiable {
    var id: Int
    var name: String = ""
    var lastName: String = ""
    var phoneNumber: String = ""
    
    init() {
        self.id = idCounter
        idCounter += 1
    }
    
    init(name: String, lastName: String, phoneNumber: String) {
        self.id = idCounter
        self.name = name
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        
        idCounter += 1
    }
}
