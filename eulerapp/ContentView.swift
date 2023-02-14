//
//  ContentView.swift
//  eulerapp
//
//  Created by Saruggan Thiruchelvan on 2023-01-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SearchView()
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
