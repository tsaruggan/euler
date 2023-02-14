//
//  EulerKeyboardAppearance.swift
//  eulerkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-18.
//

import KeyboardKit
import SwiftUI
import UIKit

class EulerKeyboardAppearance: StandardKeyboardAppearance {
    override func buttonImage(for action: KeyboardAction) -> Image? {
        // override default button images for emoji and symbolic keyboards
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
    
    // fix for background color persisting
    override func buttonStyle(for action: KeyboardAction, isPressed: Bool) -> KeyboardButtonStyle {
        switch action {
        case .keyboardType(.symbolic), .keyboardType(.numeric), .shift(currentState: .auto):
            return KeyboardButtonStyle(
                backgroundColor: buttonBackgroundColor(for: action, isPressed: false),
                foregroundColor: buttonForegroundColor(for: action, isPressed: isPressed),
                font: buttonFont(for: action),
                cornerRadius: buttonCornerRadius(for: action),
                border: buttonBorderStyle(for: action),
                shadow: buttonShadowStyle(for: action))
        default:
            return super.buttonStyle(for: action, isPressed: isPressed)
        }
    }
}

// convert a given string (or emoji) to an image
extension String {
    func textToImage(fontSize: CGFloat = 17) -> UIImage? {
        let nsString = (self as NSString)
        let font = UIFont.systemFont(ofSize: fontSize)
        let stringAttributes = [NSAttributedString.Key.font: font]
        let imageSize = nsString.size(withAttributes: stringAttributes)
        
        UIGraphicsBeginImageContextWithOptions(imageSize, false, 0)
        UIColor.clear.set()
        UIRectFill(CGRect(origin: CGPoint(), size: imageSize))
        nsString.draw(at: CGPoint.zero, withAttributes: stringAttributes)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image ?? UIImage()
    }
}
