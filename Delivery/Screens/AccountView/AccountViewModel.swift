//
//  AccountViewModel.swift
//  Delivery
//
//  Created by Süleyman Ayyılmaz on 9.01.2024.
//

import Foundation
import SwiftUI

final class AccountViewModel: ObservableObject {
    private let userDefaults = UserDefaults.standard

    @Published var user = User()
    @Published var alertItem: AlertItem?

    func saveChanges() {
        guard isValidForm else { return }

        do {
            let data = try JSONEncoder().encode(user)
            userDefaults.set(data, forKey: "user")
            alertItem = AlertContext.userSaveSuccess
        } catch {
            // Handle encoding error
        }
    }

    func retrieveUser() {
        if let userData = userDefaults.data(forKey: "user"),
           let decodedUser = try? JSONDecoder().decode(User.self, from: userData) {
            user = decodedUser
        }
    }

    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty && !user.phoneNumber.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }

        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }

        // Remove the following line if you don't want to validate the phone number
        guard user.phoneNumber.isValidPhoneNumber else {
            return false
        }

        return true
    }
}
