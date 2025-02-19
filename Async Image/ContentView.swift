//
//  ContentView.swift
//  Async Image
//
//  Created by Swantan Barua on 19/02/25.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    private let imageURLString = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        AsyncImage(
            url: URL(string: imageURLString),
            scale: 3.0,
            transaction: Transaction(
                animation: .spring(
                    response: 0.25,
                    dampingFraction: 0.5,
                    blendDuration: 0.6
                )
            )
        ) { phase in
            
            switch phase {
            
            case .success(let image):
                image
                    .imageModifier()
                
            case .empty:
                Image(systemName: "photo.circle.fill")
                    .iconModifier()
                
            case .failure(_):
                Image(systemName: "ant.circle.fill")
                    .iconModifier()
                
            default:
                ProgressView()
            }
        }
    }
}

#Preview {
    ContentView()
}
