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
    static let symbolicInputSetRow2: String = "\\|≡¬∧∨→∀∃∴"
    static let symbolicInputSetRow3: String = "#$%?!"
    
    // emoji input set
    static let greek: String = """
    αβγδε
    ζηθικ
    λμνξο
    πρστυ
    φχψω
    """
    
    static let arithmetic: String = """
    +-×⋅=±∓÷:/√
    """
    
    static let equality: String = """
    =≠<>≮≯≤≥≰≱≈≅≐≡≢≔∝
    """
    
    static let settheory: String = """
    ∅∁∈∋∌∩∪⊂⊃⊄⊅⊆⊇⊈⊉
    """
    
    static let blackboard: String = """
    ℕℤℚℝℂℍ𝔽𝕆𝔻𝔹
    """
    
    static let calculus: String = """
    f′ f″ f‴ f⁗ f⁽⁾
    df/dx d²f/dx² ∂f/∂x ∂²f/∂x∂y ∇
    ∫ ∮ x→a x→a⁺ x→a⁻
    """
    
    static let geometry: String = """
    ∠∡⦜⟂∥∟⌒○□△⊿
    """
    
    static let linearalgebra: String = """
    ⋅ ⨯ A Aᵀ A⁻¹ A* 0 I aᵢⱼ
    """
    
    static let logic: String = """
    → ← ↑ ↓ ↔︎
    := ≡ ≢ TRUE FALSE
    ¬ ~ ! NOT
    ∧ • & && AND
    ∨ + | || OR
    ∀ ∃
    """
    
    static let superscripts: String = """
    ⁰¹²³⁴⁵⁶⁷⁸⁹⁺⁻⁽⁾
    """
    
    static let subscripts: String = """
    ₀₁₂₃₄₅₆₇₈₉₊₋₍₎
    """
    
    static let fractions: String = """
    ½ ⅓ ⅔ ¼ ¾ ⅕ ⅒
    """
    
    
}
