//
//  DeliveryListView.swift
//  Delivery
//
//  Created by Süleyman Ayyılmaz on 8.01.2024.
//

import SwiftUI

struct DeliveryListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    
    
    var body: some View {
        ZStack {
            NavigationView{
                
                
                List(MockData.appetizers) { appetizer in // maybe check and change
               AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isShowingDetail = true
                        }
                 
                    
                }
                     .navigationTitle(" 🌮 Appetizers")
                     .disabled(viewModel.isShowingDetail)
                    
            }
            .onAppear {
                
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ?  20 : 0)
            
            if viewModel.isShowingDetail {
                AppetizerDetailView(appetizers: viewModel.selectedAppetizer!,
                                    isShowingDetail: $viewModel.isShowingDetail)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
        
    }
    

}

struct DeliveryListView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryListView()
    }
}
