//
//  Extensions.swift
//  Async Image
//
//  Created by Swantan Barua on 25/01/24.
//

import SwiftUI

extension Image {
    
    /// A modifier for general image styling, making it resizable and scaled to fit its container.
    ///
    /// - Returns: A modified view with resizable and scaledToFit applied.
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    /// A modifier for icon-style image styling, applying additional settings like frame, foreground color, and opacity.
    ///
    /// - Returns: A modified view with resizable, scaledToFit, framed, purple foreground color, and reduced opacity.
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundStyle(
                Color.purple
            )
            .opacity(0.5)
    }
}
