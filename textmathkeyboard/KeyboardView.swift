//
//  KeyboardView.swift
//  textmathkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-16.
//

import SwiftUI
import KeyboardKit

struct KeyboardView: View {
    @State
    private var text = "Text"
    
    @EnvironmentObject
    private var autocompleteContext: AutocompleteContext
    
    @EnvironmentObject
    private var keyboardContext: KeyboardContext
    
    var body: some View {
        VStack(spacing: 0) {
            if keyboardContext.keyboardType != .emojis {
                AutocompleteToolbar(
                    suggestions: autocompleteContext.suggestions,
                    locale: keyboardContext.locale
                )
            }
            SystemKeyboard()
        }
    }
    
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView()
    }
}
