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
            url: URL(string: imageURLString),
            scale: 3.0,
            transaction: Transaction(animation: .spring(
                response: 0.6,
                dampingFraction: 0.5,
                blendDuration: 0.25
            ))) { phase in
                
                switch phase {
                case .success(let image):
                    image
                    
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
            .padding()
    }
}

#Preview {
    ContentView()
}
