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
    
    var id: String { rawValue }
    
    static var all: [TMEmojiCategory] { allCases }
    
    var emojis: [Emoji] {
        emojisString
            .replacingOccurrences(of: "\n", with: "")
            .compactMap { Emoji(String($0)) }
    }
    
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
    
    var emojiActions: [KeyboardAction] {
        emojis.map { .emoji($0) }
    }
    
    var fallbackDisplayEmoji: Emoji {
        switch self {
        case .frequent: return Emoji("★")
        case .greek: return Emoji("π")
        case .settheory: return Emoji("∅")
        }
    }
    
    var title: String {
        switch self {
        case .frequent: return "Frequently Used"
        case .greek: return "Greek Alphabet"
        case .settheory: return "Set Theory"
        }
    }
}
