//
//  TMAutocompleteProvider.swift
//  textmathkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-02-12.
//

import Foundation
import KeyboardKit

class TMAutocompleteProvider: AutocompleteProvider {
    
    var locale: Locale = .current
    
    func autocompleteSuggestions(for text: String, completion: AutocompleteCompletion) {
        let lastWord = text.components(separatedBy: " ").last ?? ""
        //        if text.isEmpty {
        //            return completion(.success([]))
        //        } else {
        //            completion(.success(suggestions(for: text)))
        //        }
        
        if lastWord.contains("^") {
            return completion(.success(superscriptSuggestion(for: text)))
        } else if lastWord.contains("_") {
            return completion(.success(subscriptSuggestion(for: text)))
        }
        return completion(.success([]))
    }
    
    var canIgnoreWords: Bool { false }
    var canLearnWords: Bool { false }
    var ignoredWords: [String] = []
    var learnedWords: [String] = []
    
    func hasIgnoredWord(_ word: String) -> Bool { false }
    func hasLearnedWord(_ word: String) -> Bool { false }
    func ignoreWord(_ word: String) {}
    func learnWord(_ word: String) {}
    func removeIgnoredWord(_ word: String) {}
    func unlearnWord(_ word: String) {}
}

private extension TMAutocompleteProvider {
    
    func suggestions(for text: String) -> [AutocompleteSuggestion] {
        return [
            suggestion(text + "ly"),
            suggestion(text + "er", "Subtitle"),
            suggestion(text + "ter")
        ]
    }
    
    func suggestion(_ word: String, _ subtitle: String? = nil) -> AutocompleteSuggestion {
        StandardAutocompleteSuggestion(
            text: word,
            title: word,
            subtitle: subtitle)
    }
    
    func superscriptSuggestion(for text: String) -> [AutocompleteSuggestion] {
        let componentsArr = text.split(separator: "^", maxSplits: 1)
        let base: String = String(componentsArr[0])
        let superscripts: String = componentsArr.count > 1 ? String(componentsArr[1]) : ""
        
        let superscriptsDict = [
            "1": "¹",
            "2": "²",
            "3": "³",
            "4": "⁴",
            "5": "⁵",
            "6": "⁶",
            "7": "⁷",
            "8": "⁸",
            "9": "⁹",
            "0": "⁰"
        ]
        var superscriptFull = ""
        for candidateSuperscript in superscripts {
            if let sup = superscriptsDict[String(candidateSuperscript)] {
                superscriptFull += sup
            } else {
                return []
            }
        }
        
        let suggestion: String = base + superscriptFull
        return [StandardAutocompleteSuggestion(text: suggestion, title: suggestion)]
    }
    
    func subscriptSuggestion(for text: String) -> [AutocompleteSuggestion] {
        let componentsArr = text.split(separator: "_", maxSplits: 1)
        let base: String = String(componentsArr[0])
        let subscripts: String = componentsArr.count > 1 ? String(componentsArr[1]) : ""
        
        let subscriptsDict = [
            "1": "₁",
            "2": "₂",
            "3": "₃",
            "4": "₄",
            "5": "₅",
            "6": "₆",
            "7": "₇",
            "8": "₈",
            "9": "₉",
            "0": "₀",
        ]
        
        var subscriptFull = ""
        for candidateSubscript in subscripts {
            if let sub = subscriptsDict[String(candidateSubscript)] {
                subscriptFull += sub
            } else {
                return []
            }
        }
        
        let suggestion: String = base + subscriptFull
        return [StandardAutocompleteSuggestion(text: suggestion, title: suggestion)]
    }
}
