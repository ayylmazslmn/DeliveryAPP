//
//  XDismissButton.swift
//  Delivery
//
//  Created by Süleyman Ayyılmaz on 9.01.2024.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 30 , height: 30)
                .foregroundColor(.white)
                .opacity(0.6)

            Image(systemName: "xmark")
                .imageScale(.large)
                .frame(width: 40, height: 40)
                .foregroundColor(.black)
        }
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton()
    }
}
