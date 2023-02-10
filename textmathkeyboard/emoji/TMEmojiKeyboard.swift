//
//  TMEmojiKeyboard.swift
//  textmathkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-02-06.
//

import Foundation
import SwiftUI
import KeyboardKit


public struct TMEmojiKeyboard<ButtonView: View>: View {

    public init(
        emojis: [Emoji],
        style: EmojiKeyboardStyle = .standardPhonePortrait,
        applyGestures: Bool = false,
        emojiButton: @escaping EmojiButtonBuilder<ButtonView>
    ) {
        let gridItem = GridItem(.fixed(style.itemSize), spacing: style.verticalItemSpacing - 9)
        self.emojis = emojis
        self.style = style
        self.rows = Array(repeating: gridItem, count: style.rows)
        self.applyGestures = applyGestures
        self.emojiButton = emojiButton
    }
    
    private let emojis: [Emoji]
    private let rows: [GridItem]
    private let style: EmojiKeyboardStyle
    private let applyGestures: Bool
    private let emojiButton: EmojiButtonBuilder<ButtonView>
    
    public typealias EmojiButtonBuilder<EmojiButton: View> = (Emoji, EmojiKeyboardStyle) -> EmojiButton

    public var body: some View {
        LazyHGrid(rows: rows, spacing: style.horizontalItemSpacing) {
            ForEach(emojis) { emoji in
                if applyGestures {
                    buttonView(for: emoji.char != "__" ? emoji : Emoji(""), style: style)
                        .keyboardGestures(
                            for: .emoji(emoji.char != "__" ? emoji : Emoji("")),
                            actionHandler: Self.standardKeyboardActionHandler,
                            isInScrollView: true
                        )
                } else {
                    buttonView(for: emoji.char != "__" ? emoji : Emoji(""), style: style)
                }
            }
        }
        .padding(.horizontal)
        .frame(height: style.totalHeight)
    }
}

private extension TMEmojiKeyboard {

    func buttonView(for emoji: Emoji, style: EmojiKeyboardStyle) -> some View {
        emojiButton(emoji, style)
            .accessibilityLabel(emoji.unicodeName ?? "")
            .accessibilityIdentifier(emoji.unicodeIdentifier ?? "")
    }
}

public extension TMEmojiKeyboard {
    
    typealias EmojiAction = (Emoji) -> Void

    static var standardKeyboardActionHandler: KeyboardActionHandler {
        KeyboardInputViewController.shared.keyboardActionHandler
    }

    static func standardEmojiAction(emoji: Emoji) {
        standardKeyboardActionHandler.handle(.tap, on: .emoji(emoji))
    }

    static func standardEmojiView(
        for emoji: Emoji,
        style: EmojiKeyboardStyle
    ) -> some View {
        EmojiKeyboardItem(emoji: emoji, style: style)
    }
}


public extension TMEmojiKeyboard {
    init(
        emojis: [Emoji],
        style: EmojiKeyboardStyle = .standardPhonePortrait,
        emojiButtonAction: @escaping EmojiAction
    ) where ButtonView == EmojiKeyboardButton {
        self.init(
            emojis: emojis,
            style: style,
            emojiButton: {
                EmojiKeyboardButton(
                    emoji: $0,
                    style: $1,
                    action: emojiButtonAction)
            }
        )
    }

    init(
        emojis: [Emoji],
        style: EmojiKeyboardStyle = .standardPhonePortrait
    ) where ButtonView == EmojiKeyboardItem {
        self.init(
            emojis: emojis,
            style: style,
            applyGestures: true,
            emojiButton: { EmojiKeyboardItem(emoji: $0, style: $1) }
        )
    }
}

