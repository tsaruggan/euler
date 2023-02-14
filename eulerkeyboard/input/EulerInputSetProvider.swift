//
//  EulerInputSetProvider.swift
//  eulerkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-18.
//

import KeyboardKit

class EulerInputSetProvider: InputSetProvider {
    
    var alphabeticInputSet: AlphabeticInputSet = .qwerty
    
    var numericInputSet: NumericInputSet {
        NumericInputSet(rows: [
            .init(chars: Input.numericInputSetRow1),
            .init(chars: Input.numericInputSetRow2),
            .init(chars: Input.numericInputSetRow3)
        ])
    }
    
    var symbolicInputSet: SymbolicInputSet {
        SymbolicInputSet(rows: [
            .init(chars: Input.symbolicInputSetRow1),
            .init(chars: Input.symbolicInputSetRow2),
            .init(chars: Input.symbolicInputSetRow3)
        ])
    }
}
