//
//  ImageExtension.swift
//  Async Image
//
//  Created by Swantan Barua on 28/04/24.
//

import SwiftUI

extension Image {
    // Apply modifiers to make the image resizable and scaled to fit its frame.
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    // Apply additional modifiers to the image:
    // - Set a maximum width of 128 pixels.
    // - Change foreground color to purple.
    // - Adjust opacity to 0.5.
    func iconModifier() -> some View {
        self
            .imageModifier() // Apply the basic image modifiers
            .frame(maxWidth: 128) // Set maximum width of the image
            .foregroundStyle(Color.purple) // Set foreground color to purple
            .opacity(0.5) // Set opacity to 0.5
    }
}
