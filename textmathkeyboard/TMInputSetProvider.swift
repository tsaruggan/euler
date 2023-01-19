//
//  TMInputSetProvider.swift
//  textmathkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-18.
//

import KeyboardKit

class TMInputSetProvider: InputSetProvider {
    
    var alphabeticInputSet: AlphabeticInputSet = .qwerty
    
    var numericInputSet: NumericInputSet {
        NumericInputSet(rows: [
            .init(chars: "1234567890"),
            .init(chars: "/•~→()<>"),
            .init(chars: "+-×÷=")
        ])
    }
    
    let symbolicInputSet: SymbolicInputSet = .english(currency: "$")
}
