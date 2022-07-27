//
//  User.swift
//  Medical System
//
//  Created by Denis Bokov on 27.07.2022.
//

import Foundation


struct User {
    let login: String
    let password: String
    let personDetails: Person
}

class Person {
    let firstName: String
    let lastName: String
    let secondName: String
    let birthday: String
    let phoneNumber: String
    
    init(firstName: String, lastName: String, secondName: String, birthday: String, phoneNumber: String) {
        self.firstName = firstName
        self.secondName = secondName
        self.lastName = lastName
        self.birthday = birthday
        self.phoneNumber = phoneNumber
    }
}
