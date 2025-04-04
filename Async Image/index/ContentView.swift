//
//  ContentView.swift
//  Async Image
//
//  Created by Swantan Barua on 19/02/25.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    private let imageURLString = "https://hws.dev/paul.jpg"
    
    // MARK: - BODY
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
                    .transition(.scale)
                
            case .empty:
                Image(systemName: ImageConstants.photoCircleFill)
                    .iconModifier()
                
            case .failure(_):
                Image(systemName: ImageConstants.antCircleFill)
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
