module Decl50Base15  where
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
        d1 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> x2 ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d4 : if true then if true then Bool else Bool else if false then Bool else Bool
        d4 = if if false then true else d1 then if true then d1 else d1 else if false then d1 else d1
        d5 : if false then if false then Bool else Bool else if true then Bool else Bool
        d5 = if if false then true else true then if true then false else d4 else if true then d1 else false
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> x8 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d6 = if if true then d1 else d4 then if d1 then d1 else true else if d4 then false else d4
        d9 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if true then Bool else x12 ) ) ) $ ( if true then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> false ) ) ) $ ( d1 ) ) ) ) $ ( if false then d1 else d1 )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> ( ( Set -> Set ) ∋ ( ( λ x15 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d13 = if if d4 then d9 else false then if d4 then d9 else d9 else if d1 then d6 else true
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> if false then x17 else Bool ) ) ) $ ( if false then Bool else Bool )
        d16 = if if false then d6 else true then if d1 then false else false else if d13 then d9 else true
        d18 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if d1 then true else d6 ) ) ) $ ( if false then d13 else true )
        d21 : if true then if false then Bool else Bool else if true then Bool else Bool
        d21 = if if false then true else d9 then if d5 then d4 else true else if d1 then d4 else false
        d22 : if true then if false then Bool else Bool else if false then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> x23 ) ) ) $ ( d6 ) ) ) ) $ ( if false then d1 else true )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> false ) ) ) $ ( x26 ) ) ) ) $ ( if d18 then false else true )
        d30 : if false then if false then Bool else Bool else if false then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> true ) ) ) $ ( x31 ) ) ) ) $ ( if d1 then d9 else d1 )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> x37 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> x34 ) ) ) $ ( x34 ) ) ) ) $ ( if true then d22 else false )
        d38 : if true then if true then Bool else Bool else if true then Bool else Bool
        d38 = if if d9 then false else false then if d1 then false else d4 else if false then d13 else d5
        d39 : if false then if false then Bool else Bool else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> true ) ) ) $ ( false ) ) ) ) $ ( if d38 then d38 else d21 )
        d42 : if true then if false then Bool else Bool else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> d30 ) ) ) $ ( x43 ) ) ) ) $ ( if d39 then d16 else d6 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if false then x47 else x47 ) ) ) $ ( if true then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if x46 then true else d25 ) ) ) $ ( if d39 then false else true )
        d48 : if true then if false then Bool else Bool else if false then Bool else Bool
        d48 = if if d9 then d39 else false then if false then false else d1 else if true then false else d33
        d49 : if true then if true then Bool else Bool else if false then Bool else Bool
        d49 = if if d4 then false else false then if d22 then d9 else d5 else if d18 then d39 else d25
        d50 : ( ( Set -> Set ) ∋ ( ( λ x52 -> if false then x52 else x52 ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if x51 then true else true ) ) ) $ ( if false then d22 else d21 )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if true then x54 else x54 ) ) ) $ ( if true then Bool else Bool )
        d53 = if if false then d48 else d33 then if true then d50 else d6 else if d9 then d42 else true
        d55 : if true then if true then Bool else Bool else if true then Bool else Bool
        d55 = if if true then true else d39 then if d42 then d4 else false else if d33 then false else d33
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if false then Bool else x57 ) ) ) $ ( if true then Bool else Bool )
        d56 = if if true then false else false then if false then false else d1 else if false then false else d42
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( x59 ) ) ) ) $ ( if true then Bool else Bool )
        d58 = if if d49 then false else d33 then if false then false else d21 else if true then true else true
        d61 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> false ) ) ) $ ( d6 ) ) ) ) $ ( if true then d13 else true )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if false then Bool else x67 ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if d33 then d56 else false ) ) ) $ ( if false then true else d18 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d68 = if if d56 then d6 else false then if false then true else d33 else if d38 then true else false
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if false then Bool else x72 ) ) ) $ ( if false then Bool else Bool )
        d71 = if if false then true else d25 then if d65 then true else false else if d56 then d21 else d58
        d73 : if true then if false then Bool else Bool else if false then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> true ) ) ) $ ( false ) ) ) ) $ ( if d49 then true else d56 )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x78 -> ( ( Set -> Set ) ∋ ( ( λ x79 -> Bool ) ) ) $ ( x78 ) ) ) ) $ ( if false then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if d50 then true else d56 ) ) ) $ ( if d22 then d49 else d61 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> ( ( Bool -> Bool ) ∋ ( ( λ x82 -> false ) ) ) $ ( d50 ) ) ) ) $ ( if false then d1 else false )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if x86 then x86 else false ) ) ) $ ( if d38 then true else false )
        d89 : if true then if false then Bool else Bool else if true then Bool else Bool
        d89 = if if true then false else true then if d30 then d6 else d58 else if d16 then true else false
        d90 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> x91 ) ) ) $ ( true ) ) ) ) $ ( if true then d56 else d38 )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> x97 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d95 = if if d21 then true else d16 then if true then d39 else d50 else if d5 then false else d33
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if false then x99 else Bool ) ) ) $ ( if true then Bool else Bool )
        d98 = if if true then false else d21 then if false then true else d58 else if d1 then d56 else false
        d100 : if false then if false then Bool else Bool else if false then Bool else Bool
        d100 = if if d58 then false else true then if true then true else false else if d55 then d71 else d49
        d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if false then x102 else Bool ) ) ) $ ( if false then Bool else Bool )
        d101 = if if d65 then true else true then if true then d90 else d71 else if d68 then d18 else false
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d103 = if if false then true else d56 then if true then d100 else false else if d100 then false else d38
        d106 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> x109 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( Bool -> Bool ) ∋ ( ( λ x108 -> true ) ) ) $ ( x107 ) ) ) ) $ ( if false then d50 else d76 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x113 -> ( ( Set -> Set ) ∋ ( ( λ x114 -> x113 ) ) ) $ ( x113 ) ) ) ) $ ( if false then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> if x112 then x112 else x112 ) ) ) $ ( if d50 then false else d58 )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if true then x118 else Bool ) ) ) $ ( if false then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> true ) ) ) $ ( x116 ) ) ) ) $ ( if d101 then true else d9 )
        d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if true then Bool else x120 ) ) ) $ ( if false then Bool else Bool )
        d119 = if if d13 then false else false then if true then true else false else if d16 then true else d103
        d121 : if false then if true then Bool else Bool else if true then Bool else Bool
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> if d48 then d115 else x122 ) ) ) $ ( if true then false else d25 )
        d123 : if true then if true then Bool else Bool else if false then Bool else Bool
        d123 = if if true then d68 else d49 then if false then d68 else d100 else if false then false else false
        d124 : if true then if true then Bool else Bool else if false then Bool else Bool
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> if true then x125 else true ) ) ) $ ( if d9 then false else false )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if false then x128 else Bool ) ) ) $ ( if false then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if x127 then x127 else x127 ) ) ) $ ( if d65 then d33 else d22 )
        d129 : if true then if true then Bool else Bool else if false then Bool else Bool
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if x130 then false else d126 ) ) ) $ ( if d68 then d5 else d38 )
        d131 : ( ( Set -> Set ) ∋ ( ( λ x134 -> if false then x134 else x134 ) ) ) $ ( if false then Bool else Bool )
        d131 = ( ( Bool -> Bool ) ∋ ( ( λ x132 -> ( ( Bool -> Bool ) ∋ ( ( λ x133 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then d9 else false )
        d135 : ( ( Set -> Set ) ∋ ( ( λ x138 -> ( ( Set -> Set ) ∋ ( ( λ x139 -> x138 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> ( ( Bool -> Bool ) ∋ ( ( λ x137 -> d106 ) ) ) $ ( false ) ) ) ) $ ( if true then d121 else false )