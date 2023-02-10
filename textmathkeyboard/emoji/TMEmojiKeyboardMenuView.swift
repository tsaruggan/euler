//
//  TMEmojiKeyboardMenuView.swift
//  textmathkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-24.
//

import SwiftUI
import KeyboardKit

public struct TMEmojiCategoryKeyboardMenu: View {
    
    public init(
        categories: [TMEmojiCategory] = TMEmojiCategory.all,
        appearance: KeyboardAppearance,
        keyboardContext: KeyboardContext,
        selection: Binding<TMEmojiCategory>,
        style: EmojiKeyboardStyle,
        actionHandler: KeyboardActionHandler = KeyboardInputViewController.shared.keyboardActionHandler
    ) {
        self.categories = categories.filter { $0.emojis.count > 0 }
        self.appearance = appearance
        self.keyboardContext = keyboardContext
        self._selection = selection
        self.style = style
        self.actionHandler = actionHandler
    }
    
    private let categories: [TMEmojiCategory]
    private let appearance: KeyboardAppearance
    private let keyboardContext: KeyboardContext
    private let style: EmojiKeyboardStyle
    private let actionHandler: KeyboardActionHandler
    
    @State private var isInitialized = false
    @Binding private var selection: TMEmojiCategory
    
    public var body: some View {
        HStack(spacing: 0) {
            Spacer()
            keyboardSwitchButton.font(style.systemFont)
            Spacer()
            buttonList.font(style.systemFont)
            Spacer()
            backspaceButton.font(style.systemFont)
            Spacer()
        }
    }
    
    private var backspaceButton: some View {
        let action = KeyboardAction.backspace
        let image = appearance.buttonImage(for: action)
        return image.keyboardGestures(
            for: action,
            actionHandler: actionHandler).scaledToFill()
    }
    
    private var keyboardSwitchButton: some View {
        let action = KeyboardAction.keyboardType(.alphabetic(.lowercased))
        let text = appearance.buttonText(for: action) ?? "ABC"
        return Text(text).keyboardGestures(
            for: action,
            actionHandler: actionHandler).scaledToFill()
    }
    
    private var buttonList: some View {
        ForEach(categories) {
            buttonListItem(for: $0)
        }
        .monospaced()
    }
    
    private func buttonListItem(for category: TMEmojiCategory) -> some View {
        Button(action: { selection = category }, label: {
            Text(category.fallbackDisplayEmoji.char)
                .font(style.categoryFont)
                .frame(width: 25, height: 25)
                .background(selection == category ? style.selectedCategoryColor : Color.clear)
                .clipShape(Circle())
            
        })
    }
}

