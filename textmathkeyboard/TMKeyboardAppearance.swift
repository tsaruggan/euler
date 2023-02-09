//
//  TMKeyboardAppearance.swift
//  textmathkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-18.
//

import KeyboardKit
import SwiftUI

class TMKeyboardAppearance: StandardKeyboardAppearance {
    override func buttonImage(for action: KeyboardAction) -> Image? {
        if case .keyboardType(let keyboardType) = action {
            switch keyboardType {
            case .emojis:
                return Image(uiImage: "π".textToImage(fontSize: 18.5)!)
            case .symbolic:
                return Image(uiImage: "#$%".textToImage(fontSize: 14)!)
            default:
                return action.standardButtonImage(for: keyboardContext)
            }
            
        } else {
            return super.buttonImage(for: action)
        }
    }
    
}

import UIKit
extension String {
    func textToImage(fontSize: CGFloat = 17) -> UIImage? {
        let nsString = (self as NSString)
        let font = UIFont.systemFont(ofSize: fontSize) // you can change your font size here
        let stringAttributes = [NSAttributedString.Key.font: font]
        let imageSize = nsString.size(withAttributes: stringAttributes)

        UIGraphicsBeginImageContextWithOptions(imageSize, false, 0) //  begin image context
        UIColor.clear.set() // clear background
        UIRectFill(CGRect(origin: CGPoint(), size: imageSize)) // set rect size
        nsString.draw(at: CGPoint.zero, withAttributes: stringAttributes) // draw text within rect
        let image = UIGraphicsGetImageFromCurrentImageContext() // create image from context
        UIGraphicsEndImageContext() //  end image context

        return image ?? UIImage()
    }
}
