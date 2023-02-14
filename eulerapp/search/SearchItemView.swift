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
        VStack{
            Text(symbol.symbol)
                .font(.system(size: 50))
            Spacer()
            Text(symbol.name)
                .font(.system(size: 12))
                .multilineTextAlignment(.center)
        }
        .padding()
//        .overlay(
//            RoundedRectangle(cornerRadius: 10)
//                .stroke(Color.black, style: StrokeStyle(lineWidth: 1))
//        )
        .onTapGesture {
            UIPasteboard.general.string = symbol.symbol
        }
    }
    
    
}
