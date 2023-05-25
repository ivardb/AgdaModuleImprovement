module Decl50Base5  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then x2 else x2 ) ) ) $ ( if true then Bool else Bool )
        d1 = if if false then false else false then if true then true else false else if false then false else true
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> Bool ) ) ) $ ( x4 ) ) ) ) $ ( if false then Bool else Bool )
        d3 = if if true then false else d1 then if false then false else d1 else if d1 then d1 else false
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d6 = if if d3 then true else d3 then if d1 then d1 else d3 else if d1 then true else true
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> Bool ) ) ) $ ( x10 ) ) ) ) $ ( if false then Bool else Bool )
        d9 = if if d1 then d3 else true then if false then false else d6 else if true then false else true
        d12 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> x13 ) ) ) $ ( true ) ) ) ) $ ( if d3 then true else d9 )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d16 = if if d1 then false else false then if d12 then false else d6 else if true then d12 else d3
        d18 : if false then if false then Bool else Bool else if false then Bool else Bool
        d18 = if if true then true else d3 then if false then d16 else d16 else if d1 then d6 else d3
        d19 : if false then if true then Bool else Bool else if false then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> false ) ) ) $ ( true ) ) ) ) $ ( if d6 then d3 else true )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> Bool ) ) ) $ ( x24 ) ) ) ) $ ( if false then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if false then d6 else x23 ) ) ) $ ( if d3 then false else d18 )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> x28 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d26 = if if d3 then d18 else false then if false then d6 else d12 else if true then false else false
        d29 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> x30 ) ) ) $ ( true ) ) ) ) $ ( if false then d1 else d19 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> true ) ) ) $ ( x35 ) ) ) ) $ ( if false then true else d18 )
        d38 : if false then if true then Bool else Bool else if true then Bool else Bool
        d38 = if if d16 then true else true then if d29 then d3 else d18 else if false then d18 else true
        d39 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> Bool ) ) ) $ ( x42 ) ) ) ) $ ( if false then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> x41 ) ) ) $ ( d1 ) ) ) ) $ ( if d38 then d19 else d6 )
        d44 : if true then if false then Bool else Bool else if false then Bool else Bool
        d44 = if if d38 then d1 else d12 then if false then true else d16 else if d29 then false else true
        d45 : if true then if true then Bool else Bool else if false then Bool else Bool
        d45 = if if false then d18 else d3 then if d26 then d6 else true else if d1 then false else d26
        d46 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if true then Bool else x47 ) ) ) $ ( if false then Bool else Bool )
        d46 = if if d22 then true else false then if d12 then true else d1 else if d22 then false else false
        d48 : if false then if false then Bool else Bool else if false then Bool else Bool
        d48 = if if true then d45 else true then if false then d1 else false else if d22 then d38 else false
        d49 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if true then Bool else x51 ) ) ) $ ( if false then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if d22 then x50 else x50 ) ) ) $ ( if d9 then true else d12 )
        d52 : if true then if false then Bool else Bool else if false then Bool else Bool
        d52 = if if d29 then false else true then if d16 then d12 else false else if false then true else false
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> ( ( Set -> Set ) ∋ ( ( λ x55 -> x55 ) ) ) $ ( x54 ) ) ) ) $ ( if false then Bool else Bool )
        d53 = if if true then d12 else d1 then if d38 then false else false else if d48 then d3 else d18
        d56 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> x58 ) ) ) $ ( x58 ) ) ) ) $ ( if true then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if true then x57 else d48 ) ) ) $ ( if true then d44 else false )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if true then d12 else d1 ) ) ) $ ( if d34 then d16 else true )
        d64 : if true then if true then Bool else Bool else if true then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if x65 then true else false ) ) ) $ ( if true then false else true )
        d66 : if true then if false then Bool else Bool else if true then Bool else Bool
        d66 = if if false then d44 else false then if d49 then true else true else if d49 then false else false
        d67 : if false then if true then Bool else Bool else if false then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if x68 then false else true ) ) ) $ ( if true then false else d29 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> x70 ) ) ) $ ( x70 ) ) ) ) $ ( if false then Bool else Bool )
        d69 = if if d53 then d48 else d12 then if false then d48 else d56 else if true then d6 else false
        d72 : if false then if false then Bool else Bool else if false then Bool else Bool
        d72 = if if d39 then false else d48 then if d18 then true else true else if d44 then d45 else true
        d73 : if false then if true then Bool else Bool else if false then Bool else Bool
        d73 = if if true then false else true then if d72 then false else false else if true then d53 else d64
        d74 : if true then if true then Bool else Bool else if true then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if d46 then x75 else d46 ) ) ) $ ( if false then true else true )
        d76 : if true then if false then Bool else Bool else if true then Bool else Bool
        d76 = if if d34 then d12 else false then if d44 then d38 else d56 else if d52 then false else d34
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if true then Bool else x78 ) ) ) $ ( if true then Bool else Bool )
        d77 = if if true then d72 else d16 then if true then false else d66 else if d16 then true else d67
        d79 : if true then if true then Bool else Bool else if false then Bool else Bool
        d79 = if if true then d56 else false then if true then d56 else true else if true then false else d73
        d80 : if false then if false then Bool else Bool else if true then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> ( ( Bool -> Bool ) ∋ ( ( λ x82 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d83 : if true then if false then Bool else Bool else if true then Bool else Bool
        d83 = if if d29 then d3 else true then if true then true else false else if d44 then d46 else false
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d84 = if if false then d73 else d12 then if true then d74 else true else if true then d44 else d45
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if false then Bool else x88 ) ) ) $ ( if true then Bool else Bool )
        d87 = if if true then true else d66 then if d53 then false else false else if false then false else false
        d89 : ( ( Set -> Set ) ∋ ( ( λ x92 -> ( ( Set -> Set ) ∋ ( ( λ x93 -> x93 ) ) ) $ ( x92 ) ) ) ) $ ( if false then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> x91 ) ) ) $ ( x90 ) ) ) ) $ ( if d22 then false else d74 )
        d94 : if false then if false then Bool else Bool else if false then Bool else Bool
        d94 = if if d69 then d39 else d52 then if d48 then d53 else true else if d26 then d53 else true
        d95 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if true then x97 else Bool ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if d66 then x96 else x96 ) ) ) $ ( if true then d80 else true )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x101 -> ( ( Set -> Set ) ∋ ( ( λ x102 -> x102 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( d18 ) ) ) ) $ ( if d72 then false else true )
        d103 : if false then if true then Bool else Bool else if false then Bool else Bool
        d103 = if if true then true else d76 then if false then d72 else d89 else if d64 then d48 else d89
        d104 : if true then if false then Bool else Bool else if true then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> if x105 then false else x105 ) ) ) $ ( if d16 then d49 else false )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if true then x108 else Bool ) ) ) $ ( if true then Bool else Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> if d67 then d73 else false ) ) ) $ ( if true then d95 else d83 )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x111 -> d69 ) ) ) $ ( x110 ) ) ) ) $ ( if d84 then d76 else d38 )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if true then Bool else x116 ) ) ) $ ( if true then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if true then false else true ) ) ) $ ( if d52 then true else d72 )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> x119 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d117 = if if true then d84 else d56 then if false then true else d52 else if d98 then true else true
        d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> if true then x121 else x121 ) ) ) $ ( if true then Bool else Bool )
        d120 = if if d106 then d56 else false then if true then false else true else if false then true else true
        d122 : if false then if false then Bool else Bool else if false then Bool else Bool
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> false ) ) ) $ ( x123 ) ) ) ) $ ( if d83 then d53 else d12 )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> Bool ) ) ) $ ( x127 ) ) ) ) $ ( if false then Bool else Bool )
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> if x126 then false else true ) ) ) $ ( if d29 then false else false )