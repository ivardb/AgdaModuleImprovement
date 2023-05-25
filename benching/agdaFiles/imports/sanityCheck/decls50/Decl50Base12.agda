module Decl50Base12  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> x5 ) ) ) $ ( x4 ) ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> false ) ) ) $ ( x2 ) ) ) ) $ ( if false then false else true )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if false then Bool else x9 ) ) ) $ ( if false then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> d1 ) ) ) $ ( d1 ) ) ) ) $ ( if d1 then true else true )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d10 = if if d6 then d6 else d1 then if true then d6 else true else if true then false else true
        d12 : if true then if true then Bool else Bool else if true then Bool else Bool
        d12 = if if false then d1 else true then if false then true else d10 else if d1 then true else d1
        d13 : if true then if false then Bool else Bool else if true then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if false then d10 else d12 ) ) ) $ ( if false then true else d12 )
        d15 : if false then if true then Bool else Bool else if true then Bool else Bool
        d15 = if if true then true else false then if d13 then d13 else d10 else if false then d10 else false
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> x18 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d16 = if if d1 then d6 else false then if d15 then d12 else d6 else if d13 then d1 else d1
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x20 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d19 = if if d15 then d16 else d10 then if d12 then true else true else if d15 then d16 else d12
        d22 : if false then if true then Bool else Bool else if false then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if true then true else d12 ) ) ) $ ( if d19 then true else false )
        d24 : if false then if true then Bool else Bool else if false then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if false then x25 else d12 ) ) ) $ ( if true then false else d16 )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> if d6 then d13 else d22 ) ) ) $ ( if d6 then d22 else d15 )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> x32 ) ) ) $ ( x31 ) ) ) ) $ ( if false then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if x30 then d10 else x30 ) ) ) $ ( if false then d15 else d6 )
        d33 : if true then if true then Bool else Bool else if true then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> d22 ) ) ) $ ( x34 ) ) ) ) $ ( if d1 then false else d29 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> x38 ) ) ) $ ( x38 ) ) ) ) $ ( if true then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if d12 then x37 else d22 ) ) ) $ ( if true then d26 else d22 )
        d40 : if true then if false then Bool else Bool else if false then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> ( ( Set -> Set ) ∋ ( ( λ x45 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d43 = if if false then d13 else d15 then if d26 then d19 else true else if d22 then false else true
        d46 : if false then if false then Bool else Bool else if true then Bool else Bool
        d46 = if if d26 then d10 else d1 then if true then d29 else d36 else if d43 then false else d26
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> x48 ) ) ) $ ( x48 ) ) ) ) $ ( if true then Bool else Bool )
        d47 = if if false then d1 else d43 then if false then true else d26 else if true then true else true
        d50 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> false ) ) ) $ ( false ) ) ) ) $ ( if d40 then true else true )
        d54 : if false then if false then Bool else Bool else if true then Bool else Bool
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> ( ( Bool -> Bool ) ∋ ( ( λ x56 -> false ) ) ) $ ( true ) ) ) ) $ ( if true then d40 else d19 )
        d57 : if true then if false then Bool else Bool else if true then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> ( ( Bool -> Bool ) ∋ ( ( λ x59 -> false ) ) ) $ ( d47 ) ) ) ) $ ( if d1 then d26 else false )
        d60 : if false then if false then Bool else Bool else if true then Bool else Bool
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> d12 ) ) ) $ ( d24 ) ) ) ) $ ( if d13 then d16 else d47 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if true then x64 else x64 ) ) ) $ ( if true then Bool else Bool )
        d63 = if if d29 then true else false then if false then d15 else d36 else if d50 then d13 else false
        d65 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> x68 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> d10 ) ) ) $ ( d63 ) ) ) ) $ ( if false then false else d54 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if false then Bool else x73 ) ) ) $ ( if false then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> true ) ) ) $ ( false ) ) ) ) $ ( if d50 then d10 else true )
        d74 : if false then if true then Bool else Bool else if true then Bool else Bool
        d74 = if if false then d12 else d33 then if d36 then d70 else true else if d65 then d16 else true
        d75 : if true then if true then Bool else Bool else if true then Bool else Bool
        d75 = if if d65 then d60 else d12 then if d13 then d24 else false else if true then d40 else false
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d76 = if if false then d10 else d15 then if false then d43 else true else if d15 then d70 else false
        d79 : if true then if true then Bool else Bool else if true then Bool else Bool
        d79 = if if false then true else true then if d16 then d36 else false else if d54 then false else true
        d80 : if true then if true then Bool else Bool else if true then Bool else Bool
        d80 = if if true then d70 else d1 then if d15 then true else d13 else if d24 then false else d63
        d81 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> x83 ) ) ) $ ( x83 ) ) ) ) $ ( if false then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if true then x82 else x82 ) ) ) $ ( if false then d63 else false )
        d85 : if false then if false then Bool else Bool else if true then Bool else Bool
        d85 = if if d26 then true else false then if true then true else d57 else if false then false else true
        d86 : if true then if false then Bool else Bool else if false then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> x87 ) ) ) $ ( true ) ) ) ) $ ( if d6 then false else false )
        d89 : if true then if true then Bool else Bool else if true then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if d19 then x90 else x90 ) ) ) $ ( if true then d85 else d15 )
        d91 : if true then if true then Bool else Bool else if true then Bool else Bool
        d91 = if if false then d46 else false then if d1 then d75 else d12 else if false then d63 else d89
        d92 : if true then if false then Bool else Bool else if false then Bool else Bool
        d92 = if if false then d12 else true then if true then false else d75 else if d85 then false else true
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if true then x94 else Bool ) ) ) $ ( if false then Bool else Bool )
        d93 = if if false then false else d24 then if false then true else true else if false then false else false
        d95 : ( ( Set -> Set ) ∋ ( ( λ x96 -> if false then x96 else Bool ) ) ) $ ( if true then Bool else Bool )
        d95 = if if false then true else false then if false then false else false else if d50 then true else d63
        d97 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if false then x98 else x98 ) ) ) $ ( if d91 then true else true )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> x104 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> true ) ) ) $ ( d15 ) ) ) ) $ ( if d86 then true else true )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if true then x106 else Bool ) ) ) $ ( if false then Bool else Bool )
        d105 = if if d6 then false else true then if false then d33 else d80 else if true then false else true
        d107 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if false then Bool else x109 ) ) ) $ ( if false then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> if d57 then d19 else false ) ) ) $ ( if d91 then d76 else d19 )
        d110 : if true then if false then Bool else Bool else if true then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> d100 ) ) ) $ ( true ) ) ) ) $ ( if false then d16 else d47 )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> Bool ) ) ) $ ( x114 ) ) ) ) $ ( if true then Bool else Bool )
        d113 = if if d105 then true else true then if d12 then true else true else if false then false else false
        d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if false then x117 else x117 ) ) ) $ ( if true then Bool else Bool )
        d116 = if if d10 then d26 else false then if true then true else d113 else if d74 then true else false
        d118 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> x121 ) ) ) $ ( x120 ) ) ) ) $ ( if false then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> if false then d79 else d13 ) ) ) $ ( if d36 then d85 else d10 )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x123 -> ( ( Set -> Set ) ∋ ( ( λ x124 -> x124 ) ) ) $ ( x123 ) ) ) ) $ ( if true then Bool else Bool )
        d122 = if if false then d36 else false then if true then true else false else if true then true else true
        d125 : if false then if false then Bool else Bool else if false then Bool else Bool
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> if x126 then false else true ) ) ) $ ( if d33 then false else true )
        d127 : ( ( Set -> Set ) ∋ ( ( λ x128 -> ( ( Set -> Set ) ∋ ( ( λ x129 -> Bool ) ) ) $ ( x128 ) ) ) ) $ ( if true then Bool else Bool )
        d127 = if if false then false else d36 then if true then d122 else false else if false then false else d29
        d130 : ( ( Set -> Set ) ∋ ( ( λ x131 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d130 = if if d19 then d100 else d26 then if d107 then true else d40 else if d22 then true else d40