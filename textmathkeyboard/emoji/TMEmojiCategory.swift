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
    arithmetic,
    equality,
    settheory,
    calculus,
    geometry,
    linearalgebra,
    logic
    
    public static var frequentEmojiProvider: FrequentEmojiProvider = MostRecentEmojiProvider()
}

public extension TMEmojiCategory {
    
    var id: String { rawValue }
    
    static var all: [TMEmojiCategory] { allCases }
    
    var emojis: [Emoji] {
        if emojisString.components(separatedBy: " ").count == 1 {
            return emojisString
                .replacingOccurrences(of: "\n", with: "")
                .compactMap { Emoji(String($0)) }
        } else {
            return emojisString
                .replacingOccurrences(of: "\n", with: " ")
                .components(separatedBy: " ")
                .compactMap { Emoji(String($0)) }
        }
    }
    
    var emojisString: String {
        switch self {
        case .frequent: return Self.frequentEmojiProvider.emojis.map { $0.char }.joined(separator: " ")
        case .greek: return Input.greek
        case .settheory: return Input.settheory
        case .calculus: return Input.calculus
        case .logic: return Input.logic
        case .arithmetic: return Input.arithmetic
        case .equality: return Input.equality
        case .geometry: return Input.geometry
        case .linearalgebra: return Input.linearalgebra
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
        case .calculus: return Emoji("∫")
        case .logic: return Emoji("∀")
        case .arithmetic: return Emoji("+")
        case .equality: return Emoji("=")
        case .linearalgebra: return Emoji("✖︎")
        case .geometry: return Emoji("◣")
        }
        
    }
    var title: String {
        switch self {
        case .frequent: return "Frequently Used"
        case .greek: return "Greek Alphabet"
        case .settheory: return "Set Theory"
        case .calculus: return "Calculus & Functions"
        case .logic: return "Logic"
        case .arithmetic: return "Numbers & Arithmetic"
        case .equality: return "Equality & Comparison"
        case .geometry: return "Geometry"
        case .linearalgebra: return "Linear Algebra"
            
        }
    }
    
}
