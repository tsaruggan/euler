//
//  EulerEmojiCategoryKeyboard.swift
//  eulerkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-22.
//

import SwiftUI
import KeyboardKit

public struct EulerEmojiCategoryKeyboard: View {
    
    public init(
        keyboardContext: KeyboardContext
    ) {
        self.categories = EulerEmojiCategory.all.filter { $0.emojis.count > 0 }
        self.keyboardContext = keyboardContext
        self.appearance = EulerKeyboardAppearance(keyboardContext: keyboardContext)
        self.initialSelection = nil
        self.style = .custom(for: keyboardContext)
        
    }
    
    private let categories: [EulerEmojiCategory]
    private let keyboardContext: KeyboardContext
    private let appearance: KeyboardAppearance
    private let initialSelection: EulerEmojiCategory?
    private let style: EmojiKeyboardStyle
    
    @State
    private var isInitialized = false
    
    @State
    private var isSearchFocused = false
    
    @State
    private var query = ""
    
    @State
    private var selection = EulerEmojiCategory.greek
    
    private var defaults: UserDefaults { .standard }
    
    private let defaultsKey = "com.keyboardkit.TMEmojiKeyboard.category"
    
    private var persistedCategory: EulerEmojiCategory {
        let name = defaults.string(forKey: defaultsKey) ?? ""
        return categories.first { $0.rawValue == name } ?? .greek
    }
    
    private var emojis: [Emoji] {
        return selection.emojis.matching(query, for: keyboardContext.locale).map {
            $0.char == "__" ? Emoji("") : $0
        }
    }
    
    private func initialize() {
        if isInitialized { return }
        selection = initialSelection ?? persistedCategory
        isInitialized = true
    }
    
    private func saveCurrentCategory() {
        guard isInitialized else { return }
        defaults.set(selection.rawValue, forKey: defaultsKey)
    }
    
    
    public var body: some View {
        VStack(spacing: style.verticalCategoryStackSpacing) {
            title
            keyboard
            menu
        }
        .onAppear(perform: initialize)
        .onChange(of: selection) { _ in saveCurrentCategory() }
    }
}

private extension EulerEmojiCategoryKeyboard {
    
    var title: some View {
        HStack {
            Text(selection.title)
                .bold()
                .textCase(.uppercase)
                .opacity(0.4)
            Spacer()
        }
        .padding(.horizontal)
    }
    
    var gridItem: GridItem{
        return GridItem(.fixed(style.itemSize), spacing: style.verticalItemSpacing - 9)
    }
    var rows: Array<GridItem> {
        return Array(repeating: gridItem, count: style.rows)
    }
    
    var keyboard: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            EmojiKeyboard(emojis:  emojis, style: style)
                .overlay { // hot fix for scrolling bug!
                    Rectangle()
                        .fill(Color.clearInteractable)
                        .allowsHitTesting(false)
                }
        }
}

var menu: some View {
    EulerEmojiCategoryKeyboardMenu(
        categories: categories,
        appearance: appearance,
        keyboardContext: keyboardContext,
        selection: $selection,
        style: style
    )
}
}

public extension EmojiKeyboardStyle {
    static func custom(
        for context: KeyboardContext
    ) -> EmojiKeyboardStyle {
        let style = EmojiKeyboardStyle(
            rows: 4,
            itemSize: 50,
            itemFont:.system(size: 30),
            horizontalItemSpacing:  16,
            verticalItemSpacing:  6,
            verticalCategoryStackSpacing:  0,
            categoryFont:  .system(size: 24),
            systemFont:  .system(size: 16),
            selectedCategoryColor:  .primary.opacity(0.1),
            abcText: "ABC",
            backspaceIcon:  .keyboardBackspace
        )
        return style
    }
}
