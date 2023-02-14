//
//  EulerCalloutActionProvider.swift
//  eulerkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-18.
//

import KeyboardKit

class EulerCalloutActionProvider: BaseCalloutActionProvider {
    
    override func calloutActionString(for char: String) -> String {
        // lookup overrided callout from table and return, otherwise return default
        if let callout = Input.callouts[char] {
            return callout
        } else {
            return super.calloutActionString(for: char)
        }
    }
}
