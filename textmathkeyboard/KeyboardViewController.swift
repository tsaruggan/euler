//
//  KeyboardViewController.swift
//  textmathkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-16.
//

import UIKit
import KeyboardKit
import SwiftUI

class KeyboardViewController: KeyboardInputViewController {
    
    override func viewDidLoad() {
        
        keyboardBehavior = TMKeyboardBehaviour()
        
        inputSetProvider = TMInputSetProvider()
        
        keyboardLayoutProvider = TMKeyboardLayoutProvider(keyboardContext: keyboardContext, inputSetProvider: inputSetProvider)
        
        calloutActionProvider = try! TMCalloutActionProvider()
        
        keyboardAppearance = TMKeyboardAppearance(keyboardContext: keyboardContext)
        
        autocompleteProvider = TMAutocompleteProvider()
        
        super.viewDidLoad()
    }
    
    override func viewWillSetupKeyboard() {
        super.viewWillSetupKeyboard()
        setup(with: KeyboardView())
    }
    
}
