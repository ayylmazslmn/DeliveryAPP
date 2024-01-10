//
//  AppetizerListViewModel.swift
//  Delivery
//
//  Created by Süleyman Ayyılmaz on 8.01.2024.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published  var appetizers: [Appetizers] = []
    @Published  var alertItem: AlertItem?
    @Published  var isLoading =  false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizers?
    
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .invalidResponse, .invalidURL, .unableToComplete:
                        // Burada sadece hatayı konsola logluyoruz, kullanıcıya bildirim göstermiyoruz.
                        print("Error fetching appetizers: \(error.localizedDescription)")
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                     
                    }
                }
            }
        }
    }
}
