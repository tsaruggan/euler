//
//  SearchItemView.swift
//  euler
//
//  Created by Saruggan Thiruchelvan on 2023-02-14.
//

import SwiftUI

struct SearchItemView: View {
    var symbol: Symbol
    
    var body: some View {
        Button {
            UIPasteboard.general.string = symbol.symbol
        } label: {
            VStack {
                Text(symbol.symbol)
                    .font(.system(size: 50))
                Spacer()
                Text(symbol.name)
                    .font(.system(size: 12))
                    .multilineTextAlignment(.center)
            }
        }
        .buttonStyle(SearchItemButtonStyle())
    }
}


struct SearchItemButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(configuration.isPressed ? Color(UIColor.systemBackground) : Color.clear)
                    .frame(width: 85)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(configuration.isPressed ? Color.yellow.opacity(0.5) : Color.clear)
                    .frame(width: 85)
                    .animation(.easeOut(duration: 1), value: configuration.isPressed)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(configuration.isPressed ? Color.brown : Color.clear,
                            style: StrokeStyle(lineWidth: configuration.isPressed ? 5 : 0, dash: [24, 8]))
                    .frame(width: 85)
            )
            .overlay(
                VStack{
                    Text("\(Image(systemName: "doc.on.doc"))")
                        .font(.system(size: 24))
                    Text("copied!")
                        .font(.system(size: 12))
                        .bold()
                }
                    .opacity(configuration.isPressed ? 1 : 0)
                .foregroundColor(.secondary)
                
                
            )
            .foregroundColor(.primary)
            
    }
}
