//
//  TMKeyboardAppearance.swift
//  textmathkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-18.
//

import KeyboardKit
import SwiftUI

class TMKeyboardAppearance: StandardKeyboardAppearance {
    override func buttonImage(for action: KeyboardAction) -> Image? {
        if case .keyboardType(let keyboardType) = action {
            switch keyboardType {
            case .numeric:
                return Image(systemName: "textformat.123")
            case .symbolic:
                return Image(systemName: "rectangle.3.group.bubble.left")
            case .emojis:
                return Image(systemName: "atom")
            default:
                return action.standardButtonImage(for: keyboardContext)
            }
            
        } else {
            return super.buttonImage(for: action)
        }
    }
    
}
