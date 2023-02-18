//
//  SearchView.swift
//  euler
//
//  Created by Saruggan Thiruchelvan on 2023-02-14.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 85, maximum: 85))], spacing: 20) {
                    ForEach(symbols, id: \.self) { symbol in
                        SearchItemView(symbol: symbol)
                    }
                }
            }
        }
        .searchable(text: $searchText, prompt: "search")
        
    }
    
    var symbols: [Symbol] {
        if searchText.isEmpty {
            return Input.symbols
        } else {
            return Input.symbols.filter { symbol in
                return symbol.description.reduce(false, { $0 || $1.contains(searchText.lowercased()) })
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

