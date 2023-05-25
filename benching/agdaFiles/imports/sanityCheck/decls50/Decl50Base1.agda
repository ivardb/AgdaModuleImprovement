module Decl50Base1  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if false then x3 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> if false then false else true ) ) ) $ ( if false then false else false )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if true then x5 else x5 ) ) ) $ ( if true then Bool else Bool )
        d4 = if if false then true else false then if d1 then d1 else d1 else if d1 then true else d1
        d6 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> x8 ) ) ) $ ( x7 ) ) ) ) $ ( if d1 then d4 else d1 )
        d10 : if false then if false then Bool else Bool else if false then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if d4 then x11 else true ) ) ) $ ( if true then d1 else d1 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if true then x14 else x14 ) ) ) $ ( if true then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if x13 then d10 else d10 ) ) ) $ ( if d6 then d4 else false )
        d15 : if false then if false then Bool else Bool else if true then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> true ) ) ) $ ( x16 ) ) ) ) $ ( if false then true else d12 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if false then x19 else x19 ) ) ) $ ( if true then Bool else Bool )
        d18 = if if true then d4 else d10 then if true then d6 else false else if false then d12 else true
        d20 : if true then if true then Bool else Bool else if true then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if d4 then d4 else d4 ) ) ) $ ( if d12 then d18 else d18 )
        d22 : if true then if true then Bool else Bool else if true then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> d12 ) ) ) $ ( false ) ) ) ) $ ( if d12 then true else true )
        d25 : if false then if true then Bool else Bool else if true then Bool else Bool
        d25 = if if false then true else d6 then if false then false else false else if d1 then d20 else d6
        d26 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if true then x28 else Bool ) ) ) $ ( if false then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> if d12 then d10 else d1 ) ) ) $ ( if d18 then true else d4 )
        d29 : if false then if true then Bool else Bool else if false then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if d15 then false else d4 ) ) ) $ ( if d25 then true else true )
        d31 : if false then if true then Bool else Bool else if true then Bool else Bool
        d31 = if if d6 then d18 else d26 then if d18 then true else d25 else if d10 then d18 else d12
        d32 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if false then x35 else x35 ) ) ) $ ( if true then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> ( ( Bool -> Bool ) ∋ ( ( λ x34 -> x34 ) ) ) $ ( x33 ) ) ) ) $ ( if true then false else d12 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x38 -> if true then x38 else x38 ) ) ) $ ( if true then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if true then x37 else d31 ) ) ) $ ( if false then false else d31 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if true then Bool else x41 ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if d15 then x40 else d4 ) ) ) $ ( if d31 then d31 else true )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> x44 ) ) ) $ ( x43 ) ) ) ) $ ( if true then Bool else Bool )
        d42 = if if d31 then false else false then if d15 then d4 else true else if true then true else d32
        d45 : if true then if true then Bool else Bool else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> false ) ) ) $ ( x46 ) ) ) ) $ ( if true then true else d32 )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if false then x51 else x51 ) ) ) $ ( if false then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> d4 ) ) ) $ ( x49 ) ) ) ) $ ( if d31 then false else d42 )
        d52 : if false then if false then Bool else Bool else if true then Bool else Bool
        d52 = if if d4 then true else true then if d31 then false else d48 else if d36 then d15 else d29
        d53 : if true then if false then Bool else Bool else if true then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if d26 then false else x54 ) ) ) $ ( if d31 then d1 else true )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d55 = if if d29 then true else d18 then if d53 then d12 else d45 else if d18 then d10 else false
        d58 : if true then if false then Bool else Bool else if false then Bool else Bool
        d58 = if if false then d42 else false then if d18 then d22 else d15 else if false then d32 else true
        d59 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> Bool ) ) ) $ ( x61 ) ) ) ) $ ( if true then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if d20 then true else true ) ) ) $ ( if d53 then d18 else false )
        d63 : if false then if false then Bool else Bool else if true then Bool else Bool
        d63 = if if false then d55 else d1 then if d53 then d22 else d20 else if d10 then d58 else true
        d64 : if false then if false then Bool else Bool else if true then Bool else Bool
        d64 = if if false then false else true then if true then d55 else true else if false then false else d36
        d65 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> Bool ) ) ) $ ( x66 ) ) ) ) $ ( if true then Bool else Bool )
        d65 = if if d58 then false else true then if true then false else d45 else if true then true else d1
        d68 : if true then if true then Bool else Bool else if true then Bool else Bool
        d68 = if if d1 then true else false then if false then true else d55 else if d59 then true else d36
        d69 : if true then if true then Bool else Bool else if false then Bool else Bool
        d69 = if if d36 then true else false then if d29 then d65 else d45 else if false then d31 else false
        d70 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d70 = if if true then d55 else true then if true then d65 else d31 else if true then d45 else d10
        d73 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> x74 ) ) ) $ ( d26 ) ) ) ) $ ( if d65 then d31 else d18 )
        d77 : if false then if false then Bool else Bool else if true then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if x78 then false else d59 ) ) ) $ ( if false then d42 else false )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> Bool ) ) ) $ ( x82 ) ) ) ) $ ( if true then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> d42 ) ) ) $ ( x80 ) ) ) ) $ ( if d32 then d6 else d58 )
        d84 : if false then if false then Bool else Bool else if false then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> x85 ) ) ) $ ( x85 ) ) ) ) $ ( if false then d36 else d52 )
        d87 : if true then if true then Bool else Bool else if true then Bool else Bool
        d87 = if if true then d55 else d39 then if d22 then d42 else false else if d55 then d48 else d15
        d88 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> x92 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> x89 ) ) ) $ ( true ) ) ) ) $ ( if d84 then true else d63 )
        d93 : if true then if false then Bool else Bool else if false then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> x95 ) ) ) $ ( x94 ) ) ) ) $ ( if d4 then d29 else false )
        d96 : if true then if true then Bool else Bool else if true then Bool else Bool
        d96 = if if false then d29 else true then if true then d58 else true else if false then d4 else false
        d97 : if true then if false then Bool else Bool else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> false ) ) ) $ ( true ) ) ) ) $ ( if true then false else d64 )
        d100 : if false then if true then Bool else Bool else if true then Bool else Bool
        d100 = if if d15 then true else true then if true then d70 else false else if false then false else false
        d101 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if true then x104 else x104 ) ) ) $ ( if false then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> ( ( Bool -> Bool ) ∋ ( ( λ x103 -> x103 ) ) ) $ ( d6 ) ) ) ) $ ( if true then d25 else d26 )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d105 = if if d20 then false else d22 then if true then false else false else if d64 then d97 else d58
        d107 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if true then Bool else x109 ) ) ) $ ( if true then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> if true then false else true ) ) ) $ ( if false then false else true )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> x112 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> if d12 then false else false ) ) ) $ ( if d55 then true else true )
        d114 : if false then if true then Bool else Bool else if false then Bool else Bool
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( Bool -> Bool ) ∋ ( ( λ x116 -> x115 ) ) ) $ ( false ) ) ) ) $ ( if d42 then d39 else true )
        d117 : if false then if true then Bool else Bool else if false then Bool else Bool
        d117 = if if false then d59 else d15 then if true then true else false else if true then d65 else true
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> x120 ) ) ) $ ( x119 ) ) ) ) $ ( if true then Bool else Bool )
        d118 = if if false then false else true then if d110 then false else d68 else if false then true else d36
        d121 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( ( Bool -> Bool ) ∋ ( ( λ x123 -> d69 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d15 )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x128 -> ( ( Set -> Set ) ∋ ( ( λ x129 -> x128 ) ) ) $ ( x128 ) ) ) ) $ ( if false then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if d121 then d93 else x127 ) ) ) $ ( if false then true else d79 )
        d130 : ( ( Set -> Set ) ∋ ( ( λ x133 -> ( ( Set -> Set ) ∋ ( ( λ x134 -> x133 ) ) ) $ ( x133 ) ) ) ) $ ( if true then Bool else Bool )
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> ( ( Bool -> Bool ) ∋ ( ( λ x132 -> d29 ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )