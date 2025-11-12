//
//  Fon+Extension.swift
//  TypewriterText
//
//  Created by Aleksandr Maltsev on 12.11.2025.
//

import SwiftUI

extension Font {
    static func custom(_ font: AppFont, size: CGFloat) -> Font {
        self.custom(font.rawValue, size: size)
    }
}
