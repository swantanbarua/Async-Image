//
//  ContentView.swift
//  Async Image
//
//  Created by Swantan Barua on 28/04/24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    private let imageURLString = "https://credo.academy/.credo-academy@3x.png"
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
