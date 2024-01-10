//
//  User.swift
//  Delivery
//
//  Created by Süleyman Ayyılmaz on 9.01.2024.
//

import Foundation


import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var phoneNumber = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false 
}
