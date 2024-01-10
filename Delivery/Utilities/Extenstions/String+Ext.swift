//
//  String+Ext.swift
//  Delivery
//
//  Created by Süleyman Ayyılmaz on 9.01.2024.
//

import Foundation

extension String {
    var isValidEmail: Bool {
        let emailFormat = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }

    var isValidPhoneNumber: Bool {
       
        let phoneNumberFormat = "^\\+(?:[0-9] ?){6,14}[0-9]$"
        let phonePredicate = NSPredicate(format: "SELF MATCHES %@", phoneNumberFormat)
        return phonePredicate.evaluate(with: self)
    }
}
