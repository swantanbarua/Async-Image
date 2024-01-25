//
//  ContentView.swift
//  Async Image
//
//  Created by Swantan Barua on 25/01/24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    private let imageURLString = "https://credo.academy/credo-academy@3x.png"
    
    // MARK: - BODY
    var body: some View {
        AsyncImage(
            // Providing the URL of the image to be loaded asynchronously
            url: URL(string: imageURLString),
            // Setting the scale factor of the image
            scale: 3.0,
            // Adding a custom transaction with a spring animation
            transaction: Transaction(animation: .spring(
                response: 0.6,
                dampingFraction: 0.5,
                blendDuration: 0.25
            ))) { phase in
                
                // Handling different phases of image loading
                switch phase {
                case .success(let image):
                    // Displaying the successfully loaded image with a custom modifier and transition
                    image
                        .imageModifier()
                        .transition(.scale)
                    
                case .empty:
                    // Placeholder for an empty state
                    Image(systemName: "photo.circle.fill")
                        .iconModifier()
                    
                case .failure(_):
                    // Placeholder for a failed state
                    Image(systemName: "ant.circle.fill")
                        .iconModifier()
                    
                default:
                    // Placeholder for the loading state
                    ProgressView()
                }
            }
            .padding()
    }
}

// Previewing the ContentView
#Preview {
    ContentView()
}

