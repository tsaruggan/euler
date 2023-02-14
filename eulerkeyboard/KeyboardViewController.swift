//
//  KeyboardViewController.swift
//  eulerkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-16.
//

import UIKit
import KeyboardKit
import SwiftUI

class KeyboardViewController: KeyboardInputViewController {
    
    override func viewDidLoad() {
        
        keyboardBehavior = EulerKeyboardBehaviour()
        
        inputSetProvider = EulerInputSetProvider()
        
        keyboardLayoutProvider = EulerKeyboardLayoutProvider(keyboardContext: keyboardContext, inputSetProvider: inputSetProvider)
        
        calloutActionProvider = try! EulerCalloutActionProvider()
        
        keyboardAppearance = EulerKeyboardAppearance(keyboardContext: keyboardContext)
        
        autocompleteProvider = EulerAutocompleteProvider()
        
        super.viewDidLoad()
    }
    
    override func viewWillSetupKeyboard() {
        super.viewWillSetupKeyboard()
        setup(with: KeyboardView())
    }
    
}
