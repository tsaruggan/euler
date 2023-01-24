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
        
        //        // Setup an custom input set provider.
        //        // 💡 Have a look at the other demo projects, where this is done.
        inputSetProvider = TMInputSetProvider()
        
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
        
        calloutActionProvider = try! TMCalloutActionProvider()
        
        keyboardAppearance = TMKeyboardAppearance(keyboardContext: keyboardContext)
        
        // Call super to perform the base initialization
        super.viewDidLoad()
    }
    
    override func viewWillSetupKeyboard() {
        super.viewWillSetupKeyboard()
        setup(with: KeyboardView())
    }
    
}
