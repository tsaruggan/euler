//
//  KeyboardViewController.swift
//  textmathkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-16.
//

import UIKit
import KeyboardKit

class KeyboardViewController: KeyboardInputViewController {
    
    override func viewDidLoad() {
        
        //        // Setup an custom input set provider.
        //        // 💡 Have a look at the other demo projects, where this is done.
        inputSetProvider = DemoInputSetProvider()
        
        //        // Setup a demo-specific keyboard appearance.
        //        // 💡 You can change this appearance to see how the keyboard style changes.
        //        keyboardAppearance = DemoKeyboardAppearance(
        //            keyboardContext: keyboardContext)
        //
        //        // Setup a demo-specific keyboard action handler.
        //        // 💡 You can change this handler to see how the keyboard behavior changes.
        //        keyboardActionHandler = DemoKeyboardActionHandler(
        //            inputViewController: self)
        //
        //        // Setup a demo-specific keyboard layout provider.
        //        // 💡 You can change this provider to see how the keyboard layout changes.
        keyboardLayoutProvider = StandardKeyboardLayoutProvider(
            keyboardContext: keyboardContext,
            inputSetProvider: inputSetProvider)
        
        calloutActionProvider = try! MyCalloutActionProvider()
        
        // Call super to perform the base initialization
        super.viewDidLoad()
    }
    
    override func viewWillSetupKeyboard() {
        super.viewWillSetupKeyboard()
        setup(with: KeyboardView())
    }
    
}


class DemoInputSetProvider: InputSetProvider {
    
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

class MyCalloutActionProvider: BaseCalloutActionProvider {
    
    override func calloutActionString(for char: String) -> String {
        let basescripts: [Character] = Array("1234567890")
        let superscripts: [Character] = Array( "¹²³⁴⁵⁶⁷⁸⁹⁰")
        let subscripts: [Character] = Array( "₁₂₃₄₅₆₇₈₉₀")
        
        let character = char.first!
        
        if character.isNumber {
            let index = basescripts.firstIndex(of: character)!
            return String(superscripts[index]) + String(subscripts[index])
        } else {
            return super.calloutActionString(for: char)
        }
    }
}

extension String {

    var length: Int {
        return count
    }

    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }

    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }

    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }

    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
}
