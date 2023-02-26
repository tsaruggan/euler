//
//  ContentView.swift
//  eulerapp
//
//  Created by Saruggan Thiruchelvan on 2023-01-16.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var input = Input()
    
    var body: some View {
        TabView {
            SearchView(symbols: input.symbols)
                .tabItem {
                    Label("search", systemImage: "magnifyingglass")
                }
            AboutView()
                .tabItem {
                    Label("about", systemImage: "atom")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
