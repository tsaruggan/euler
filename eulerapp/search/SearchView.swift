//
//  SearchView.swift
//  euler
//
//  Created by Saruggan Thiruchelvan on 2023-02-14.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""

    private var symbols = [
        Symbol(symbol: "α", name: "alpha"),
        Symbol(symbol: "β", name: "zeta"),
        Symbol(symbol: "γ", name: "gamma"),
        Symbol(symbol: "δ", name: "delta"),
        Symbol(symbol: "ε", name: "epsilon"),
        Symbol(symbol: "ζ", name: "zeta"),
        Symbol(symbol: "θ", name: "theta"),
        Symbol(symbol: "π", name: "pi"),
        Symbol(symbol: "ω", name: "omega")
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100, maximum: 100))], spacing: 20) {
                    ForEach(symbols) { symbol in
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


struct Symbol: Identifiable {
    var id: UUID = UUID()
    var symbol: String
    var name: String
}
