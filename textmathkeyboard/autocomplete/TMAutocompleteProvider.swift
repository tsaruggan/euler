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
        if text.isEmpty {
            return completion(.success([]))
        } else if lastWord.contains("^") {
            return completion(.success(superscriptSuggestion(for: text)))
        } else if lastWord.contains("_") {
            return completion(.success(subscriptSuggestion(for: text)))
        }
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
    
    func autocompleteSuggestion(_ word: String, _ subtitle: String? = nil) -> AutocompleteSuggestion {
        StandardAutocompleteSuggestion(
            text: word,
            title: word,
            subtitle: subtitle)
    }
    
    func superscriptSuggestion(for text: String) -> [AutocompleteSuggestion] {
        let componentsArr = text.split(separator: "^", maxSplits: 1)
        let base: String = componentsArr.count > 0 ? String(componentsArr[0]) : ""
        let superscripts: String = componentsArr.count > 1 ? String(componentsArr[1]) : ""
        
        if superscripts.isEmpty { return [] }
        
        var superscriptFull = ""
        for candidateSuperscript in superscripts {
            if let sup = Input.superscripts[String(candidateSuperscript)] {
                superscriptFull += sup
            } else {
                return []
            }
        }
        
        let suggestion: String = base + superscriptFull
        return [autocompleteSuggestion(suggestion)]
    }
    
    func subscriptSuggestion(for text: String) -> [AutocompleteSuggestion] {
        let componentsArr = text.split(separator: "_", maxSplits: 1)
        let base: String = componentsArr.count > 0 ? String(componentsArr[0]) : ""
        let subscripts: String = componentsArr.count > 1 ? String(componentsArr[1]) : ""
        
        if subscripts.isEmpty { return [] }
        
        var subscriptFull = ""
        for candidateSubscript in subscripts {
            if let sub = Input.subscripts[String(candidateSubscript)] {
                subscriptFull += sub
            } else {
                return []
            }
        }
        
        let suggestion: String = base + subscriptFull
        return [autocompleteSuggestion(suggestion)]
    }
}
