//
//  EmptyState.swift
//  Delivery
//
//  Created by Süleyman Ayyılmaz on 9.01.2024.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    
    
    var body: some View {
        
        ZStack{
            
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Image (imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 560, height: 500, alignment: .center)
            }
           
            
        }
        
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState(imageName: "empty-basket") 
    }
}
