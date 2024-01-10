//
//  AppetizerDetailView.swift
//  Delivery
//
//  Created by Süleyman Ayyılmaz on 8.01.2024.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order: Order
    
    let appetizers: Appetizers
    @Binding var isShowingDetail: Bool
    var body: some View {
        VStack {
            
            Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            VStack {
                Text(appetizers.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizers.descripton)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40){
                    
                    NutritionInfo(title: "Calories", value: appetizers.calories)
                    NutritionInfo(title: "Carbs", value: appetizers.carbs)
                    NutritionInfo(title: "Protein", value: appetizers.protein)
                    
                }
            }
            Spacer()
                
            Button{
                order.add(appetizer: appetizers)
                isShowingDetail = false
            }label: {
                APButton(title: "$\(appetizers.price, specifier:  "%.2f")- Add To Order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260 , height: 50)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(20)
            }
            .padding(.bottom, 30)
            }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius:40)
        .overlay(
            Button {
                isShowingDetail = false
            } label: {
                XDismissButton()
            }
            .padding(10) // Increase the hit area for better interaction
            , alignment: .topTrailing)

    }
}



struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let isShowingDetail = Binding.constant(true)
        return AppetizerDetailView(appetizers: MockData.sampleAppetizer, isShowingDetail: .constant(true))
    }
}

struct NutritionInfo: View {
    
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
