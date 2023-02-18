//
//  SearchView.swift
//  euler
//
//  Created by Saruggan Thiruchelvan on 2023-02-14.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    private var symbols = Input.symbols.sorted { $0.string <= $1.string }

    var body: some View {
        NavigationView {
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
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}


struct Sym: Identifiable {
    var id: UUID = UUID()
    var symbol: String
    var name: String
}
