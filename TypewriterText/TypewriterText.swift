//
//  TypewriterTextView.swift
//  TypewriterText
//
//  Created by Aleksandr Maltsev on 12.11.2025.
//

import SwiftUI

struct TypewriterText: View {
    let text: String
    let interval: TimeInterval

    @State private var attributedText: AttributedString = ""

    init(_ text: String, interval: TimeInterval = 0.06) {
        self.text = text
        self.interval = interval
    }

    var body: some View {
        Text(attributedText)
            .onAppear {
                startAnimation()
            }
    }

    @MainActor
    private func startAnimation() {
        Task { @MainActor in
            var base = AttributedString(text)
            let initialColor = base.foregroundColor
            base.foregroundColor = .clear
            attributedText = base

            var index = base.startIndex
            while index < base.endIndex {
                let nextIndex = base.index(afterCharacter: index)
                attributedText[index..<nextIndex].foregroundColor = initialColor
                index = nextIndex
                try? await Task.sleep(nanoseconds: UInt64(interval * 1_000_000_000))
            }
        }
    }
}

#Preview {
    VStack(alignment: .leading) {
        TypewriterText("Hello, attributed typewriter! One more line for check")
            .font(.title)
            .foregroundStyle(Color.brown)
    }
    .padding()
}



