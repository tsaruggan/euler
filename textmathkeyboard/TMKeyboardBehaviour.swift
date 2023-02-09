//
//  TMKeyboardBehaviour.swift
//  textmathkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-02-09.
//

import Foundation
import KeyboardKit

class TMKeyboardBehaviour: KeyboardBehavior {
    
    var backspaceRange: KeyboardKit.DeleteBackwardRange = .char
    
    func preferredKeyboardType(after gesture: KeyboardKit.KeyboardGesture, on action: KeyboardKit.KeyboardAction) -> KeyboardKit.KeyboardType {
        .alphabetic(.lowercased)
    }
    
    func shouldEndSentence(after gesture: KeyboardKit.KeyboardGesture, on action: KeyboardKit.KeyboardAction) -> Bool {
        false
    }
    
    func shouldSwitchToCapsLock(after gesture: KeyboardKit.KeyboardGesture, on action: KeyboardKit.KeyboardAction) -> Bool {
        false
    }
    
    func shouldSwitchToPreferredKeyboardType(after gesture: KeyboardKit.KeyboardGesture, on action: KeyboardKit.KeyboardAction) -> Bool {
        false
    }
    
    func shouldSwitchToPreferredKeyboardTypeAfterTextDidChange() -> Bool {
        false
    }
}

