//
//  Symbol.swift
//  euler
//
//  Created by Saruggan Thiruchelvan on 2023-02-18.
//

import Foundation

struct Symbol {
    // the mathematical symbol or formula comprised of unicode characters to be typed / copied
    var string: String
    
    // the different names, keywords, and contexts associated with the symbol
    var description: [String]
    
    // the formal, most common name of the symbol
    var name: String { return description[0] }
    
    init(_ string: String, _ keywords: String...) {
        self.string = string
        self.description = keywords
    }
}

extension Symbol: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(string)
    }
}

extension Symbol: Equatable {
    static func == (lhs: Symbol, rhs: Symbol) -> Bool {
        return lhs.string == rhs.string
    }
}
