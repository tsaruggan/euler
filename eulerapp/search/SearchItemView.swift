//
//  SearchItemView.swift
//  euler
//
//  Created by Saruggan Thiruchelvan on 2023-02-14.
//

import SwiftUI

struct SearchItemView: View {
    var symbol: Symbol
    
    @State private var isPressed: Bool = false
    
    var label: String {
        return symbol.name
    }
    
    var body: some View {
        Button {
            UIPasteboard.general.string = symbol.string
            
            isPressed = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                isPressed = false
            }
        } label: {
            VStack {
                Text(symbol.string)
                    .font(.system(size: 50))
                Spacer()
                Text(isPressed ? "copied!" : label)
                    .font(.system(size: 12))
                    .bold()
                    .multilineTextAlignment(.center)
                    .lineLimit(2, reservesSpace: true)
            }
        }
        .buttonStyle(SearchItemButtonStyle())
    }
}


struct SearchItemButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        return configuration.label
            .padding(.vertical)
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(configuration.isPressed ? Color.yellow.opacity(0.5) : Color.clear)
                    .frame(width: 85)
//                    .animation(Animation.easeInOut.delay(0.1), value: configuration.isPressed)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(configuration.isPressed ? Color.brown : Color.clear,
                            style: StrokeStyle(lineWidth: configuration.isPressed ? 5 : 0, dash: [24, 8]))
                    .frame(width: 85)
            )
            .foregroundColor(.primary)
    }
}
