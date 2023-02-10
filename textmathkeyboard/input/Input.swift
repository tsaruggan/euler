//
//  Input.swift
//  textmathkeyboard
//
//  Created by Saruggan Thiruchelvan on 2023-01-24.
//

import Foundation

struct Input {
    
    // numeric input set
    static let numericInputSetRow1: String = "1234567890"
    static let numericInputSetRow2: String = "/⋅√^*().,:"
    static let numericInputSetRow3: String = "+-×÷="
    
    // symbolic input set
    static let symbolicInputSetRow1: String = "[]{}<>≤≥≠≈"
    static let symbolicInputSetRow2: String = "\\|≡¬∧∨→∴_'"
    static let symbolicInputSetRow3: String = "#$%?!"
    
    // emoji input set
    static let greek: String = """
    α β γ δ
    ε ζ η θ
    ϑ ι κ ϰ
    λ μ ν ξ
    ο π ϖ ρ
    ϱ σ ς τ
    υ φ χ ψ
    ω __ __ __
    __ __ __ __
    Α Β Γ Δ
    Ε Ζ Η Θ
    Ι Κ Λ Μ
    Ν Ξ Ο Π
    Ρ Σ Τ Υ
    Φ Χ Ψ Ω
    """
    
    static let arithmetic: String = """
    7 4 1 0
    8 5 2 .
    9 6 3 =
    + - ± %
    × ⋅ * (
    ÷ : / )
    __ __ __ __
    ⁷ ⁴ ¹ ⁰
    ⁸ ⁵ ² ⁺
    ⁹ ⁶ ³ ⁻
    ^ ⁽ ⁾ ⁼
    __ __ __ __
    √ ∛ ∜ __
    __ __ __ __
    ↉ ⅒ ⅑ ⅛
    ⅐ ⅙ ⅕ ¼
    ⅓ ½ ⅖ ⅔
    ⅜ ⅗ ¾ ⅘
    ⅝ ⅚ ⅞ __
    __ __ __ __
    ₇ ₄ ₁ ₀
    ₈ ₅ ₂ ₊
    ₉ ₆ ₃ ₋
    _ ₍ ₎ ₌
    """
    
    static let equality: String = """
    = ≠ ≡ ≢
    ≈ ≅ ≐ ≔
    __ __ __ __
    < > ≮ ≯
    ≤ ≥ ≰ ≱
    ≪ ≫ ⋘ ⋙
    __ __ __ __
    ∝ ~
    """
    
    static let calculus: String = """
    x y y' y″
    dy/dx d²y/dx² dy dx
    f(x) f′(x) f″(x) f⁽⁾(x)
    df/dx d²f/dx² ∂f/∂x ∂²f/∂x∂y
    __ __ __ __
    ∫ ∬ ∭ F(x)
    ∮ ∯ ∰ +C
    __ __ __ __
    lim -∞→∞ 0→∞ -∞→0
    a→b x→a x→a⁺ x→a⁻
    ∞ x→∞ x→∞⁺ x→∞⁻
    0 x→0 x→0⁺ x→0⁻
    __ __ __ __
    aˣ logₐ(y) 10ˣ log(y)
    eˣ ln(y) __ __
    """
    
    static let geometry: String = """
    sin(x) sin⁻¹(x) arcsin(x) csc(x)
    cos(x) cos⁻¹(x) arccos(x) sec(x)
    tan(x) tan⁻¹(x) arctan(x) cot(x)
    adj opp hyp __
    __ __ __ __
    0° 30° 45° 60°
    90° 180° 270° 360°
    π/6 π/4 π/3 π/2
    π 3π/2 2π π/180
    θ φ ° __
    __ __ __ __
    ∠ ∡ ∟ ⦜
    ⟂ ∥ ∝ __
    __ __ __ __
    ⌒ ○ □ △
    ⊿
    """
    
    static let linearalgebra: String = """
    A Aᵀ A⁻¹ A*
    aᵢⱼ I 0 λ
    __ __ __ __
    + - ⋅ ⨯
    __ __ __ __
    tr(A) adj(A) det(A) |A|
    """
    
    static let logic: String = """
    ≡ ≢ := TRUE
    → ← ↔︎ FALSE
    ¬ ~ ! NOT
    ∧ • & AND
    ∨ + | OR
    __ __ __ __
    ∀ ∃ ( )
    ∴ ∵ __ __
    """
    
    static let settheory: String = """
    { } ∩ ∪
    __ __ __ __
    ∈ ∋ ∉ ∌
    ⊂ ⊃ ⊄ ⊅
    ⊆ ⊇ ⊈ ⊉
    __ __ __ __
    ∖ - ∆ ⊖
    ~ ' ∁ ᶜ
    × | # =
    __ __ __ __
    ℕ ℤ ℚ ℝ
    ℂ ℍ 𝔽 𝕆
    𝔻 𝔹 𝕌 ℙ
    ∅ __ __ __ __
    """
    
    // extras
    
    static let superscripts: String = """
    ⁰¹²³⁴⁵⁶⁷⁸⁹⁺⁻⁽⁾
    """
    
    static let subscripts: String = """
    ₀₁₂₃₄₅₆₇₈₉₊₋₍₎
    """
    
    static let fractions: String = """
    ½ ⅓ ⅔ ¼ ¾ ⅕ ⅒
    """
    
    static let blackboard: String = """
    ℕℤℚℝℂℍ𝔽𝕆𝔻𝔹
    """
    
    // callouts
    
    static let callouts = [
        "1": "¹₁",
        "2": "²₂",
        "3": "³₃",
        "4": "⁴₄",
        "5": "⁵₅",
        "6": "⁶₆",
        "7": "⁷₇",
        "8": "⁸₈",
        "9": "⁹₉",
        "0": "⁰₀",
        "+": "⁺₊",
        "-": "⁻₋",
        "=": "⁼₌",
        "(": "⁽₍",
        ")": "⁾₎",
        "a": "ᴬᵃₐ",
        "b": "ᴮᵇ𝔹",
        "c": "ᶜℂ",
        "d": "ᴰᵈ𝔻",
        "e": "ᴱᵉₑ",
        "f": "ᶠ𝔽",
        "g": "ᴳ",
        "h": "ᴴʰₕℍ",
        "i": "ᴵⁱᵢ",
        "j": "ᴶʲⱼ",
        "k": "ᴷᵏₖ",
        "l": "ᴸˡ",
        "m": "ᴹᵐₘ",
        "n": "ᴺⁿₙℕ",
        "o": "ᴼᵒₒ𝕆",
        "p": "ᴾᵖₚ",
        "q": "ℚ",
        "r": "ᴿʳᵣℝ",
        "s": "ˢₛ",
        "t": "ᵀᵗₜ",
        "u": "ᵁᵘᵤ",
        "v": "ⱽᵛ",
        "w": "ᵂʷ",
        "x": "ˣₓ",
        "y": "ʸ",
        "z": "ᶻℤ",
        "√": "∛∜",
        "→": "←↑↓↔︎↕︎",
        "$": "€£¥",
        "∴": "∵",
        ":": ";",
        "'": "\"`",
        "≡": "≢",
        "≈": "≐",
        "<": "≮",
        ">": "≯",
        "≤": "≰",
        "≥": "≱"
    ]
}
