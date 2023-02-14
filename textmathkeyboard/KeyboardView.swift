//
//  KeyboardView.swift
//  textmathkeyboard
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
            if autocompleteContext.suggestions.count > 0 {
                AutocompleteToolbar(suggestions: autocompleteContext.suggestions, locale: keyboardContext.locale)
            }
            
            if keyboardContext.keyboardType == .emojis {
                TMEmojiCategoryKeyboard(keyboardContext: keyboardContext)
            } else {
                SystemKeyboard()
            }
        }
    }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView()
    }
}
