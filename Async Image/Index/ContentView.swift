//
//  ContentView.swift
//  Async Image
//
//  Created by Swantan Barua on 28/04/24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    // The URL string for the image to be displayed asynchronously.
    private let imageURLString = "https://credo.academy/.credo-academy@3x.png"
    
    // MARK: - BODY
    
    var body: some View {
        // Asynchronously load an image from the provided URL, with a specified scale and transaction.
        AsyncImage(
            url: URL(string: imageURLString),
            scale: 3.0,
            transaction: Transaction(animation: .spring(
                response: 0.25,
                dampingFraction: 0.5,
                blendDuration: 0.6
            ))
        ) { phase in
            // Switch over the loading phase of the image.
            switch phase {
                
            case .success(let image):
                // If the image is successfully loaded, apply custom modifiers using `imageModifier()`.
                image.imageModifier()
                
            case .empty:
                // If the image is empty, display a default photo icon with custom modifiers.
                Image(systemName: "photo.circle.fill")
                    .iconModifier()
                
            case .failure(_):
                // If there is a failure in loading the image, display a default icon.
                Image(systemName: "ant.circle.fill")
                
            default:
                // Show a progress view while the image is being loaded.
                ProgressView()
            }
        }
    }
}

// Preview the ContentView.
#Preview {
    ContentView()
}
