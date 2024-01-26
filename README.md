# Async Image SwiftUI

![Async Image](https://credo.academy/credo-academy@3x.png)

## Overview
Async Image is a SwiftUI project demonstrating asynchronous image loading from a URL. It features custom modifiers and placeholder states for various loading phases.

## Features
- Asynchronous loading of images from a specified URL.
- Different loading phases: success, empty, failure, and loading states.
- Custom modifiers for general and icon-style image styling.
- Transaction with a spring animation for a smoother user experience.

## Getting Started
1. Clone the repository.
2. Open the project in Xcode.
3. Run the project on a simulator or device.

## Usage
The `ContentView` displays an image loaded asynchronously using the `AsyncImage` view. Adjust the URL, scale factor, and transaction settings as needed.

## Extensions
The `Extensions.swift` file includes custom modifiers for image styling:
- `imageModifier`: Makes the image resizable and scaled to fit its container.
- `iconModifier`: Applies additional settings for icon-style image styling.
