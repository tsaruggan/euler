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
    
    var body: some View {
        VStack(spacing: 0) {
            if keyboardContext.keyboardType != .emojis {
                SystemKeyboard()
            } else {
                TMEmojiKeyboard()
            }
            
        }
    }
    
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView()
    }
}
