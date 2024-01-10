//
//  AppetizerListCell.swift
//  Delivery
//
//  Created by Süleyman Ayyılmaz on 8.01.2024.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizers
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: appetizer.imageName)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(8)
            } placeholder: {
                Image("asian-flank-steak")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(8)
            }
            

            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}
