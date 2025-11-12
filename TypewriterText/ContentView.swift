//
//  ContentView.swift
//  TypewriterText
//
//  Created by Aleksandr Maltsev on 12.11.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.custom(.typewriter, size: 32))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
