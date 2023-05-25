module Decl50Base2  where
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
        d1 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> if true then x2 else x2 ) ) ) $ ( if false then false else false )
        d3 : if true then if false then Bool else Bool else if false then Bool else Bool
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> ( ( Bool -> Bool ) ∋ ( ( λ x5 -> x4 ) ) ) $ ( d1 ) ) ) ) $ ( if false then d1 else d1 )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x8 -> ( ( Set -> Set ) ∋ ( ( λ x9 -> x8 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if d1 then true else false ) ) ) $ ( if false then d1 else false )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x13 -> if false then Bool else x13 ) ) ) $ ( if true then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> false ) ) ) $ ( x11 ) ) ) ) $ ( if d3 then d6 else false )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if d1 then d1 else true ) ) ) $ ( if d1 then d3 else true )
        d18 : if true then if false then Bool else Bool else if true then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> x19 ) ) ) $ ( x19 ) ) ) ) $ ( if true then d14 else true )
        d21 : if false then if false then Bool else Bool else if false then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if false then Bool else x25 ) ) ) $ ( if true then Bool else Bool )
        d24 = if if true then d6 else true then if false then d21 else d6 else if true then false else false
        d26 : if true then if true then Bool else Bool else if false then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> x28 ) ) ) $ ( x27 ) ) ) ) $ ( if true then d3 else d1 )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if true then x32 else Bool ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> false ) ) ) $ ( x30 ) ) ) ) $ ( if true then d26 else true )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if false then x35 else x35 ) ) ) $ ( if true then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if x34 then false else d29 ) ) ) $ ( if d1 then false else false )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> x39 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> d21 ) ) ) $ ( d10 ) ) ) ) $ ( if d1 then false else d26 )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if true then x44 else x44 ) ) ) $ ( if true then Bool else Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> x42 ) ) ) $ ( true ) ) ) ) $ ( if false then d1 else d18 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if false then x47 else x47 ) ) ) $ ( if true then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if d26 then x46 else d6 ) ) ) $ ( if true then d18 else d41 )
        d48 : if true then if false then Bool else Bool else if false then Bool else Bool
        d48 = if if d33 then d21 else true then if false then d41 else false else if d36 then d1 else false
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x51 -> x50 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d49 = if if d29 then d10 else true then if true then d33 else true else if true then d14 else true
        d52 : if true then if false then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if x53 then x53 else d6 ) ) ) $ ( if true then d45 else true )
        d54 : if false then if true then Bool else Bool else if false then Bool else Bool
        d54 = if if false then true else d6 then if d36 then d26 else true else if d6 then true else d14
        d55 : if true then if false then Bool else Bool else if true then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if x56 then true else false ) ) ) $ ( if false then false else true )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> Bool ) ) ) $ ( x58 ) ) ) ) $ ( if false then Bool else Bool )
        d57 = if if true then d55 else d55 then if true then d1 else true else if true then d21 else true
        d60 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if true then x63 else Bool ) ) ) $ ( if false then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> x61 ) ) ) $ ( x61 ) ) ) ) $ ( if d24 then d21 else true )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x66 -> if true then Bool else x66 ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if x65 then x65 else x65 ) ) ) $ ( if true then false else d18 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if true then Bool else x68 ) ) ) $ ( if true then Bool else Bool )
        d67 = if if true then d52 else d6 then if d1 then d10 else true else if true then d48 else true
        d69 : if false then if false then Bool else Bool else if false then Bool else Bool
        d69 = if if true then false else d10 then if true then d49 else d36 else if d29 then false else d29
        d70 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if true then Bool else x71 ) ) ) $ ( if true then Bool else Bool )
        d70 = if if d21 then d29 else false then if false then false else d3 else if d21 then false else true
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> Bool ) ) ) $ ( x73 ) ) ) ) $ ( if false then Bool else Bool )
        d72 = if if false then true else true then if false then d10 else true else if d48 then true else d57
        d75 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if true then x77 else x77 ) ) ) $ ( if true then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if false then false else d57 ) ) ) $ ( if true then false else d24 )
        d78 : if true then if true then Bool else Bool else if true then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> false ) ) ) $ ( d3 ) ) ) ) $ ( if false then false else d64 )
        d81 : if false then if false then Bool else Bool else if true then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> d45 ) ) ) $ ( x82 ) ) ) ) $ ( if false then d6 else false )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> x88 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> false ) ) ) $ ( x85 ) ) ) ) $ ( if false then true else true )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if false then x91 else x91 ) ) ) $ ( if false then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if d14 then x90 else d49 ) ) ) $ ( if false then false else d10 )
        d92 : if true then if true then Bool else Bool else if false then Bool else Bool
        d92 = if if d6 then d29 else true then if d26 then d45 else false else if d26 then false else true
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> Bool ) ) ) $ ( x94 ) ) ) ) $ ( if false then Bool else Bool )
        d93 = if if true then false else true then if false then true else d41 else if true then d67 else true
        d96 : if true then if false then Bool else Bool else if true then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if true then d24 else true ) ) ) $ ( if false then true else d67 )
        d98 : if false then if false then Bool else Bool else if false then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if x99 then true else x99 ) ) ) $ ( if d81 then false else false )
        d100 : if false then if false then Bool else Bool else if true then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> x102 ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if true then x105 else x105 ) ) ) $ ( if false then Bool else Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if false then d75 else d48 ) ) ) $ ( if false then d54 else d75 )
        d106 : if true then if false then Bool else Bool else if true then Bool else Bool
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> if false then d49 else true ) ) ) $ ( if false then d98 else false )
        d108 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> x112 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> x109 ) ) ) $ ( false ) ) ) ) $ ( if true then d100 else d67 )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if true then x114 else Bool ) ) ) $ ( if false then Bool else Bool )
        d113 = if if false then false else d75 then if d21 then d70 else false else if true then false else false
        d115 : if true then if true then Bool else Bool else if false then Bool else Bool
        d115 = if if d67 then true else false then if false then false else false else if d1 then false else true
        d116 : if false then if true then Bool else Bool else if false then Bool else Bool
        d116 = if if false then d10 else false then if d6 then d70 else true else if false then true else true
        d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> Bool ) ) ) $ ( x118 ) ) ) ) $ ( if true then Bool else Bool )
        d117 = if if true then d55 else d26 then if false then true else true else if true then false else true
        d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> Bool ) ) ) $ ( x121 ) ) ) ) $ ( if true then Bool else Bool )
        d120 = if if true then false else true then if false then d48 else true else if d70 then d75 else false
        d123 : ( ( Set -> Set ) ∋ ( ( λ x126 -> if false then x126 else x126 ) ) ) $ ( if true then Bool else Bool )
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( Bool -> Bool ) ∋ ( ( λ x125 -> true ) ) ) $ ( d55 ) ) ) ) $ ( if d36 then false else false )
        d127 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if true then x130 else Bool ) ) ) $ ( if false then Bool else Bool )
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> ( ( Bool -> Bool ) ∋ ( ( λ x129 -> x129 ) ) ) $ ( d103 ) ) ) ) $ ( if true then true else d29 )
        d131 : if false then if true then Bool else Bool else if false then Bool else Bool
        d131 = ( ( Bool -> Bool ) ∋ ( ( λ x132 -> ( ( Bool -> Bool ) ∋ ( ( λ x133 -> d84 ) ) ) $ ( false ) ) ) ) $ ( if d106 then true else d98 )
        d134 : ( ( Set -> Set ) ∋ ( ( λ x136 -> if true then x136 else x136 ) ) ) $ ( if false then Bool else Bool )
        d134 = ( ( Bool -> Bool ) ∋ ( ( λ x135 -> if x135 then false else x135 ) ) ) $ ( if true then true else d113 )
        d137 : if false then if true then Bool else Bool else if false then Bool else Bool
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> if false then false else false ) ) ) $ ( if d60 then d36 else false )
        d139 : if false then if true then Bool else Bool else if true then Bool else Bool
        d139 = if if d72 then d54 else false then if false then true else true else if d81 then d1 else true