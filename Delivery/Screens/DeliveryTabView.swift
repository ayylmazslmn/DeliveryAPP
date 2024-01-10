//
//  ContentView.swift
//  Delivery
//
//  Created by Süleyman Ayyılmaz on 8.01.2024.
//

import SwiftUI

struct DeliveryTabView: View {
    var body: some View {
        TabView {
            
            DeliveryListView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "basket")
                    Text("Order")
                }
        }
        .accentColor(.brandPrimary)
    }
}

struct DeliveryTabView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryTabView()
    }
}

