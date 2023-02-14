//
//  EulerKeyboardBehaviour.swift
//  eulerkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-02-09.
//

import Foundation
import KeyboardKit

class EulerKeyboardBehaviour: KeyboardBehavior {
    
    var backspaceRange: KeyboardKit.DeleteBackwardRange = .char
    
    func preferredKeyboardType(after gesture: KeyboardKit.KeyboardGesture, on action: KeyboardKit.KeyboardAction) -> KeyboardKit.KeyboardType {
        return .alphabetic(.lowercased)
    }
    
    func shouldEndSentence(after gesture: KeyboardKit.KeyboardGesture, on action: KeyboardKit.KeyboardAction) -> Bool {
        return false
    }
    
    func shouldSwitchToCapsLock(after gesture: KeyboardKit.KeyboardGesture, on action: KeyboardKit.KeyboardAction) -> Bool {
        return false
    }
    
    func shouldSwitchToPreferredKeyboardType(after gesture: KeyboardKit.KeyboardGesture, on action: KeyboardKit.KeyboardAction) -> Bool {
        return false
    }
    
    func shouldSwitchToPreferredKeyboardTypeAfterTextDidChange() -> Bool {
        return false
    }
}

