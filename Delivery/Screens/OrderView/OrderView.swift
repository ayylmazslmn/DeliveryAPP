//
//  OrderView.swift
//  Delivery
//
//  Created by Süleyman Ayyılmaz on 8.01.2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order

    

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }

                    Button {
                        print("order placed")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 20)
                }

                if order.items.isEmpty {
                    EmptyState(imageName: "empty-basket")
                }
            }
            .navigationTitle("🛒 Orders")
        }
    }

   
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
