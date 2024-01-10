//
//  Order.swift
//  Delivery
//
//  Created by Süleyman Ayyılmaz on 9.01.2024.
//

import  SwiftUI

final class Order: ObservableObject {
    
    @Published var  items: [Appetizers] = []
    
    var totalPrice:  Double{
        
        items.reduce(0)  { $0 + $1.price}
        }
    
    func add( appetizer: Appetizers){
        
        items.append(appetizer)
    }
    
    func deleteItems(at offsets: IndexSet) {
      items.remove(atOffsets: offsets)
    }
    
    
    
}
