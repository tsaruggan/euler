//
//  TMCalloutActionProvider.swift
//  textmathkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-18.
//

import KeyboardKit

class TMCalloutActionProvider: BaseCalloutActionProvider {
    
    override func calloutActionString(for char: String) -> String {
        if let callout = Input.callouts[char] {
            return callout
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
