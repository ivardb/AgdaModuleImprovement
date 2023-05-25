module Decl50Base8  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then x2 else x2 ) ) ) $ ( if false then Bool else Bool )
        d1 = if if false then true else false then if true then false else false else if true then true else false
        d3 : if true then if true then Bool else Bool else if true then Bool else Bool
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> if x4 then d1 else true ) ) ) $ ( if true then true else d1 )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> Bool ) ) ) $ ( x7 ) ) ) ) $ ( if true then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if x6 then d1 else false ) ) ) $ ( if true then d3 else d3 )
        d9 : if true then if true then Bool else Bool else if true then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> x11 ) ) ) $ ( x10 ) ) ) ) $ ( if d1 then d3 else false )
        d12 : if false then if false then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> true ) ) ) $ ( x13 ) ) ) ) $ ( if d9 then false else d3 )
        d15 : if false then if true then Bool else Bool else if false then Bool else Bool
        d15 = if if true then true else true then if d12 then d12 else d9 else if false then true else true
        d16 : if true then if true then Bool else Bool else if false then Bool else Bool
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if d9 then false else d12 ) ) ) $ ( if d12 then d9 else false )
        d18 : if false then if true then Bool else Bool else if false then Bool else Bool
        d18 = if if d5 then d16 else d15 then if d5 then d16 else true else if true then false else false
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then x20 else x20 ) ) ) $ ( if true then Bool else Bool )
        d19 = if if true then d9 else true then if true then d9 else d9 else if d5 then true else false
        d21 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> x23 ) ) ) $ ( d9 ) ) ) ) $ ( if true then true else true )
        d25 : if false then if true then Bool else Bool else if true then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if d21 then d1 else d5 ) ) ) $ ( if false then d1 else d1 )
        d27 : if false then if false then Bool else Bool else if true then Bool else Bool
        d27 = if if true then true else d15 then if d19 then d1 else d25 else if d9 then true else d3
        d28 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> Bool ) ) ) $ ( x31 ) ) ) ) $ ( if true then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( d12 ) ) ) ) $ ( if d27 then d1 else d5 )
        d33 : if true then if false then Bool else Bool else if false then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if true then x34 else d27 ) ) ) $ ( if false then d9 else false )
        d35 : if true then if true then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> d21 ) ) ) $ ( true ) ) ) ) $ ( if d27 then true else d12 )
        d38 : if false then if true then Bool else Bool else if false then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( ( Bool -> Bool ) ∋ ( ( λ x40 -> d3 ) ) ) $ ( x39 ) ) ) ) $ ( if false then true else false )
        d41 : if false then if true then Bool else Bool else if true then Bool else Bool
        d41 = if if true then d33 else d21 then if d19 then d16 else true else if true then d3 else d35
        d42 : ( ( Set -> Set ) ∋ ( ( λ x45 -> ( ( Set -> Set ) ∋ ( ( λ x46 -> Bool ) ) ) $ ( x45 ) ) ) ) $ ( if false then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> d35 ) ) ) $ ( x43 ) ) ) ) $ ( if true then false else false )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> if false then Bool else x48 ) ) ) $ ( if true then Bool else Bool )
        d47 = if if d5 then d41 else true then if d33 then true else d25 else if d12 then true else d3
        d49 : if true then if false then Bool else Bool else if false then Bool else Bool
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if x50 then true else false ) ) ) $ ( if false then d28 else d19 )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> x52 ) ) ) $ ( x52 ) ) ) ) $ ( if true then Bool else Bool )
        d51 = if if d41 then true else false then if false then false else false else if d41 then false else true
        d54 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> x57 ) ) ) $ ( x56 ) ) ) ) $ ( if true then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> if d15 then d42 else d12 ) ) ) $ ( if false then d47 else d35 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if true then x60 else x60 ) ) ) $ ( if false then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if true then d25 else true ) ) ) $ ( if false then d28 else d38 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if false then x62 else x62 ) ) ) $ ( if true then Bool else Bool )
        d61 = if if false then d51 else d18 then if true then true else d19 else if d1 then true else d33
        d63 : ( ( Set -> Set ) ∋ ( ( λ x65 -> ( ( Set -> Set ) ∋ ( ( λ x66 -> Bool ) ) ) $ ( x65 ) ) ) ) $ ( if true then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> if d51 then x64 else x64 ) ) ) $ ( if false then d16 else true )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d67 = if if true then d28 else d27 then if true then d16 else d21 else if d3 then false else false
        d69 : if false then if false then Bool else Bool else if true then Bool else Bool
        d69 = if if true then true else d35 then if d61 then d16 else false else if d5 then true else false
        d70 : if false then if true then Bool else Bool else if false then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> if true then true else true ) ) ) $ ( if false then d58 else true )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> ( ( Bool -> Bool ) ∋ ( ( λ x74 -> x74 ) ) ) $ ( d3 ) ) ) ) $ ( if d67 then true else d35 )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> Bool ) ) ) $ ( x80 ) ) ) ) $ ( if false then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> d33 ) ) ) $ ( x78 ) ) ) ) $ ( if d51 then d47 else d67 )
        d82 : if false then if true then Bool else Bool else if true then Bool else Bool
        d82 = if if true then d63 else d54 then if true then d47 else false else if true then false else d63
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if true then x84 else Bool ) ) ) $ ( if false then Bool else Bool )
        d83 = if if d16 then false else true then if false then d5 else d70 else if d33 then false else d3
        d85 : if true then if true then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> true ) ) ) $ ( true ) ) ) ) $ ( if d67 then d25 else d54 )
        d88 : if false then if false then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> x89 ) ) ) $ ( false ) ) ) ) $ ( if d5 then d16 else true )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> ( ( Set -> Set ) ∋ ( ( λ x93 -> Bool ) ) ) $ ( x92 ) ) ) ) $ ( if true then Bool else Bool )
        d91 = if if d15 then true else false then if d49 then d35 else d33 else if false then true else false
        d94 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if true then x97 else Bool ) ) ) $ ( if false then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> d16 ) ) ) $ ( x95 ) ) ) ) $ ( if d77 then true else d25 )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> x100 ) ) ) $ ( x100 ) ) ) ) $ ( if true then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if d82 then d38 else false ) ) ) $ ( if d47 then d70 else true )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> x104 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d102 = if if false then d51 else d33 then if d21 then false else false else if false then true else false
        d105 : if true then if true then Bool else Bool else if true then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( Bool -> Bool ) ∋ ( ( λ x107 -> d69 ) ) ) $ ( x106 ) ) ) ) $ ( if d38 then d94 else d3 )
        d108 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> if x109 then x109 else x109 ) ) ) $ ( if true then true else false )
        d112 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> x114 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> if d51 then d33 else d27 ) ) ) $ ( if d72 then d21 else false )
        d116 : if false then if true then Bool else Bool else if false then Bool else Bool
        d116 = if if false then false else true then if true then d82 else d33 else if d112 then d3 else d18
        d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> Bool ) ) ) $ ( x118 ) ) ) ) $ ( if true then Bool else Bool )
        d117 = if if true then true else true then if d91 then true else d18 else if false then false else d98
        d120 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if true then x122 else Bool ) ) ) $ ( if true then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if true then x121 else d47 ) ) ) $ ( if false then d83 else d83 )
        d123 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if false then x125 else Bool ) ) ) $ ( if true then Bool else Bool )
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> if d105 then x124 else d47 ) ) ) $ ( if d85 then true else d91 )
        d126 : if true then if true then Bool else Bool else if false then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if x127 then d58 else d116 ) ) ) $ ( if d70 then true else d112 )
        d128 : ( ( Set -> Set ) ∋ ( ( λ x131 -> ( ( Set -> Set ) ∋ ( ( λ x132 -> x131 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> ( ( Bool -> Bool ) ∋ ( ( λ x130 -> false ) ) ) $ ( x129 ) ) ) ) $ ( if d85 then d27 else d41 )
        d133 : ( ( Set -> Set ) ∋ ( ( λ x136 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> ( ( Bool -> Bool ) ∋ ( ( λ x135 -> x135 ) ) ) $ ( true ) ) ) ) $ ( if false then d102 else false )
        d137 : if true then if true then Bool else Bool else if true then Bool else Bool
        d137 = if if d19 then false else d117 then if d5 then d42 else true else if true then false else false
        d138 : ( ( Set -> Set ) ∋ ( ( λ x141 -> ( ( Set -> Set ) ∋ ( ( λ x142 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> ( ( Bool -> Bool ) ∋ ( ( λ x140 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )