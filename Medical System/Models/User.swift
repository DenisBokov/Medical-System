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

struct Person {
    let firstName: String
    let lastName: String
    let secondName: String
    let birthday: String
    let phoneNumber: String
    let polisNumber: String
}
