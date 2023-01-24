//
//  TMEmojiCategory.swift
//  textmathkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-22.
//

import Foundation
import KeyboardKit

public enum TMEmojiCategory: String, CaseIterable, Codable, EmojiProvider, Identifiable, Equatable {
    
    case
    frequent,
    greek,
    settheory
    
    public static var frequentEmojiProvider: FrequentEmojiProvider = MostRecentEmojiProvider()
}

public extension TMEmojiCategory {
    
    /**
     The category's unique identifier.
     */
    var id: String { rawValue }
    
    /**
     An ordered list of all available categories.
     */
    static var all: [TMEmojiCategory] { allCases }
    
    /**
     An ordered list with all emojis in the category.
     */
    var emojis: [Emoji] {
        emojisString
            .replacingOccurrences(of: "\n", with: "")
            .compactMap { Emoji(String($0)) }
    }
    
    /**
     An ordered string with all emojis in the category.
     */
    var emojisString: String {
        switch self {
        case .frequent: return Self.frequentEmojiProvider.emojis.map { $0.char }.joined(separator: "")
        case .greek: return """
αβγδεζηθικ
λμνξοπρστυ
φχψω
"""
        case .settheory: return """
⋂⋃⊆⊂⊄⊇⊃⊅∈∉
"""
        }
    }
    
    /**
     An ordered list with all emoji actions in the category.
     */
    var emojiActions: [KeyboardAction] {
        emojis.map { .emoji($0) }
    }
    
    /**
     The fallback emoji string that can be used by the emoji
     category if the app doesn't provide a custom image.
     */
    var fallbackDisplayEmoji: Emoji {
        switch self {
        case .frequent: return Emoji("★")
        case .greek: return Emoji("π")
        case .settheory: return Emoji("∅")
        }
    }
    
    /**
     The English title for the category. You can use this if
     your extension only supports English.
     */
    var title: String {
        switch self {
        case .frequent: return "Frequently Used"
        case .greek: return "Greek Alphabet"
        case .settheory: return "Set Theory"
        }
    }
}
