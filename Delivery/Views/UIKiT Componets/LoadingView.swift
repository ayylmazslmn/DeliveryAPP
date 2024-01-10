//
//  LoadingView.swift
//  Delivery
//
//  Created by Süleyman Ayyılmaz on 8.01.2024.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.systemBlue
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        // Nothing to do here for this example
    }
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)

            ActivityIndicator()
        }
    }
}

