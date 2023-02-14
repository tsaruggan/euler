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
        StandardAutocompleteSuggestion(text: word, title: word, subtitle: subtitle)
    }
    
    // generate a suggestion for a base + superscript for text containing "^"
    func superscriptSuggestion(for text: String) -> [AutocompleteSuggestion] {
        // separate base and superscript components from text
        let componentsArr = text.split(separator: "^", maxSplits: 1)
        let base: String = componentsArr.count > 0 ? String(componentsArr[0]) : ""
        let superscripts: String = componentsArr.count > 1 ? String(componentsArr[1]) : ""
        
        // if no superscript (yet), return nothing
        if superscripts.isEmpty { return [] }
        
        // for every char to convert to superscript,
        // lookup corresponding superscript and append to the full superscript string
        var superscriptFull = ""
        for candidateSuperscript in superscripts {
            if let sup = Input.superscripts[String(candidateSuperscript)] {
                superscriptFull += sup
            } else {
                // if the corresponding superscript doesn't exist, break and return nothing
                return []
            }
        }
        
        // recombine base and newly superscripted string components and return
        let suggestion: String = base + superscriptFull
        return [autocompleteSuggestion(suggestion)]
    }
    
    // generate a suggestion for a base + subscript for text containing "_"
    func subscriptSuggestion(for text: String) -> [AutocompleteSuggestion] {
        // separate base and subscript components from text
        let componentsArr = text.split(separator: "_", maxSplits: 1)
        let base: String = componentsArr.count > 0 ? String(componentsArr[0]) : ""
        let subscripts: String = componentsArr.count > 1 ? String(componentsArr[1]) : ""
        
        // if no superscript (yet), return nothing
        if subscripts.isEmpty { return [] }
        
        // for every char to convert to subscript,
        // lookup corresponding subscript and append to the full subscript string
        var subscriptFull = ""
        for candidateSubscript in subscripts {
            if let sub = Input.subscripts[String(candidateSubscript)] {
                subscriptFull += sub
            } else {
                // if the corresponding subscript doesn't exist, break and return nothing
                return []
            }
        }
        
        // recombine base and newly subscripted string components and return
        let suggestion: String = base + subscriptFull
        return [autocompleteSuggestion(suggestion)]
    }
}
