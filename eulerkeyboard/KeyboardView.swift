//
//  KeyboardView.swift
//  eulerkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-16.
//

import SwiftUI
import KeyboardKit

struct KeyboardView: View {
    
    @EnvironmentObject
    private var keyboardContext: KeyboardContext
    
    @EnvironmentObject
    private var autocompleteContext: AutocompleteContext
    
    var body: some View {
        VStack(spacing: 0) {
            AutocompleteToolbar(suggestions: autocompleteContext.suggestions, locale: keyboardContext.locale)
            
            if keyboardContext.keyboardType == .emojis {
                EulerEmojiCategoryKeyboard(keyboardContext: keyboardContext)

                
            } else {
                SystemKeyboard()
//                EmojiCategoryKeyboard(appearance: StandardKeyboardAppearance(keyboardContext: keyboardContext), keyboardContext: keyboardContext)
            }
        }
    }
}

