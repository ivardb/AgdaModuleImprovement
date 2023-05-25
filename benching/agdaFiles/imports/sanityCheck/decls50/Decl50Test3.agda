module Decl50Test3  where
    import Decl50Base3
    open import Decl50Base3 using (Bool; true; false; ⊤; tt) public
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> x5 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> x2 ) ) ) $ ( Decl50Base3.M.d75 ) ) ) ) $ ( if true then true else Decl50Base3.M.d16 )
        d6 : if false then if true then Bool else Bool else if false then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if true then Decl50Base3.M.d61 else x7 ) ) ) $ ( if false then Decl50Base3.M.d16 else false )
        d8 : if true then if true then Bool else Bool else if true then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if Decl50Base3.M.d62 then Decl50Base3.M.d16 else Decl50Base3.M.d25 ) ) ) $ ( if Decl50Base3.M.d1 then Decl50Base3.M.d2 else Decl50Base3.M.d68 )
        d10 : if false then if false then Bool else Bool else if false then Bool else Bool
        d10 = if if Decl50Base3.M.d55 then true else d1 then if Decl50Base3.M.d108 then Decl50Base3.M.d114 else d8 else if Decl50Base3.M.d86 then false else d1
        d11 : if true then if true then Bool else Bool else if false then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> false ) ) ) $ ( x12 ) ) ) ) $ ( if Decl50Base3.M.d25 then Decl50Base3.M.d100 else Decl50Base3.M.d71 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> x17 ) ) ) $ ( x17 ) ) ) ) $ ( if true then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> Decl50Base3.M.d32 ) ) ) $ ( Decl50Base3.M.d106 ) ) ) ) $ ( if Decl50Base3.M.d31 then Decl50Base3.M.d72 else Decl50Base3.M.d39 )
        d19 : if false then if true then Bool else Bool else if true then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> Decl50Base3.M.d31 ) ) ) $ ( x20 ) ) ) ) $ ( if Decl50Base3.M.d39 then d1 else false )
        d22 : if true then if true then Bool else Bool else if false then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if x23 then true else Decl50Base3.M.d119 ) ) ) $ ( if false then false else Decl50Base3.M.d25 )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d24 = if if d6 then Decl50Base3.M.d92 else Decl50Base3.M.d116 then if true then d10 else Decl50Base3.M.d100 else if Decl50Base3.M.d42 then d1 else true
        d26 : if false then if true then Bool else Bool else if true then Bool else Bool
        d26 = if if d6 then true else true then if Decl50Base3.M.d34 then d22 else d11 else if d11 then d1 else d6
        d27 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if false then x29 else x29 ) ) ) $ ( if false then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if Decl50Base3.M.d24 then x28 else x28 ) ) ) $ ( if true then Decl50Base3.M.d114 else Decl50Base3.M.d79 )
        d30 : if false then if true then Bool else Bool else if false then Bool else Bool
        d30 = if if Decl50Base3.M.d81 then Decl50Base3.M.d28 else Decl50Base3.M.d114 then if d19 then Decl50Base3.M.d92 else d19 else if d6 then d11 else Decl50Base3.M.d95
        d31 : if true then if true then Bool else Bool else if true then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> d19 ) ) ) $ ( x32 ) ) ) ) $ ( if Decl50Base3.M.d91 then d24 else false )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> x37 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> Decl50Base3.M.d25 ) ) ) $ ( false ) ) ) ) $ ( if Decl50Base3.M.d34 then Decl50Base3.M.d16 else true )
        d39 : if true then if true then Bool else Bool else if false then Bool else Bool
        d39 = if if d31 then Decl50Base3.M.d32 else Decl50Base3.M.d10 then if false then Decl50Base3.M.d10 else d30 else if false then Decl50Base3.M.d81 else true
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if false then x41 else x41 ) ) ) $ ( if true then Bool else Bool )
        d40 = if if Decl50Base3.M.d116 then d27 else Decl50Base3.M.d62 then if true then d27 else Decl50Base3.M.d2 else if Decl50Base3.M.d93 then Decl50Base3.M.d114 else Decl50Base3.M.d61
        d42 : if false then if true then Bool else Bool else if true then Bool else Bool
        d42 = if if Decl50Base3.M.d105 then true else Decl50Base3.M.d84 then if d39 then Decl50Base3.M.d111 else Decl50Base3.M.d93 else if d26 then d27 else true
        d43 : if false then if false then Bool else Bool else if true then Bool else Bool
        d43 = if if Decl50Base3.M.d28 then Decl50Base3.M.d50 else d6 then if Decl50Base3.M.d4 then Decl50Base3.M.d114 else Decl50Base3.M.d123 else if d24 then Decl50Base3.M.d65 else Decl50Base3.M.d13
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if false then x45 else x45 ) ) ) $ ( if false then Bool else Bool )
        d44 = if if Decl50Base3.M.d75 then Decl50Base3.M.d62 else Decl50Base3.M.d71 then if d24 then false else Decl50Base3.M.d68 else if true then true else Decl50Base3.M.d32
        d46 : ( ( Set -> Set ) ∋ ( ( λ x48 -> if false then Bool else x48 ) ) ) $ ( if false then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if Decl50Base3.M.d32 then d1 else false ) ) ) $ ( if Decl50Base3.M.d24 then Decl50Base3.M.d51 else false )
        d49 : if true then if false then Bool else Bool else if false then Bool else Bool
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if Decl50Base3.M.d91 then true else Decl50Base3.M.d50 ) ) ) $ ( if d22 then true else Decl50Base3.M.d42 )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if false then x54 else Bool ) ) ) $ ( if true then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> Decl50Base3.M.d102 ) ) ) $ ( true ) ) ) ) $ ( if Decl50Base3.M.d75 then d42 else d26 )
        d55 : if false then if false then Bool else Bool else if true then Bool else Bool
        d55 = if if d6 then Decl50Base3.M.d16 else false then if Decl50Base3.M.d50 then Decl50Base3.M.d24 else Decl50Base3.M.d34 else if Decl50Base3.M.d81 then d51 else Decl50Base3.M.d106
        d56 : if true then if true then Bool else Bool else if false then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> Decl50Base3.M.d65 ) ) ) $ ( Decl50Base3.M.d65 ) ) ) ) $ ( if d27 then Decl50Base3.M.d94 else d40 )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> x62 ) ) ) $ ( x61 ) ) ) ) $ ( if true then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if x60 then Decl50Base3.M.d32 else Decl50Base3.M.d68 ) ) ) $ ( if false then Decl50Base3.M.d47 else true )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if false then x64 else x64 ) ) ) $ ( if true then Bool else Bool )
        d63 = if if d11 then Decl50Base3.M.d94 else true then if Decl50Base3.M.d34 then Decl50Base3.M.d24 else d42 else if false then Decl50Base3.M.d111 else Decl50Base3.M.d4
        d65 : if true then if false then Bool else Bool else if true then Bool else Bool
        d65 = if if Decl50Base3.M.d75 then d27 else true then if false then false else d63 else if Decl50Base3.M.d61 then Decl50Base3.M.d116 else true
        d66 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if d30 then Decl50Base3.M.d24 else Decl50Base3.M.d88 ) ) ) $ ( if d24 then Decl50Base3.M.d123 else Decl50Base3.M.d51 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if false then Bool else x71 ) ) ) $ ( if false then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if x70 then false else false ) ) ) $ ( if d26 then true else Decl50Base3.M.d93 )
        d72 : if false then if true then Bool else Bool else if false then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if Decl50Base3.M.d62 then false else true ) ) ) $ ( if Decl50Base3.M.d47 then d19 else false )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if false then x75 else Bool ) ) ) $ ( if true then Bool else Bool )
        d74 = if if Decl50Base3.M.d58 then Decl50Base3.M.d71 else Decl50Base3.M.d114 then if Decl50Base3.M.d31 then Decl50Base3.M.d91 else true else if d55 then true else d66
        d76 : ( ( Set -> Set ) ∋ ( ( λ x79 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> x79 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> Decl50Base3.M.d72 ) ) ) $ ( Decl50Base3.M.d51 ) ) ) ) $ ( if Decl50Base3.M.d32 then Decl50Base3.M.d105 else false )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> x84 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if x82 then Decl50Base3.M.d84 else Decl50Base3.M.d119 ) ) ) $ ( if Decl50Base3.M.d19 then d31 else d39 )
        d85 : if true then if true then Bool else Bool else if true then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> x86 ) ) ) $ ( Decl50Base3.M.d62 ) ) ) ) $ ( if Decl50Base3.M.d92 then true else false )
        d88 : if true then if false then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if Decl50Base3.M.d72 then Decl50Base3.M.d94 else false ) ) ) $ ( if Decl50Base3.M.d39 then d72 else Decl50Base3.M.d25 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> Bool ) ) ) $ ( x93 ) ) ) ) $ ( if false then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> d11 ) ) ) $ ( d40 ) ) ) ) $ ( if false then Decl50Base3.M.d13 else Decl50Base3.M.d116 )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if false then x98 else x98 ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> x97 ) ) ) $ ( true ) ) ) ) $ ( if false then Decl50Base3.M.d13 else false )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> Bool ) ) ) $ ( x100 ) ) ) ) $ ( if true then Bool else Bool )
        d99 = if if Decl50Base3.M.d123 then Decl50Base3.M.d116 else Decl50Base3.M.d65 then if true then d90 else Decl50Base3.M.d50 else if Decl50Base3.M.d7 then true else false
        d102 : if false then if false then Bool else Bool else if true then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> Decl50Base3.M.d16 ) ) ) $ ( Decl50Base3.M.d105 ) ) ) ) $ ( if false then Decl50Base3.M.d98 else d49 )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if true then x106 else x106 ) ) ) $ ( if false then Bool else Bool )
        d105 = if if Decl50Base3.M.d34 then true else false then if Decl50Base3.M.d75 then d49 else Decl50Base3.M.d81 else if false then Decl50Base3.M.d2 else Decl50Base3.M.d31
        d107 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then Bool else x110 ) ) ) $ ( if false then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> d11 ) ) ) $ ( d39 ) ) ) ) $ ( if Decl50Base3.M.d24 then true else Decl50Base3.M.d68 )
        d111 : if false then if false then Bool else Bool else if false then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> true ) ) ) $ ( Decl50Base3.M.d25 ) ) ) ) $ ( if Decl50Base3.M.d55 then Decl50Base3.M.d31 else Decl50Base3.M.d106 )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if true then Bool else x115 ) ) ) $ ( if true then Bool else Bool )
        d114 = if if false then Decl50Base3.M.d51 else Decl50Base3.M.d81 then if Decl50Base3.M.d55 then Decl50Base3.M.d123 else d107 else if false then true else Decl50Base3.M.d108
        d116 : if true then if true then Bool else Bool else if true then Bool else Bool
        d116 = if if Decl50Base3.M.d2 then Decl50Base3.M.d108 else Decl50Base3.M.d72 then if d88 then Decl50Base3.M.d24 else true else if Decl50Base3.M.d123 then Decl50Base3.M.d39 else Decl50Base3.M.d116
        d117 : if false then if true then Bool else Bool else if true then Bool else Bool
        d117 = if if Decl50Base3.M.d105 then d81 else Decl50Base3.M.d47 then if Decl50Base3.M.d91 then Decl50Base3.M.d62 else Decl50Base3.M.d71 else if true then d65 else Decl50Base3.M.d100
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> x120 ) ) ) $ ( x119 ) ) ) ) $ ( if false then Bool else Bool )
        d118 = if if Decl50Base3.M.d75 then Decl50Base3.M.d4 else Decl50Base3.M.d13 then if Decl50Base3.M.d4 then Decl50Base3.M.d16 else d30 else if true then d117 else true
        d121 : if false then if true then Bool else Bool else if false then Bool else Bool
        d121 = if if d43 then d42 else Decl50Base3.M.d25 then if Decl50Base3.M.d114 then true else Decl50Base3.M.d108 else if Decl50Base3.M.d75 then d1 else Decl50Base3.M.d33
        d122 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> x123 ) ) ) $ ( Decl50Base3.M.d114 ) ) ) ) $ ( if true then d42 else Decl50Base3.M.d68 )
        d126 : if false then if true then Bool else Bool else if true then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( ( Bool -> Bool ) ∋ ( ( λ x128 -> d69 ) ) ) $ ( d121 ) ) ) ) $ ( if d117 then true else Decl50Base3.M.d65 )
        d129 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> x132 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x131 -> Decl50Base3.M.d84 ) ) ) $ ( Decl50Base3.M.d114 ) ) ) ) $ ( if Decl50Base3.M.d72 then Decl50Base3.M.d94 else true )