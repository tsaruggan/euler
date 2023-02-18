//
//  Input.swift
//  eulerkeyboard
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
    
    
    // callout input set
    
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
    
    // autocomplete stuff
    
    static let superscripts = [
        "1": "¹",
        "2": "²",
        "3": "³",
        "4": "⁴",
        "5": "⁵",
        "6": "⁶",
        "7": "⁷",
        "8": "⁸",
        "9": "⁹",
        "0": "⁰",
        "+": "⁺",
        "-": "⁻",
        "=": "⁼",
        "(": "⁽",
        ")": "⁾",
        "A": "ᴬ",
        "a": "ᵃ",
        "B": "ᴮ",
        "b": "ᵇ",
        "c": "ᶜ",
        "D": "ᴰ",
        "d": "ᵈ",
        "E": "ᴱ",
        "e": "ᵉ",
        "f": "ᶠ",
        "G": "ᴳ",
        "H": "ᴴ",
        "h": "ʰ",
        "I": "ᴵ",
        "i": "ⁱ",
        "J": "ᴶ",
        "j": "ʲ",
        "K": "ᵏ",
        "k": "ᵏ",
        "L": "ᴸ",
        "l": "ˡ",
        "M": "ᴹ",
        "m": "ᵐ",
        "N": "ᴺ",
        "n": "ⁿ",
        "O": "ᴼ",
        "o": "ᵒ",
        "P": "ᴾ",
        "p": "ᵖ",
        "R": "ᴿ",
        "r": "ʳ",
        "s": "ˢ",
        "T": "ᵀ",
        "t": "ᵗ",
        "U": "ᵁ",
        "u": "ᵘ",
        "V": "ⱽ",
        "v": "ᵛ",
        "W": "ᵂ",
        "w": "ʷ",
        "x": "ˣ",
        "y": "ʸ"
    ]
    
    static let subscripts = [
        "1": "₁",
        "2": "₂",
        "3": "₃",
        "4": "₄",
        "5": "₅",
        "6": "₆",
        "7": "₇",
        "8": "₈",
        "9": "₉",
        "0": "₀",
        "+": "₊",
        "-": "₋",
        "=": "₌",
        "(": "₍",
        ")": "₎",
        "a": "ₐ",
        "e": "ₑ",
        "h": "ₕ",
        "i": "ᵢ",
        "j": "ⱼ",
        "k": "ₖ",
        "m": "ₘ",
        "n": "ₙ",
        "o": "ₒ",
        "p": "ₚ",
        "r": "ᵣ",
        "s": "ₛ",
        "t": "ₜ",
        "u": "ᵤ",
        "x": "ₓ",
    ]
    
    // master list of symbols for search
    static let symbols = [
        Symbol("α", "lowercase alpha"),
        Symbol("β", "lowercase beta"),
        Symbol("γ", "lowercase gamma"),
        Symbol("δ", "lowercase delta"),
        Symbol("ε", "lowercase epsilon"),
        Symbol("ζ", "lowercase zeta"),
        Symbol("η", "lowercase eta"),
        Symbol("θ", "lowercase theta"),
        Symbol("ι", "lowercase iota"),
        Symbol("κ", "lowercase kappa"),
        Symbol("λ", "lowercase lambda"),
        Symbol("μ", "lowercase mu"),
        Symbol("ν", "lowercase nu"),
        Symbol("ξ", "lowercase xi"),
        Symbol("ο", "lowercase omicron"),
        Symbol("π", "lowercase pi"),
        Symbol("ρ", "lowercase rho"),
        Symbol("σ", "lowercase sigma"),
        Symbol("ς", "lowercase sigma"),
        Symbol("τ", "lowercase tau"),
        Symbol("υ", "lowercase upsilon"),
        Symbol("φ", "lowercase phi"),
        Symbol("χ", "lowecase chi"),
        Symbol("ψ", "lowercase psi"),
        Symbol("ω", "lowercase omega"),
        Symbol("Α", "uppercase alpha"),
        Symbol("Β", "uppercase beta"),
        Symbol("Γ", "uppercase gamma"),
        Symbol("Δ", "uppercase delta"),
        Symbol("Ε", "uppercase epsilon"),
        Symbol("Ζ", "uppercase zeta"),
        Symbol("Η", "uppercase eta"),
        Symbol("Θ", "uppercase theta"),
        Symbol("Ι", "uppercase iota"),
        Symbol("Κ", "uppercase kappa"),
        Symbol("Λ", "uppercase lambda"),
        Symbol("Μ", "uppercase mu"),
        Symbol("Ν", "uppercase nu"),
        Symbol("Ξ", "uppercase xi"),
        Symbol("Ο", "uppercase omicron"),
        Symbol("Π", "uppercase pi"),
        Symbol("Ρ", "uppercase rho"),
        Symbol("Σ", "uppercase sigma"),
        Symbol("Τ", "uppercase tau"),
        Symbol("Υ", "uppercase upsilon"),
        Symbol("Φ", "uppercase phi"),
        Symbol("Χ", "uppercase chi"),
        Symbol("Ψ", "uppercase psi"),
        Symbol("Ω", "uppercase omega"),
        Symbol("+", "plus sign"),
        Symbol("−", "minus sign"),
        Symbol("×", "multiplication sign"),
        Symbol("÷", "division sign"),
        Symbol("=", "equals sign"),
        Symbol("≠", "not equal to"),
        Symbol("±", "plus minus symbol"),
        Symbol("⊕", "circled plus"),
        Symbol("⊖", "circled minus"),
        Symbol("⊗", "circled times"),
        Symbol("⊘", "circled division slash"),
        Symbol("⊙", "circled dot operator"),
        Symbol("⊚", "circled ring operator"),
        Symbol("⊛", "circled asterisk operator"),
        Symbol("⊝", "circled dash"),
        Symbol("⊞", "squared plus"),
        Symbol("⊟", "squared minus"),
        Symbol("⊠", "squared times"),
        Symbol("⊡", "squared dot operator"),
        Symbol("∏", "n-ary product"),
        Symbol("∐", "n-ary coproduct"),
        Symbol("∑", "n-ary summation"),
        Symbol("∓", "minus-or-plus sign"),
        Symbol("∔", "dot plus"),
        Symbol("∖", "set minus"),
        Symbol("∗", "asterisk operator"),
        Symbol("∘", "ring operator"),
        Symbol("√", "square root"),
        Symbol("¬", "not sign"),
        Symbol("∧", "logical and"),
        Symbol("∨", "logical or"),
        Symbol("∀", "for all"),
        Symbol("∃", "there exists"),
        Symbol("∄", "there does not exist"),
        Symbol("∅", "empty set"),
        Symbol("∩", "intersection"),
        Symbol("∪", "union"),
        Symbol("∈", "element of"),
        Symbol("∉", "not an element of"),
        Symbol("∋", "contains as member"),
        Symbol("∌", "does not contain as member"),
        Symbol("∁", "complement"),
        Symbol("%", "percent sign"),
        Symbol("‱", "per ten thousand sign"),
        Symbol("∫", "integral"),
        Symbol("∬", "double integral"),
        Symbol("∭", "triple integral"),
        Symbol("∮", "contour integral"),
        Symbol("∯", "surface integral"),
        Symbol("∰", "volume integral"),
        Symbol("∱", "clockwise integral"),
        Symbol("∲", "clockwise contour integral"),
        Symbol("∳", "anticlockwise contour integral"),
        Symbol("∇", "nabla"),
        Symbol("∂", "partial differential"),
        Symbol("∴", "therefore"),
        Symbol("∵", "because"),
        Symbol("∶", "ratio"),
        Symbol("∷", "proportion"),
        Symbol("∸", "dot minus"),
        Symbol("∺", "geometric proportion"),
        Symbol("∻", "homothetic"),
        Symbol("∼", "tilde operator"),
        Symbol("≁", "not tilde"),
        Symbol("≂", "minus tilde"),
        Symbol("≃", "asymptotically equal to"),
        Symbol("≄", "not asymptotically equal to"),
        Symbol("≅", "approximately equal to"),
        Symbol("≆", "approximately but not actually equal to"),
        Symbol("≇", "neither approximately nor actually equal to"),
        Symbol("≈", "almost equal to"),
        Symbol("≉", "not almost equal to"),
        Symbol("≊", "almost equal or equal to"),
        Symbol("≋", "triple tilde"),
        Symbol("≌", "all equal to"),
        Symbol("≍", "equivalent to"),
        Symbol("≎", "geometrically equivalent to"),
        Symbol("≏", "difference between"),
        Symbol("≐", "approaches the limit"),
        Symbol("≑", "geometrically equal to"),
        Symbol("≒", "approximately equal to or the image of"),
        Symbol("≓", "image of or approximately equal to"),
        Symbol("≔", "colon equals"),
        Symbol("≕", "equals colon"),
        Symbol("≖", "ring in equal to"),
        Symbol("≗", "ring equal to"),
        Symbol("≙", "estimates"),
        Symbol("≚", "equiangular to"),
        Symbol("≜", "delta equal to"),
        Symbol("≟", "questioned equal to"),
        Symbol("≡", "identical to"),
        Symbol("≢", "not identical to"),
        Symbol("<", "less-than sign"),
        Symbol(">", "greater-than sign"),
        Symbol("≤", "less-than or equal to"),
        Symbol("≥", "greater-than or equal to"),
        Symbol("≦", "less-than over equal to"),
        Symbol("≧", "greater-than over equal to"),
        Symbol("≨", "less-than but not equal to"),
        Symbol("≩", "greater-than but not equal to"),
        Symbol("≪", "much less-than"),
        Symbol("≫", "much greater-than"),
        Symbol("≬", "between"),
        Symbol("≭", "not equivalent to"),
        Symbol("≮", "not less-than"),
        Symbol("≯", "not greater-than"),
        Symbol("≰", "neither less-than nor equal to"),
        Symbol("≱", "neither greater-than nor equal to"),
        Symbol("≲", "less-than or equivalent to"),
        Symbol("≳", "greater-than or equivalent to"),
        Symbol("≴", "neither less-than nor equivalent to"),
        Symbol("≵", "neither greater-than nor equivalent to"),
        Symbol("≶", "less-than or greater-than"),
        Symbol("≷", "greater-than or less-than"),
        Symbol("≸", "neither less-than nor greater-than"),
        Symbol("≹", "neither greater-than nor less-than"),
        Symbol("≺", "precedes"),
        Symbol("≻", "succeeds"),
        Symbol("≼", "precedes or equal to"),
        Symbol("≽", "succeeds or equal to"),
        Symbol("≾", "precedes or equivalent to"),
        Symbol("≿", "succeeds or equivalent to"),
        Symbol("⊀", "does not precede"),
        Symbol("⊁", "does not succeed"),
        Symbol("⊂", "subset of"),
        Symbol("⊃", "superset of"),
        Symbol("⊄", "not a subset of"),
        Symbol("⊅", "not a superset of"),
        Symbol("⊆", "subset of or equal to"),
        Symbol("⊇", "superset of or equal to"),
        Symbol("⊈", "neither a subset of nor equal to"),
        Symbol("⊉", "neither a superset of nor equal to"),
        Symbol("⊊", "subset of with not equal to"),
        Symbol("⊋", "superset of with not equal to"),
        Symbol("⊍", "multiset multiplication"),
        Symbol("⊎", "multiset union"),
        Symbol("⊏", "square image of"),
        Symbol("⊐", "square original of"),
        Symbol("⊑", "square image of or equal to"),
        Symbol("⊒", "square original of or equal to"),
        Symbol("⊓", "square cap"),
        Symbol("⊔", "square cup"),
        Symbol("⊢", "right tack"),
        Symbol("⊣", "left tack"),
        Symbol("⊤", "down tack"),
        Symbol("⊥", "up tack"),
        Symbol("⊧", "models"),
        Symbol("⊨", "true"),
        Symbol("⊩", "forces"),
        Symbol("⊪", "triple vertical bar right turnstile"),
        Symbol("⊫", "double vertical bar double right turnstile"),
        Symbol("⊬", "does not prove"),
        Symbol("⊭", "not true"),
        Symbol("⊮", "does not force"),
        Symbol("⊯", "negated double vertical bar double right turnstile"),
        Symbol("⊰", "precedes under relation"),
        Symbol("⊲", "normal subgroup of"),
        Symbol("⊳", "contains as normal subgroup"),
        Symbol("⊴", "normal subgroup of or equal to"),
        Symbol("⊵", "contains as normal subgroup or equal to"),
        Symbol("⊶", "original of"),
        Symbol("⊷", "image of"),
        Symbol("⊸", "multimap"),
        Symbol("⊹", "hermitian conjugate matrix"),
        Symbol("⊺", "intercalate"),
        Symbol("⊻", "xor"),
        Symbol("⊽", "nor"),
        Symbol("⊾", "right angle with arc"),
        Symbol("⊿", "right triangle"),
        Symbol("⋀", "n-ary logical and"),
        Symbol("⋁", "n-ary logical or"),
        Symbol("⋂", "n-ary intersection"),
        Symbol("⋃", "n-ary union"),
        Symbol("⋄", "diamond operator"),
        Symbol("⋅", "dot operator"),
        Symbol("⋆", "star operator"),
        Symbol("⋇", "division times"),
        Symbol("⋈", "bowtie"),
        Symbol("⋉", "left normal factor semidirect product"),
        Symbol("⋊", "right normal factor semidirect product"),
        Symbol("⋋", "left semidirect product"),
        Symbol("⋌", "right semidirect product"),
        Symbol("⋍", "reversed tilde equals"),
        Symbol("⋎", "curly logical or"),
        Symbol("⋏", "curly logical and"),
        Symbol("⋐", "double subset"),
        Symbol("⋑", "double superset"),
        Symbol("⋒", "double intersection"),
        Symbol("⋓", "double union"),
        Symbol("⋔", "pitchfork"),
        Symbol("⋕", "equal and parallel to"),
        Symbol("⋖", "less-than with dot"),
        Symbol("⋗", "greater-than with dot"),
        Symbol("⋘", "very much less-than"),
        Symbol("⋙", "very much greater-than"),
        Symbol("⋚", "less-than equal to or greater-than"),
        Symbol("⋛", "greater-than equal to or less-than"),
        Symbol("⋞", "equal to or precedes"),
        Symbol("⋟", "equal to or succeeds"),
        Symbol("⋠", "does not precede or equal"),
        Symbol("⋡", "does not succeed or equal"),
        Symbol("⋢", "not square image of or equal to"),
        Symbol("⋣", "not square original of or equal to"),
        Symbol("⋦", "less-than but not equivalent to"),
        Symbol("⋧", "greater-than but not equivalent to"),
        Symbol("⋨", "precedes but not equivalent to"),
        Symbol("⋩", "succeeds but not equivalent to"),
        Symbol("⋪", "not normal subgroup of"),
        Symbol("⋫", "does not contain as normal subgroup"),
        Symbol("⋬", "not normal subgroup of or equal to"),
        Symbol("⋭", "does not contain as normal subgroup or equal"),
        Symbol("⋮", "vertical ellipsis"),
        Symbol("⋯", "midline horizontal ellipsis"),
        Symbol("⋰", "up right diagonal ellipsis"),
        Symbol("⋱", "down right diagonal ellipsis"),
        Symbol("⋲", "element of with long horizontal stroke"),
        Symbol("⋳", "element of with vertical bar at end of horizontal stroke"),
        Symbol("⋴", "small element of with vertical bar at end of horizontal stroke"),
        Symbol("⋵", "element of with dot above"),
        Symbol("⋶", "element of with overbar"),
        Symbol("⋷", "small element of with overbar"),
        Symbol("⋹", "element of with two horizontal strokes"),
        Symbol("⋺", "contains with long horizontal stroke"),
        Symbol("⋻", "contains with vertical bar at end of horizontal stroke"),
        Symbol("⋼", "small contains with vertical bar at end of horizontal stroke"),
        Symbol("⋽", "contains with overbar"),
        Symbol("⋾", "small contains with overbar"),
        Symbol("⌈", "left ceiling"),
        Symbol("⌉", "right ceiling"),
        Symbol("⌊", "left floor"),
        Symbol("⌋", "right floor"),
        Symbol("〈", "left-pointing angle bracket"),
        Symbol("〉", "right-pointing angle bracket"),
        Symbol("∝", "proportional to"),
        Symbol("∞", "infinity"),
        Symbol("∟", "right angle"),
        Symbol("∠", "angle"),
        Symbol("∡", "measured angle"),
        Symbol("∢", "spherical angle"),
        Symbol("∣", "divides"),
        Symbol("∤", "does not divide"),
        Symbol("∥", "parallel to"),
        Symbol("∦", "not parallel to"),
        Symbol("∽", "reversed tilde"),
        Symbol("∾", "inverted lazy s"),
        Symbol("∿", "sine wave"),
        Symbol("≀", "wreath product"),
        Symbol("₀", "subscript zero"),
        Symbol("₁", "subscript one"),
        Symbol("₂", "subscript two"),
        Symbol("₃", "subscript three"),
        Symbol("₄", "subscript four"),
        Symbol("₅", "subscript five"),
        Symbol("₆", "subscript six"),
        Symbol("₇", "subscript seven"),
        Symbol("₈", "subscript eight"),
        Symbol("₉", "subscript nine"),
        Symbol("₊", "subscript plus sign"),
        Symbol("₋", "subscript minus sign"),
        Symbol("₌", "subscript equal sign"),
        Symbol("₍", "subscript open parentheses"),
        Symbol("₎", "subscript closed parentheses"),
        Symbol("ₐ", "subscript lowercase a"),
        Symbol("ₑ", "subscript lowercase e"),
        Symbol("ₕ", "subscript lowercase h"),
        Symbol("ᵢ", "subscript lowercase i"),
        Symbol("ⱼ", "subscript lowercase j"),
        Symbol("ₖ", "subscript lowercase k"),
        Symbol("ₘ", "subscript lowercase m"),
        Symbol("ₙ", "subscript lowercase n"),
        Symbol("ₒ", "subscript lowercase o"),
        Symbol("ₚ", "subscript lowercase p"),
        Symbol("ᵣ", "subscript lowercase r"),
        Symbol("ₛ", "subscript lowercase s"),
        Symbol("ₜ", "subscript lowercase t"),
        Symbol("ᵤ", "subscript lowercase u"),
        Symbol("ₓ", "subscript lowercase x"),
        Symbol("⁰", "superscript zero"),
        Symbol("¹", "superscript one"),
        Symbol("²", "superscript two"),
        Symbol("³", "superscript three"),
        Symbol("⁴", "superscript four"),
        Symbol("⁵", "superscript five"),
        Symbol("⁶", "superscript six"),
        Symbol("⁷", "superscript seven"),
        Symbol("⁸", "superscript eight"),
        Symbol("⁹", "superscript nine"),
        Symbol("⁺", "superscript plus sign"),
        Symbol("⁻", "superscript minus sign"),
        Symbol("⁼", "superscript equal sign"),
        Symbol("⁽", "superscript open parentheses"),
        Symbol("⁾", "superscript closed parentheses"),
        Symbol("ᴬ", "superscript uppercase a"),
        Symbol("ᴮ", "superscript uppercase b"),
        Symbol("ᴰ", "superscript uppercase d"),
        Symbol("ᴱ", "superscript uppercase e"),
        Symbol("ᴳ", "superscript uppercase g"),
        Symbol("ᴴ", "superscript uppercase h"),
        Symbol("ᴵ", "superscript uppercase i"),
        Symbol("ᴶ", "superscript uppercase j"),
        Symbol("ᴸ", "superscript uppercase l"),
        Symbol("ᴹ", "superscript uppercase m"),
        Symbol("ᴺ", "superscript uppercase n"),
        Symbol("ᴼ", "superscript uppercase o"),
        Symbol("ᴾ", "superscript uppercase p"),
        Symbol("ᴿ", "superscript uppercase r"),
        Symbol("ᵀ", "superscript uppercase t"),
        Symbol("ᵁ", "superscript uppercase u"),
        Symbol("ⱽ", "superscript uppercase v"),
        Symbol("ᵂ", "superscript uppercase w"),
        Symbol("ᵃ", "superscript lowercase a"),
        Symbol("ᵇ", "superscript lowercase b"),
        Symbol("ᶜ", "superscript lowercase c"),
        Symbol("ᵈ", "superscript lowercase d"),
        Symbol("ᵉ", "superscript lowercase e"),
        Symbol("ᶠ", "superscript lowercase f"),
        Symbol("ʰ", "superscript lowercase h"),
        Symbol("ⁱ", "superscript lowercase i"),
        Symbol("ʲ", "superscript lowercase j"),
        Symbol("ᵏ", "superscript lowercase k"),
        Symbol("ˡ", "superscript lowercase l"),
        Symbol("ᵐ", "superscript lowercase m"),
        Symbol("ⁿ", "superscript lowercase n"),
        Symbol("ᵒ", "superscript lowercase o", "degree sign"),
        Symbol("ᵖ", "superscript lowercase p"),
        Symbol("ʳ", "superscript lowercase r"),
        Symbol("ˢ", "superscript lowercase s"),
        Symbol("ᵗ", "superscript lowercase t"),
        Symbol("ᵘ", "superscript lowercase u"),
        Symbol("ᵛ", "superscript lowercase v"),
        Symbol("ʷ", "superscript lowercase w"),
        Symbol("ˣ", "superscript lowercase x"),
        Symbol("ʸ", "superscript lowercase y")
    ]
}
