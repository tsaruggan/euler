//
//  TMEmojiKeyboard.swift
//  textmathkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-22.
//

import SwiftUI
import KeyboardKit

@available(iOS 14.0, tvOS 14.0, *)
public struct TMEmojiKeyboard: View {
    
    public init(
        categories: [TMEmojiCategory] = TMEmojiCategory.all,
        keyboardContext: KeyboardContext,
        selection: TMEmojiCategory? = nil,
        style: EmojiKeyboardStyle = .standardPhonePortrait
    ) {
        self.categories = categories.filter { $0.emojis.count > 0 }
        self.keyboardContext = keyboardContext
        self.appearance = TMKeyboardAppearance(keyboardContext: keyboardContext)
        self.initialSelection = selection
        self.style = style
    }
    
    private let categories: [TMEmojiCategory]
    private let keyboardContext: KeyboardContext
    private let appearance: KeyboardAppearance
    private let initialSelection: TMEmojiCategory?
    private let style: EmojiKeyboardStyle
    
    @State
    private var isInitialized = false
    
    @State
    private var isSearchFocused = false
    
    @State
    private var query = ""
    
    @State
    private var selection = TMEmojiCategory.greek
    
    private var defaults: UserDefaults { .standard }
    
    private let defaultsKey = "com.keyboardkit.EmojiCategoryKeyboard.category"
    
    private var persistedCategory: TMEmojiCategory {
        let name = defaults.string(forKey: defaultsKey) ?? ""
        return categories.first { $0.rawValue == name } ?? .greek
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

@available(iOS 14.0, tvOS 14.0, *)
private extension TMEmojiKeyboard {
    
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
    
    var keyboard: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            EmojiKeyboard(
                emojis: selection.emojis.matching(query, for: keyboardContext.locale),
                style: style)
        }.id(selection)
    }
    
    var menu: some View {
        TMEmojiCategoryKeyboardMenu(
            categories: categories,
            appearance: appearance,
            keyboardContext: keyboardContext,
            selection: $selection,
            style: style
        )
    }
    
    var searchField: some View {
        KeyboardTextField(
            KKL10n.searchEmoji.text(for: keyboardContext.locale),
            text: $query,
            hasFocus: $isSearchFocused,
            resignOnReturn: true,
            config: { $0.borderStyle = .roundedRect }
        ).padding([.horizontal, .bottom])
    }
}

public struct TMEmojiCategoryKeyboardMenu: View {
    
    public init(
        categories: [TMEmojiCategory] = TMEmojiCategory.all,
        appearance: KeyboardAppearance,
        keyboardContext: KeyboardContext,
        selection: Binding<TMEmojiCategory>,
        style: EmojiKeyboardStyle,
        actionHandler: KeyboardActionHandler = KeyboardInputViewController.shared.keyboardActionHandler
    ) {
        self.categories = categories.filter { $0.emojis.count > 0 }
        self.appearance = appearance
        self.keyboardContext = keyboardContext
        self._selection = selection
        self.style = style
        self.actionHandler = actionHandler
    }
    
    private let categories: [TMEmojiCategory]
    private let appearance: KeyboardAppearance
    private let keyboardContext: KeyboardContext
    private let style: EmojiKeyboardStyle
    private let actionHandler: KeyboardActionHandler
    
    @State private var isInitialized = false
    @Binding private var selection: TMEmojiCategory
    
    public var body: some View {
        HStack(spacing: 0) {
            Spacer()
            keyboardSwitchButton.font(style.systemFont)
            Spacer()
            buttonList.font(style.categoryFont)
            Spacer()
            backspaceButton.font(style.systemFont)
            Spacer()
        }
    }
    
    private var backspaceButton: some View {
        let action = KeyboardAction.backspace
        let image = appearance.buttonImage(for: action)
        return image.keyboardGestures(
            for: action,
            actionHandler: actionHandler).scaledToFill()
    }
    
    private var keyboardSwitchButton: some View {
        let action = KeyboardAction.keyboardType(.alphabetic(.lowercased))
        let text = appearance.buttonText(for: action) ?? "ABC"
        return Text(text).keyboardGestures(
            for: action,
            actionHandler: actionHandler).scaledToFill()
    }
    
    private var buttonList: some View {
        ForEach(categories) {
            buttonListItem(for: $0)
        }
    }
    
    private func buttonListItem(for category: TMEmojiCategory) -> some View {
        Button(action: { selection = category }, label: {
            Text(category.fallbackDisplayEmoji.char)
                .padding(3)
                .background(selection == category ? style.selectedCategoryColor : Color.clear)
                .clipShape(Circle())
        })
    }
}
