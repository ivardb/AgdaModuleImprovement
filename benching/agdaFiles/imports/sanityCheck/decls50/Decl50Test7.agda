module Decl50Test7  where
    import Decl50Base7
    open import Decl50Base7 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M  where
        d1 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then Bool else x4 ) ) ) $ ( if false then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> false ) ) ) $ ( x2 ) ) ) ) $ ( if false then true else Decl50Base7.M.d67 )
        d5 : if true then if true then Bool else Bool else if false then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> d1 ) ) ) $ ( d1 ) ) ) ) $ ( if Decl50Base7.M.d88 then Decl50Base7.M.d81 else Decl50Base7.M.d63 )
        d8 : if true then if false then Bool else Bool else if true then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if true then false else Decl50Base7.M.d121 ) ) ) $ ( if false then false else true )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> x12 ) ) ) $ ( x11 ) ) ) ) $ ( if false then Bool else Bool )
        d10 = if if true then d1 else Decl50Base7.M.d45 then if false then Decl50Base7.M.d104 else Decl50Base7.M.d88 else if true then d1 else Decl50Base7.M.d126
        d13 : if false then if false then Bool else Bool else if true then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> x14 ) ) ) $ ( Decl50Base7.M.d104 ) ) ) ) $ ( if d10 then Decl50Base7.M.d62 else Decl50Base7.M.d2 )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> if false then x17 else x17 ) ) ) $ ( if false then Bool else Bool )
        d16 = if if Decl50Base7.M.d36 then d1 else true then if Decl50Base7.M.d27 then d5 else Decl50Base7.M.d26 else if false then d10 else d8
        d18 : if true then if false then Bool else Bool else if false then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if x19 then Decl50Base7.M.d64 else Decl50Base7.M.d36 ) ) ) $ ( if Decl50Base7.M.d27 then Decl50Base7.M.d78 else d1 )
        d20 : if true then if true then Bool else Bool else if true then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if d18 then true else Decl50Base7.M.d42 ) ) ) $ ( if d10 then true else d10 )
        d22 : if true then if true then Bool else Bool else if false then Bool else Bool
        d22 = if if Decl50Base7.M.d58 then d16 else Decl50Base7.M.d118 then if false then false else Decl50Base7.M.d98 else if Decl50Base7.M.d9 then true else false
        d23 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if false then x25 else x25 ) ) ) $ ( if false then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> if true then false else true ) ) ) $ ( if true then d1 else Decl50Base7.M.d2 )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x29 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> x29 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> Decl50Base7.M.d106 ) ) ) $ ( x27 ) ) ) ) $ ( if d18 then d20 else d10 )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> x33 ) ) ) $ ( x33 ) ) ) ) $ ( if false then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if false then x32 else d26 ) ) ) $ ( if d16 then false else Decl50Base7.M.d10 )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> x37 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d35 = if if Decl50Base7.M.d76 then true else Decl50Base7.M.d52 then if Decl50Base7.M.d98 then d26 else Decl50Base7.M.d76 else if Decl50Base7.M.d6 then Decl50Base7.M.d98 else d8
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d38 = if if Decl50Base7.M.d78 then Decl50Base7.M.d56 else d10 then if false then d23 else Decl50Base7.M.d32 else if Decl50Base7.M.d20 then d8 else Decl50Base7.M.d20
        d40 : if true then if true then Bool else Bool else if false then Bool else Bool
        d40 = if if d23 then false else d35 then if true then Decl50Base7.M.d109 else d8 else if Decl50Base7.M.d91 then true else d16
        d41 : ( ( Set -> Set ) ∋ ( ( λ x44 -> ( ( Set -> Set ) ∋ ( ( λ x45 -> x45 ) ) ) $ ( x44 ) ) ) ) $ ( if false then Bool else Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> false ) ) ) $ ( x42 ) ) ) ) $ ( if d18 then Decl50Base7.M.d58 else Decl50Base7.M.d58 )
        d46 : if true then if false then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if Decl50Base7.M.d2 then false else x47 ) ) ) $ ( if d40 then true else Decl50Base7.M.d98 )
        d48 : if false then if true then Bool else Bool else if false then Bool else Bool
        d48 = if if false then d41 else Decl50Base7.M.d68 then if Decl50Base7.M.d101 then d26 else Decl50Base7.M.d9 else if d10 then Decl50Base7.M.d42 else Decl50Base7.M.d52
        d49 : if false then if false then Bool else Bool else if true then Bool else Bool
        d49 = if if d1 then Decl50Base7.M.d76 else Decl50Base7.M.d10 then if d16 then Decl50Base7.M.d26 else Decl50Base7.M.d29 else if Decl50Base7.M.d81 then Decl50Base7.M.d76 else true
        d50 : if true then if true then Bool else Bool else if false then Bool else Bool
        d50 = if if Decl50Base7.M.d41 then Decl50Base7.M.d45 else false then if Decl50Base7.M.d36 then d40 else Decl50Base7.M.d36 else if d10 then Decl50Base7.M.d83 else Decl50Base7.M.d121
        d51 : if false then if false then Bool else Bool else if false then Bool else Bool
        d51 = if if Decl50Base7.M.d35 then Decl50Base7.M.d101 else Decl50Base7.M.d68 then if Decl50Base7.M.d98 then Decl50Base7.M.d104 else Decl50Base7.M.d56 else if Decl50Base7.M.d32 then Decl50Base7.M.d32 else false
        d52 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if true then Bool else x54 ) ) ) $ ( if false then Bool else Bool )
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if false then x53 else x53 ) ) ) $ ( if d18 then Decl50Base7.M.d91 else d8 )
        d55 : if true then if false then Bool else Bool else if true then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if Decl50Base7.M.d104 then true else d41 ) ) ) $ ( if d13 then true else true )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if true then x60 else x60 ) ) ) $ ( if true then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> ( ( Bool -> Bool ) ∋ ( ( λ x59 -> x59 ) ) ) $ ( Decl50Base7.M.d32 ) ) ) ) $ ( if true then d35 else Decl50Base7.M.d58 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if Decl50Base7.M.d63 then Decl50Base7.M.d10 else Decl50Base7.M.d10 ) ) ) $ ( if d23 then Decl50Base7.M.d62 else Decl50Base7.M.d76 )
        d64 : if false then if false then Bool else Bool else if true then Bool else Bool
        d64 = if if Decl50Base7.M.d56 then false else true then if Decl50Base7.M.d32 then Decl50Base7.M.d52 else d26 else if Decl50Base7.M.d118 then true else d50
        d65 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> Bool ) ) ) $ ( x67 ) ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if Decl50Base7.M.d55 then d31 else Decl50Base7.M.d114 ) ) ) $ ( if d55 then Decl50Base7.M.d36 else Decl50Base7.M.d60 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x72 -> ( ( Set -> Set ) ∋ ( ( λ x73 -> x72 ) ) ) $ ( x72 ) ) ) ) $ ( if false then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x71 -> true ) ) ) $ ( Decl50Base7.M.d86 ) ) ) ) $ ( if Decl50Base7.M.d64 then Decl50Base7.M.d98 else Decl50Base7.M.d42 )
        d74 : if false then if false then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> Decl50Base7.M.d68 ) ) ) $ ( false ) ) ) ) $ ( if Decl50Base7.M.d126 then d52 else Decl50Base7.M.d114 )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d77 = if if true then Decl50Base7.M.d60 else Decl50Base7.M.d121 then if Decl50Base7.M.d10 then Decl50Base7.M.d114 else d10 else if Decl50Base7.M.d81 then false else true
        d79 : if false then if true then Bool else Bool else if true then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> x80 ) ) ) $ ( x80 ) ) ) ) $ ( if Decl50Base7.M.d91 then true else d55 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> if false then Bool else x83 ) ) ) $ ( if false then Bool else Bool )
        d82 = if if true then d50 else true then if true then Decl50Base7.M.d48 else false else if d23 then false else Decl50Base7.M.d109
        d84 : if false then if true then Bool else Bool else if true then Bool else Bool
        d84 = if if d46 then Decl50Base7.M.d16 else d65 then if Decl50Base7.M.d27 then Decl50Base7.M.d42 else Decl50Base7.M.d62 else if d5 then d38 else Decl50Base7.M.d103
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if false then Bool else x86 ) ) ) $ ( if true then Bool else Bool )
        d85 = if if Decl50Base7.M.d106 then d31 else false then if Decl50Base7.M.d114 then Decl50Base7.M.d63 else Decl50Base7.M.d76 else if Decl50Base7.M.d68 then d69 else Decl50Base7.M.d88
        d87 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> x89 ) ) ) $ ( d49 ) ) ) ) $ ( if d16 then d31 else true )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if false then Bool else x95 ) ) ) $ ( if false then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( ( Bool -> Bool ) ∋ ( ( λ x94 -> d65 ) ) ) $ ( Decl50Base7.M.d81 ) ) ) ) $ ( if Decl50Base7.M.d68 then true else Decl50Base7.M.d88 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if true then x99 else x99 ) ) ) $ ( if false then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> Decl50Base7.M.d52 ) ) ) $ ( x97 ) ) ) ) $ ( if Decl50Base7.M.d86 then false else Decl50Base7.M.d56 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if true then x103 else x103 ) ) ) $ ( if true then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> x101 ) ) ) $ ( Decl50Base7.M.d48 ) ) ) ) $ ( if Decl50Base7.M.d16 then Decl50Base7.M.d95 else false )
        d104 : if false then if false then Bool else Bool else if false then Bool else Bool
        d104 = if if false then false else Decl50Base7.M.d52 then if Decl50Base7.M.d98 then Decl50Base7.M.d83 else Decl50Base7.M.d104 else if Decl50Base7.M.d9 then d55 else true
        d105 : if false then if true then Bool else Bool else if false then Bool else Bool
        d105 = if if Decl50Base7.M.d63 then d31 else true then if Decl50Base7.M.d56 then Decl50Base7.M.d60 else d16 else if true then Decl50Base7.M.d48 else d46
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> x108 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d106 = if if Decl50Base7.M.d56 then false else Decl50Base7.M.d101 then if true then true else false else if Decl50Base7.M.d62 then d20 else Decl50Base7.M.d104
        d109 : if true then if true then Bool else Bool else if true then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x111 -> d65 ) ) ) $ ( d104 ) ) ) ) $ ( if true then true else Decl50Base7.M.d35 )
        d112 : if true then if true then Bool else Bool else if false then Bool else Bool
        d112 = if if Decl50Base7.M.d98 then d55 else true then if true then Decl50Base7.M.d91 else d87 else if d79 then true else Decl50Base7.M.d103
        d113 : if false then if false then Bool else Bool else if false then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> Decl50Base7.M.d48 ) ) ) $ ( true ) ) ) ) $ ( if d50 then d74 else Decl50Base7.M.d27 )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if false then Bool else x118 ) ) ) $ ( if false then Bool else Bool )
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> if false then false else Decl50Base7.M.d67 ) ) ) $ ( if true then d100 else Decl50Base7.M.d104 )
        d119 : if true then if false then Bool else Bool else if true then Bool else Bool
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> false ) ) ) $ ( Decl50Base7.M.d104 ) ) ) ) $ ( if Decl50Base7.M.d16 then d10 else Decl50Base7.M.d29 )
        d122 : if false then if true then Bool else Bool else if true then Bool else Bool
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> if true then d10 else true ) ) ) $ ( if d48 then d96 else Decl50Base7.M.d6 )
        d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d124 = if if false then true else Decl50Base7.M.d76 then if Decl50Base7.M.d60 then Decl50Base7.M.d10 else true else if Decl50Base7.M.d35 then false else Decl50Base7.M.d1
        d127 : if false then if true then Bool else Bool else if true then Bool else Bool
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> if d74 then false else x128 ) ) ) $ ( if true then d109 else Decl50Base7.M.d55 )
        d129 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> x132 ) ) ) $ ( x132 ) ) ) ) $ ( if false then Bool else Bool )
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x131 -> Decl50Base7.M.d40 ) ) ) $ ( Decl50Base7.M.d40 ) ) ) ) $ ( if Decl50Base7.M.d20 then Decl50Base7.M.d32 else false )