module Decl50Base4  where
    data Bool : Set where
       true false : Bool
    {-# BUILTIN BOOL  Bool  #-}
    {-# BUILTIN FALSE false #-}
    {-# BUILTIN TRUE  true  #-}
    
    record ⊤ : Set where
       instance constructor tt
    {-# BUILTIN UNIT ⊤ #-}
    
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
        d1 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> x3 ) ) ) $ ( false ) ) ) ) $ ( if true then false else false )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> x6 ) ) ) $ ( x6 ) ) ) ) $ ( if false then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if x5 then false else x5 ) ) ) $ ( if d1 then false else d1 )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if true then Bool else x9 ) ) ) $ ( if true then Bool else Bool )
        d8 = if if false then d1 else true then if true then false else d4 else if false then d4 else d4
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> Bool ) ) ) $ ( x11 ) ) ) ) $ ( if true then Bool else Bool )
        d10 = if if false then true else false then if true then false else d1 else if d8 then d1 else true
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if true then Bool else x14 ) ) ) $ ( if true then Bool else Bool )
        d13 = if if d4 then d1 else true then if d4 then true else d4 else if false then d8 else d1
        d15 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if false then x18 else Bool ) ) ) $ ( if true then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> d8 ) ) ) $ ( x16 ) ) ) ) $ ( if false then d13 else d13 )
        d19 : if true then if false then Bool else Bool else if true then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if x20 then x20 else d13 ) ) ) $ ( if false then d4 else false )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> true ) ) ) $ ( d19 ) ) ) ) $ ( if false then d19 else d19 )
        d25 : if true then if false then Bool else Bool else if true then Bool else Bool
        d25 = if if d4 then d4 else d13 then if false then d4 else false else if d1 then true else true
        d26 : if true then if true then Bool else Bool else if true then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> x28 ) ) ) $ ( false ) ) ) ) $ ( if false then false else true )
        d29 : if false then if true then Bool else Bool else if false then Bool else Bool
        d29 = if if d10 then d1 else d1 then if false then d25 else d26 else if d10 then true else false
        d30 : if false then if false then Bool else Bool else if false then Bool else Bool
        d30 = if if false then d25 else d25 then if false then false else d1 else if true then false else d19
        d31 : if true then if true then Bool else Bool else if true then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> x33 ) ) ) $ ( x32 ) ) ) ) $ ( if d4 then false else d4 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> Bool ) ) ) $ ( x35 ) ) ) ) $ ( if true then Bool else Bool )
        d34 = if if true then d19 else true then if false then d31 else d31 else if false then d13 else true
        d37 : ( ( Set -> Set ) ∋ ( ( λ x38 -> if false then x38 else x38 ) ) ) $ ( if false then Bool else Bool )
        d37 = if if d8 then d4 else true then if d19 then true else d8 else if true then true else true
        d39 : ( ( Set -> Set ) ∋ ( ( λ x42 -> if false then x42 else x42 ) ) ) $ ( if false then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> d4 ) ) ) $ ( d25 ) ) ) ) $ ( if true then true else d1 )
        d43 : if true then if false then Bool else Bool else if false then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> d21 ) ) ) $ ( x44 ) ) ) ) $ ( if true then d19 else true )
        d46 : if false then if false then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> x48 ) ) ) $ ( x47 ) ) ) ) $ ( if false then d13 else false )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> Bool ) ) ) $ ( x51 ) ) ) ) $ ( if true then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if d10 then x50 else d10 ) ) ) $ ( if false then d30 else false )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if true then x54 else x54 ) ) ) $ ( if true then Bool else Bool )
        d53 = if if d10 then d34 else false then if false then true else d43 else if d30 then d39 else d29
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> if false then x56 else Bool ) ) ) $ ( if false then Bool else Bool )
        d55 = if if true then d49 else d53 then if d15 then d53 else true else if false then false else d15
        d57 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if x58 then x58 else true ) ) ) $ ( if false then true else d4 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if false then Bool else x62 ) ) ) $ ( if false then Bool else Bool )
        d61 = if if d4 then false else true then if d53 then false else d21 else if false then true else false
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> Bool ) ) ) $ ( x64 ) ) ) ) $ ( if true then Bool else Bool )
        d63 = if if true then d30 else true then if d43 then d43 else d34 else if d49 then true else true
        d66 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if true then x68 else x68 ) ) ) $ ( if false then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if d13 then d21 else d34 ) ) ) $ ( if false then true else false )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if false then x71 else Bool ) ) ) $ ( if true then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if x70 then false else d29 ) ) ) $ ( if d46 then true else true )
        d72 : if false then if false then Bool else Bool else if false then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> ( ( Bool -> Bool ) ∋ ( ( λ x74 -> d39 ) ) ) $ ( x73 ) ) ) ) $ ( if true then true else d29 )
        d75 : ( ( Set -> Set ) ∋ ( ( λ x78 -> ( ( Set -> Set ) ∋ ( ( λ x79 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> x76 ) ) ) $ ( x76 ) ) ) ) $ ( if false then true else d57 )
        d80 : if true then if false then Bool else Bool else if true then Bool else Bool
        d80 = if if d4 then d26 else true then if d75 then false else true else if false then true else d13
        d81 : if false then if true then Bool else Bool else if false then Bool else Bool
        d81 = if if d43 then true else d46 then if d43 then true else d80 else if true then false else d10
        d82 : if true then if false then Bool else Bool else if false then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> x84 ) ) ) $ ( false ) ) ) ) $ ( if d66 then false else d34 )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if false then x87 else Bool ) ) ) $ ( if false then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if true then d72 else d61 ) ) ) $ ( if false then false else true )
        d88 : if true then if true then Bool else Bool else if false then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> x89 ) ) ) $ ( x89 ) ) ) ) $ ( if true then false else d80 )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> ( ( Set -> Set ) ∋ ( ( λ x93 -> x93 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d91 = if if false then d43 else d25 then if d1 then true else d21 else if true then false else false
        d94 : if false then if false then Bool else Bool else if true then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if x95 then x95 else d29 ) ) ) $ ( if d25 then d91 else false )
        d96 : if false then if false then Bool else Bool else if false then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if false then false else d19 ) ) ) $ ( if true then d8 else d19 )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if x99 then x99 else d94 ) ) ) $ ( if false then false else d39 )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> Bool ) ) ) $ ( x103 ) ) ) ) $ ( if false then Bool else Bool )
        d102 = if if d98 then d26 else d1 then if d82 then d25 else d34 else if d19 then false else false
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> Bool ) ) ) $ ( x106 ) ) ) ) $ ( if false then Bool else Bool )
        d105 = if if d31 then false else true then if d19 then false else d39 else if false then true else d10
        d108 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> x109 ) ) ) $ ( d4 ) ) ) ) $ ( if true then d105 else d37 )
        d113 : if false then if false then Bool else Bool else if true then Bool else Bool
        d113 = if if d102 then true else d94 then if d13 then d85 else d31 else if d63 then d10 else d15
        d114 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> x117 ) ) ) $ ( x117 ) ) ) ) $ ( if false then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( Bool -> Bool ) ∋ ( ( λ x116 -> d29 ) ) ) $ ( x115 ) ) ) ) $ ( if false then d105 else d63 )
        d119 : if true then if false then Bool else Bool else if false then Bool else Bool
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> d15 ) ) ) $ ( x120 ) ) ) ) $ ( if d82 then d69 else false )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> Bool ) ) ) $ ( x125 ) ) ) ) $ ( if false then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> true ) ) ) $ ( x123 ) ) ) ) $ ( if d98 then d55 else d4 )
        d127 : ( ( Set -> Set ) ∋ ( ( λ x128 -> ( ( Set -> Set ) ∋ ( ( λ x129 -> x129 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d127 = if if false then d63 else true then if true then true else true else if d31 then true else d63
        d130 : ( ( Set -> Set ) ∋ ( ( λ x133 -> if false then x133 else x133 ) ) ) $ ( if false then Bool else Bool )
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> ( ( Bool -> Bool ) ∋ ( ( λ x132 -> false ) ) ) $ ( true ) ) ) ) $ ( if d88 then d80 else false )
        d134 : if true then if false then Bool else Bool else if true then Bool else Bool
        d134 = if if true then d10 else false then if false then d1 else false else if d1 then d81 else false
        d135 : ( ( Set -> Set ) ∋ ( ( λ x137 -> ( ( Set -> Set ) ∋ ( ( λ x138 -> Bool ) ) ) $ ( x137 ) ) ) ) $ ( if true then Bool else Bool )
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> if d29 then x136 else d119 ) ) ) $ ( if false then d25 else d72 )
        d139 : if false then if false then Bool else Bool else if false then Bool else Bool
        d139 = if if false then d10 else false then if d34 then true else true else if d85 then d94 else d21
        d140 : ( ( Set -> Set ) ∋ ( ( λ x141 -> ( ( Set -> Set ) ∋ ( ( λ x142 -> Bool ) ) ) $ ( x141 ) ) ) ) $ ( if false then Bool else Bool )
        d140 = if if false then d43 else d102 then if d122 then true else d130 else if true then d72 else false