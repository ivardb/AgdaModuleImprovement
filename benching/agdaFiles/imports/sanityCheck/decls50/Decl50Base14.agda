module Decl50Base14  where
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
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> if false then true else x2 ) ) ) $ ( if true then false else true )
        d3 : if true then if true then Bool else Bool else if false then Bool else Bool
        d3 = if if true then false else d1 then if d1 then false else true else if false then false else d1
        d4 : if true then if true then Bool else Bool else if true then Bool else Bool
        d4 = if if false then false else d1 then if d1 then d1 else d3 else if d1 then true else d1
        d5 : if false then if true then Bool else Bool else if true then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> d4 ) ) ) $ ( false ) ) ) ) $ ( if true then false else false )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> x11 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if d1 then x9 else d5 ) ) ) $ ( if d4 then d4 else d1 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> Bool ) ) ) $ ( x15 ) ) ) ) $ ( if true then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> true ) ) ) $ ( d1 ) ) ) ) $ ( if false then true else false )
        d17 : if false then if false then Bool else Bool else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> false ) ) ) $ ( x18 ) ) ) ) $ ( if true then d12 else false )
        d20 : if true then if false then Bool else Bool else if false then Bool else Bool
        d20 = if if d12 then false else true then if d1 then true else false else if false then d12 else d8
        d21 : if true then if true then Bool else Bool else if true then Bool else Bool
        d21 = if if d12 then false else d1 then if false then false else d3 else if d1 then d3 else d5
        d22 : if true then if false then Bool else Bool else if true then Bool else Bool
        d22 = if if false then d21 else d8 then if d8 then d4 else false else if d4 then false else d12
        d23 : if true then if true then Bool else Bool else if false then Bool else Bool
        d23 = if if d3 then d3 else d3 then if d8 then d17 else d5 else if d21 then false else d4
        d24 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> Bool ) ) ) $ ( x26 ) ) ) ) $ ( if false then Bool else Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if d3 then d3 else x25 ) ) ) $ ( if false then true else true )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> Bool ) ) ) $ ( x31 ) ) ) ) $ ( if true then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> false ) ) ) $ ( d21 ) ) ) ) $ ( if d20 then true else true )
        d33 : if true then if false then Bool else Bool else if true then Bool else Bool
        d33 = if if true then false else d8 then if true then d12 else false else if d23 then d8 else false
        d34 : if false then if true then Bool else Bool else if false then Bool else Bool
        d34 = if if true then d3 else d1 then if false then true else d23 else if true then d1 else false
        d35 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if false then x37 else Bool ) ) ) $ ( if true then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if true then d33 else true ) ) ) $ ( if true then false else true )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if true then x39 else x39 ) ) ) $ ( if true then Bool else Bool )
        d38 = if if true then d28 else false then if false then d1 else d34 else if d28 then false else d28
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> ( ( Set -> Set ) ∋ ( ( λ x42 -> Bool ) ) ) $ ( x41 ) ) ) ) $ ( if true then Bool else Bool )
        d40 = if if false then d4 else true then if d20 then true else d8 else if false then false else d21
        d43 : if false then if false then Bool else Bool else if false then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> true ) ) ) $ ( x44 ) ) ) ) $ ( if d8 then false else d23 )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x48 -> if false then Bool else x48 ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if x47 then d38 else x47 ) ) ) $ ( if d3 then d8 else true )
        d49 : if false then if true then Bool else Bool else if false then Bool else Bool
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if false then true else false ) ) ) $ ( if false then true else true )
        d51 : if false then if true then Bool else Bool else if false then Bool else Bool
        d51 = if if false then false else false then if true then true else d40 else if true then d43 else false
        d52 : if true then if true then Bool else Bool else if true then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> x53 ) ) ) $ ( d49 ) ) ) ) $ ( if true then false else d22 )
        d55 : if true then if false then Bool else Bool else if false then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if x56 then false else d38 ) ) ) $ ( if true then true else d23 )
        d57 : if true then if true then Bool else Bool else if false then Bool else Bool
        d57 = if if d21 then d34 else d33 then if true then false else d20 else if d4 then d52 else true
        d58 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if true then x61 else Bool ) ) ) $ ( if true then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> false ) ) ) $ ( d40 ) ) ) ) $ ( if d57 then d51 else d3 )
        d62 : if false then if false then Bool else Bool else if true then Bool else Bool
        d62 = if if d55 then d57 else false then if d21 then true else false else if d1 then true else d46
        d63 : ( ( Set -> Set ) ∋ ( ( λ x66 -> if false then Bool else x66 ) ) ) $ ( if true then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( false ) ) ) ) $ ( if d38 then d35 else d57 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> x69 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d67 = if if false then d63 else d1 then if true then d8 else true else if d33 then d8 else false
        d70 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if true then x71 else x71 ) ) ) $ ( if false then Bool else Bool )
        d70 = if if false then true else d20 then if false then d49 else false else if true then d21 else true
        d72 : if true then if true then Bool else Bool else if false then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> ( ( Bool -> Bool ) ∋ ( ( λ x74 -> x73 ) ) ) $ ( x73 ) ) ) ) $ ( if d8 then d62 else d35 )
        d75 : if false then if false then Bool else Bool else if true then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> d72 ) ) ) $ ( x76 ) ) ) ) $ ( if false then true else d52 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if false then x79 else Bool ) ) ) $ ( if true then Bool else Bool )
        d78 = if if d24 then d24 else d3 then if true then d1 else d38 else if d38 then d17 else false
        d80 : if true then if true then Bool else Bool else if false then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if false then d67 else d24 ) ) ) $ ( if true then false else false )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> x84 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d82 = if if true then d55 else d55 then if false then d62 else true else if d34 then false else true
        d85 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> Bool ) ) ) $ ( x88 ) ) ) ) $ ( if false then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> x86 ) ) ) $ ( d75 ) ) ) ) $ ( if d67 then d58 else d72 )
        d90 : if false then if false then Bool else Bool else if true then Bool else Bool
        d90 = if if true then false else true then if true then d20 else d35 else if true then d21 else true
        d91 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if false then Bool else x93 ) ) ) $ ( if false then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if x92 then true else false ) ) ) $ ( if d90 then d21 else true )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> Bool ) ) ) $ ( x95 ) ) ) ) $ ( if false then Bool else Bool )
        d94 = if if false then false else d43 then if true then true else false else if false then false else d70
        d97 : if false then if false then Bool else Bool else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> x98 ) ) ) $ ( d22 ) ) ) ) $ ( if d85 then true else true )
        d100 : if true then if false then Bool else Bool else if false then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> d20 ) ) ) $ ( d57 ) ) ) ) $ ( if d70 then true else d22 )
        d103 : if false then if true then Bool else Bool else if true then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if x104 then false else true ) ) ) $ ( if false then false else d52 )
        d105 : if false then if true then Bool else Bool else if true then Bool else Bool
        d105 = if if true then true else d97 then if d51 then true else false else if false then true else d62
        d106 : if false then if true then Bool else Bool else if true then Bool else Bool
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> if d62 then d33 else x107 ) ) ) $ ( if false then d58 else d35 )
        d108 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> Bool ) ) ) $ ( x111 ) ) ) ) $ ( if true then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( x109 ) ) ) ) $ ( if false then false else true )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> d38 ) ) ) $ ( x114 ) ) ) ) $ ( if d17 then d38 else d46 )
        d117 : if false then if true then Bool else Bool else if false then Bool else Bool
        d117 = if if d46 then false else false then if d75 then d85 else true else if true then d52 else d52
        d118 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> Bool ) ) ) $ ( x121 ) ) ) ) $ ( if true then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> false ) ) ) $ ( d94 ) ) ) ) $ ( if d22 then true else d58 )
        d123 : if false then if true then Bool else Bool else if true then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( Bool -> Bool ) ∋ ( ( λ x125 -> d28 ) ) ) $ ( d94 ) ) ) ) $ ( if true then d67 else d108 )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d126 = if if true then d5 else true then if d113 then true else false else if true then false else d70