//
//  Extensions.swift
//  Async Image
//
//  Created by Swantan Barua on 25/01/24.
//

import SwiftUI

extension Image {
    
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
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
