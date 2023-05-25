module Decl50Test4  where
    import Decl50Base4
    open import Decl50Base4 using (Bool; true; false; ⊤; tt) public
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
        d1 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> Decl50Base4.M.d57 ) ) ) $ ( x2 ) ) ) ) $ ( if Decl50Base4.M.d88 then Decl50Base4.M.d19 else true )
        d4 : if true then if true then Bool else Bool else if false then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> x5 ) ) ) $ ( Decl50Base4.M.d72 ) ) ) ) $ ( if Decl50Base4.M.d8 then Decl50Base4.M.d102 else d1 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if true then Bool else x8 ) ) ) $ ( if false then Bool else Bool )
        d7 = if if Decl50Base4.M.d108 then false else Decl50Base4.M.d119 then if false then Decl50Base4.M.d81 else Decl50Base4.M.d82 else if d1 then d1 else false
        d9 : if true then if false then Bool else Bool else if true then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if Decl50Base4.M.d127 then false else d1 ) ) ) $ ( if Decl50Base4.M.d82 then Decl50Base4.M.d130 else true )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> x13 ) ) ) $ ( x12 ) ) ) ) $ ( if true then Bool else Bool )
        d11 = if if false then Decl50Base4.M.d82 else true then if Decl50Base4.M.d80 then false else Decl50Base4.M.d88 else if Decl50Base4.M.d75 then Decl50Base4.M.d135 else Decl50Base4.M.d119
        d14 : ( ( Set -> Set ) ∋ ( ( λ x16 -> if true then Bool else x16 ) ) ) $ ( if true then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if Decl50Base4.M.d113 then Decl50Base4.M.d13 else Decl50Base4.M.d19 ) ) ) $ ( if Decl50Base4.M.d10 then false else Decl50Base4.M.d1 )
        d17 : if false then if false then Bool else Bool else if false then Bool else Bool
        d17 = if if d1 then Decl50Base4.M.d25 else d4 then if Decl50Base4.M.d122 then d9 else Decl50Base4.M.d53 else if Decl50Base4.M.d1 then d11 else true
        d18 : if true then if true then Bool else Bool else if false then Bool else Bool
        d18 = if if Decl50Base4.M.d119 then Decl50Base4.M.d39 else d17 then if Decl50Base4.M.d57 then Decl50Base4.M.d139 else Decl50Base4.M.d10 else if d17 then false else Decl50Base4.M.d88
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d19 = if if false then d1 else false then if Decl50Base4.M.d26 then d14 else Decl50Base4.M.d61 else if d11 then Decl50Base4.M.d94 else false
        d21 : if false then if false then Bool else Bool else if false then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if true then Decl50Base4.M.d88 else Decl50Base4.M.d55 ) ) ) $ ( if Decl50Base4.M.d63 then Decl50Base4.M.d37 else d7 )
        d23 : if false then if true then Bool else Bool else if true then Bool else Bool
        d23 = if if Decl50Base4.M.d96 then true else Decl50Base4.M.d30 then if Decl50Base4.M.d19 then d1 else false else if Decl50Base4.M.d34 then Decl50Base4.M.d114 else d11
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then Bool else x25 ) ) ) $ ( if true then Bool else Bool )
        d24 = if if Decl50Base4.M.d127 then false else true then if false then true else true else if d11 then false else Decl50Base4.M.d30
        d26 : if false then if false then Bool else Bool else if true then Bool else Bool
        d26 = if if Decl50Base4.M.d85 then d21 else Decl50Base4.M.d105 then if d7 then Decl50Base4.M.d63 else false else if d11 then Decl50Base4.M.d130 else d18
        d27 : if true then if true then Bool else Bool else if true then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> x29 ) ) ) $ ( false ) ) ) ) $ ( if d19 then Decl50Base4.M.d85 else Decl50Base4.M.d113 )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if d26 then false else false ) ) ) $ ( if true then d24 else Decl50Base4.M.d43 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> x36 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d34 = if if Decl50Base4.M.d66 then d1 else d23 then if d14 then Decl50Base4.M.d72 else Decl50Base4.M.d108 else if Decl50Base4.M.d21 then Decl50Base4.M.d113 else d30
        d37 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if Decl50Base4.M.d4 then d19 else false ) ) ) $ ( if d30 then d34 else d11 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> ( ( Set -> Set ) ∋ ( ( λ x42 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d40 = if if true then d7 else false then if Decl50Base4.M.d15 then false else false else if Decl50Base4.M.d53 then Decl50Base4.M.d122 else Decl50Base4.M.d113
        d43 : if false then if true then Bool else Bool else if true then Bool else Bool
        d43 = if if Decl50Base4.M.d122 then false else Decl50Base4.M.d25 then if true then Decl50Base4.M.d85 else Decl50Base4.M.d10 else if Decl50Base4.M.d8 then d4 else Decl50Base4.M.d61
        d44 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> Bool ) ) ) $ ( x47 ) ) ) ) $ ( if true then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> true ) ) ) $ ( Decl50Base4.M.d127 ) ) ) ) $ ( if true then Decl50Base4.M.d88 else true )
        d49 : if false then if true then Bool else Bool else if true then Bool else Bool
        d49 = if if true then false else false then if Decl50Base4.M.d135 then Decl50Base4.M.d13 else false else if Decl50Base4.M.d57 then Decl50Base4.M.d25 else true
        d50 : if true then if true then Bool else Bool else if true then Bool else Bool
        d50 = if if false then Decl50Base4.M.d4 else Decl50Base4.M.d72 then if Decl50Base4.M.d80 then Decl50Base4.M.d10 else true else if Decl50Base4.M.d82 then Decl50Base4.M.d63 else Decl50Base4.M.d102
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d51 = if if d44 then false else Decl50Base4.M.d113 then if Decl50Base4.M.d127 then Decl50Base4.M.d26 else Decl50Base4.M.d26 else if true then Decl50Base4.M.d96 else Decl50Base4.M.d134
        d54 : if false then if false then Bool else Bool else if true then Bool else Bool
        d54 = if if Decl50Base4.M.d82 then false else Decl50Base4.M.d102 then if Decl50Base4.M.d49 then d24 else true else if d1 then Decl50Base4.M.d98 else Decl50Base4.M.d43
        d55 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if true then d9 else d43 ) ) ) $ ( if Decl50Base4.M.d80 then d19 else Decl50Base4.M.d122 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x61 -> x61 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if x59 then d50 else d44 ) ) ) $ ( if d51 then Decl50Base4.M.d39 else d55 )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if x63 then x63 else false ) ) ) $ ( if d30 then Decl50Base4.M.d26 else Decl50Base4.M.d46 )
        d65 : if true then if false then Bool else Bool else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> d1 ) ) ) $ ( x66 ) ) ) ) $ ( if Decl50Base4.M.d91 then Decl50Base4.M.d96 else d54 )
        d68 : if false then if true then Bool else Bool else if false then Bool else Bool
        d68 = if if Decl50Base4.M.d102 then Decl50Base4.M.d39 else d27 then if d40 then Decl50Base4.M.d88 else false else if Decl50Base4.M.d66 then Decl50Base4.M.d139 else false
        d69 : if false then if false then Bool else Bool else if true then Bool else Bool
        d69 = if if d44 then false else Decl50Base4.M.d96 then if Decl50Base4.M.d134 then Decl50Base4.M.d19 else Decl50Base4.M.d91 else if d37 then false else Decl50Base4.M.d127
        d70 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> Bool ) ) ) $ ( x71 ) ) ) ) $ ( if true then Bool else Bool )
        d70 = if if false then Decl50Base4.M.d4 else Decl50Base4.M.d8 then if Decl50Base4.M.d94 then Decl50Base4.M.d130 else Decl50Base4.M.d81 else if d62 then Decl50Base4.M.d119 else Decl50Base4.M.d108
        d73 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if false then x76 else Bool ) ) ) $ ( if false then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> d69 ) ) ) $ ( d23 ) ) ) ) $ ( if d68 then true else Decl50Base4.M.d105 )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> Decl50Base4.M.d53 ) ) ) $ ( d70 ) ) ) ) $ ( if Decl50Base4.M.d69 then Decl50Base4.M.d1 else Decl50Base4.M.d30 )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> x85 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> Decl50Base4.M.d139 ) ) ) $ ( true ) ) ) ) $ ( if Decl50Base4.M.d134 then false else Decl50Base4.M.d8 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> Bool ) ) ) $ ( x87 ) ) ) ) $ ( if false then Bool else Bool )
        d86 = if if d17 then d17 else Decl50Base4.M.d119 then if d7 then true else d9 else if Decl50Base4.M.d25 then false else d49
        d89 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> d55 ) ) ) $ ( Decl50Base4.M.d88 ) ) ) ) $ ( if Decl50Base4.M.d94 then false else Decl50Base4.M.d75 )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if true then x95 else Bool ) ) ) $ ( if true then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if d24 then d34 else x94 ) ) ) $ ( if Decl50Base4.M.d15 then Decl50Base4.M.d122 else false )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if true then Bool else x97 ) ) ) $ ( if false then Bool else Bool )
        d96 = if if d49 then false else Decl50Base4.M.d30 then if Decl50Base4.M.d31 then d37 else Decl50Base4.M.d105 else if d89 then d37 else Decl50Base4.M.d94
        d98 : if true then if true then Bool else Bool else if false then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> d26 ) ) ) $ ( x99 ) ) ) ) $ ( if false then Decl50Base4.M.d15 else Decl50Base4.M.d37 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if true then Bool else x104 ) ) ) $ ( if false then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> ( ( Bool -> Bool ) ∋ ( ( λ x103 -> x103 ) ) ) $ ( d37 ) ) ) ) $ ( if true then Decl50Base4.M.d63 else d96 )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if true then Bool else x106 ) ) ) $ ( if true then Bool else Bool )
        d105 = if if Decl50Base4.M.d75 then Decl50Base4.M.d55 else false then if d23 then Decl50Base4.M.d10 else Decl50Base4.M.d69 else if Decl50Base4.M.d140 then Decl50Base4.M.d140 else Decl50Base4.M.d53
        d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d107 = if if Decl50Base4.M.d4 then false else Decl50Base4.M.d105 then if d30 then true else Decl50Base4.M.d1 else if Decl50Base4.M.d43 then false else d44
        d110 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if true then Bool else x113 ) ) ) $ ( if true then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> Decl50Base4.M.d31 ) ) ) $ ( false ) ) ) ) $ ( if d50 then true else Decl50Base4.M.d72 )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if true then x115 else Bool ) ) ) $ ( if true then Bool else Bool )
        d114 = if if true then false else Decl50Base4.M.d19 then if false then d23 else Decl50Base4.M.d130 else if Decl50Base4.M.d13 then d77 else Decl50Base4.M.d114
        d116 : if false then if false then Bool else Bool else if true then Bool else Bool
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> ( ( Bool -> Bool ) ∋ ( ( λ x118 -> Decl50Base4.M.d8 ) ) ) $ ( d21 ) ) ) ) $ ( if Decl50Base4.M.d119 then d18 else Decl50Base4.M.d140 )
        d119 : if true then if true then Bool else Bool else if false then Bool else Bool
        d119 = if if d7 then Decl50Base4.M.d82 else d68 then if d1 then Decl50Base4.M.d66 else Decl50Base4.M.d114 else if d65 then Decl50Base4.M.d88 else Decl50Base4.M.d10
        d120 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if true then Bool else x123 ) ) ) $ ( if false then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( Bool -> Bool ) ∋ ( ( λ x122 -> d96 ) ) ) $ ( false ) ) ) ) $ ( if Decl50Base4.M.d75 then Decl50Base4.M.d29 else Decl50Base4.M.d102 )
        d124 : if false then if true then Bool else Bool else if true then Bool else Bool
        d124 = if if true then Decl50Base4.M.d21 else d105 then if d96 then d37 else d89 else if d89 then true else Decl50Base4.M.d19
        d125 : ( ( Set -> Set ) ∋ ( ( λ x128 -> ( ( Set -> Set ) ∋ ( ( λ x129 -> x128 ) ) ) $ ( x128 ) ) ) ) $ ( if true then Bool else Bool )
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> ( ( Bool -> Bool ) ∋ ( ( λ x127 -> d34 ) ) ) $ ( Decl50Base4.M.d25 ) ) ) ) $ ( if false then d98 else false )
        d130 : if false then if false then Bool else Bool else if false then Bool else Bool
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> if false then false else Decl50Base4.M.d94 ) ) ) $ ( if true then Decl50Base4.M.d26 else Decl50Base4.M.d91 )