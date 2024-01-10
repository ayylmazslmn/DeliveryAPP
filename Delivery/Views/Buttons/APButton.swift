//
//  APButton.swift
//  Delivery
//
//  Created by Süleyman Ayyılmaz on 9.01.2024.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260 , height: 50)
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(20)
    }
}

struct APButton_Previews: PreviewProvider {
    static var previews: some View {
        APButton(title: "Test Title" )
    }
}
