//
//  ContentView.swift
//  TypewriterText
//
//  Created by Aleksandr Maltsev on 12.11.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            TypewriterText("Hello, world! Let's type it out!")
                .font(.custom(.typewriter, size: 32))

            TypewriterText("Hello, world! Let's type it out!")
                .font(.custom(.typewriter, size: 32))
                .foregroundStyle(Color.brown)

            TypewriterText("Hello, world! Let's type it out!")
                .font(.custom(.typewriter, size: 32))
                .foregroundStyle(Color.red)


            TypewriterText("Hello, world! Let's type it out!")
                .font(.custom(.typewriter, size: 26))

            TypewriterText("Hello, world! Let's type it out!")
                .font(.custom(.typewriter, size: 24))
                .foregroundStyle(Color.brown)

            TypewriterText("Hello, world! Let's type it out!")
                .font(.custom(.typewriter, size: 20))
                .foregroundStyle(Color.red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
