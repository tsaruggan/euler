//
//  SearchView.swift
//  euler
//
//  Created by Saruggan Thiruchelvan on 2023-02-14.
//

import SwiftUI

struct SearchView: View {
    var symbols: [Symbol]
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 85, maximum: 85))], spacing: 20) {
                    ForEach(filteredSymbols, id: \.self) { symbol in
                        SearchItemView(symbol: symbol)
                    }
                }
                .multilineTextAlignment(.center)
            }
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "search")
    }
    
    var filteredSymbols: [Symbol] {
        if searchText.isEmpty {
            return symbols
        } else {
            return symbols.filter { symbol in
                let description = symbol.description.joined(separator: " ") + symbol.string
                return description.caseInsensitiveContains(searchText)
            }
        }
    }
}

extension StringProtocol {
    func caseInsensitiveContains<S: StringProtocol>(_ string: S) -> Bool { range(of: string, options: .caseInsensitive) != nil }
}

extension StringProtocol where Self: RangeReplaceableCollection {
    var letters: Self { filter(\.isLetter) }
}

