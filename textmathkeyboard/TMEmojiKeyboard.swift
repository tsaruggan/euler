//
//  TMEmojiKeyboard.swift
//  textmathkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-22.
//

import SwiftUI
import KeyboardKit

struct TMEmojiKeyboard: View {
    @EnvironmentObject
    private var keyboardContext: KeyboardContext
    
    var emojis = [
        Emoji("α"),
        Emoji("β"),
        Emoji("γ"),
        Emoji("δ"),
        Emoji("ε")
    ]
    var body: some View {
        EmojiKeyboard(emojis: emojis, style: .standard(for: keyboardContext))
    }
}
