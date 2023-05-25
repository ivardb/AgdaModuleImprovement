module Decl50Base13  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x3 -> ( ( Set -> Set ) ∋ ( ( λ x4 -> x3 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> if true then x2 else false ) ) ) $ ( if true then false else false )
        d5 : if true then if true then Bool else Bool else if false then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> x7 ) ) ) $ ( false ) ) ) ) $ ( if d1 then d1 else false )
        d8 : if true then if true then Bool else Bool else if false then Bool else Bool
        d8 = if if d1 then false else false then if true then d1 else false else if d5 then d5 else d1
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> x10 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d9 = if if false then d5 else d5 then if d1 then true else d8 else if true then d1 else d5
        d12 : if false then if false then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> x14 ) ) ) $ ( true ) ) ) ) $ ( if true then d5 else false )
        d15 : if true then if true then Bool else Bool else if true then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> true ) ) ) $ ( x16 ) ) ) ) $ ( if true then d8 else d1 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if false then x19 else x19 ) ) ) $ ( if false then Bool else Bool )
        d18 = if if d12 then d15 else false then if d5 then false else false else if d15 then false else d12
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if true then x21 else Bool ) ) ) $ ( if true then Bool else Bool )
        d20 = if if false then true else d1 then if d8 then true else false else if d8 then true else false
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if false then x23 else Bool ) ) ) $ ( if false then Bool else Bool )
        d22 = if if true then true else false then if d1 then false else d1 else if d8 then d15 else false
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> x26 ) ) ) $ ( x25 ) ) ) ) $ ( if false then Bool else Bool )
        d24 = if if false then false else true then if false then false else d12 else if d12 then false else true
        d27 : if true then if false then Bool else Bool else if true then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> false ) ) ) $ ( x28 ) ) ) ) $ ( if d9 then false else true )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d30 = if if true then false else false then if false then d18 else d1 else if true then false else false
        d32 : if false then if false then Bool else Bool else if false then Bool else Bool
        d32 = if if d9 then false else d15 then if d22 then d20 else d15 else if d5 then false else d20
        d33 : if true then if true then Bool else Bool else if false then Bool else Bool
        d33 = if if false then true else d20 then if true then d1 else d18 else if false then d9 else true
        d34 : if false then if false then Bool else Bool else if true then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> x36 ) ) ) $ ( false ) ) ) ) $ ( if d22 then true else d15 )
        d37 : if true then if true then Bool else Bool else if false then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if x38 then x38 else false ) ) ) $ ( if true then true else false )
        d39 : if true then if true then Bool else Bool else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if d30 then false else true ) ) ) $ ( if false then d18 else true )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> x43 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d41 = if if false then false else false then if d1 then d32 else true else if d27 then true else false
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if false then Bool else x45 ) ) ) $ ( if true then Bool else Bool )
        d44 = if if d20 then true else d12 then if false then d34 else false else if d37 then d12 else true
        d46 : if false then if false then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if true then false else x47 ) ) ) $ ( if false then d32 else d1 )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if false then x50 else Bool ) ) ) $ ( if false then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if d44 then x49 else true ) ) ) $ ( if true then d18 else d9 )
        d51 : if true then if false then Bool else Bool else if false then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> d34 ) ) ) $ ( x52 ) ) ) ) $ ( if false then true else true )
        d54 : if true then if true then Bool else Bool else if true then Bool else Bool
        d54 = if if true then d24 else d9 then if d9 then false else d15 else if d46 then true else d48
        d55 : if false then if true then Bool else Bool else if true then Bool else Bool
        d55 = if if d41 then false else false then if false then true else false else if d27 then d34 else d20
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if false then Bool else x57 ) ) ) $ ( if false then Bool else Bool )
        d56 = if if true then false else true then if d8 then true else d39 else if false then false else false
        d58 : if false then if false then Bool else Bool else if true then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if x59 then x59 else true ) ) ) $ ( if d44 then false else d9 )
        d60 : if true then if false then Bool else Bool else if false then Bool else Bool
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if d27 then false else d32 ) ) ) $ ( if false then d55 else true )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if false then Bool else x63 ) ) ) $ ( if false then Bool else Bool )
        d62 = if if d39 then d56 else d46 then if d27 then false else d44 else if true then false else d39
        d64 : ( ( Set -> Set ) ∋ ( ( λ x65 -> ( ( Set -> Set ) ∋ ( ( λ x66 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d64 = if if d60 then d48 else d62 then if d41 then true else false else if d20 then false else true
        d67 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( x69 ) ) ) ) $ ( if false then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if x68 then x68 else true ) ) ) $ ( if d5 then true else d33 )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> false ) ) ) $ ( false ) ) ) ) $ ( if d37 then d62 else true )
        d75 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> Bool ) ) ) $ ( x77 ) ) ) ) $ ( if true then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if d1 then x76 else d55 ) ) ) $ ( if d24 then d5 else true )
        d79 : if true then if false then Bool else Bool else if true then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if false then d18 else true ) ) ) $ ( if d55 then d48 else d55 )
        d81 : if true then if false then Bool else Bool else if false then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> true ) ) ) $ ( x82 ) ) ) ) $ ( if true then true else true )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if false then x85 else x85 ) ) ) $ ( if d60 then d37 else false )
        d88 : if true then if false then Bool else Bool else if false then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if d32 then d18 else false ) ) ) $ ( if false then d33 else d12 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if d48 then false else false ) ) ) $ ( if true then d30 else true )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x96 -> if true then x96 else x96 ) ) ) $ ( if false then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> false ) ) ) $ ( x94 ) ) ) ) $ ( if d44 then d44 else true )
        d97 : if true then if false then Bool else Bool else if false then Bool else Bool
        d97 = if if d84 then true else d54 then if true then d48 else d64 else if d8 then false else false
        d98 : if true then if true then Bool else Bool else if true then Bool else Bool
        d98 = if if true then false else true then if false then d56 else false else if false then false else true
        d99 : if true then if false then Bool else Bool else if false then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> d44 ) ) ) $ ( true ) ) ) ) $ ( if false then d55 else true )
        d102 : if false then if false then Bool else Bool else if true then Bool else Bool
        d102 = if if d98 then d97 else d98 then if d9 then d60 else d88 else if false then d39 else d56
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d103 = if if true then false else d32 then if true then false else false else if d98 then d24 else d24
        d106 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( Bool -> Bool ) ∋ ( ( λ x108 -> d41 ) ) ) $ ( true ) ) ) ) $ ( if d54 then true else false )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> Bool ) ) ) $ ( x112 ) ) ) ) $ ( if true then Bool else Bool )
        d111 = if if false then true else true then if d15 then true else d27 else if d88 then d90 else false
        d114 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if x115 then true else x115 ) ) ) $ ( if d34 then d24 else false )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if false then x120 else Bool ) ) ) $ ( if false then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> if true then false else d90 ) ) ) $ ( if false then d114 else true )
        d121 : ( ( Set -> Set ) ∋ ( ( λ x124 -> if true then Bool else x124 ) ) ) $ ( if false then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( ( Bool -> Bool ) ∋ ( ( λ x123 -> false ) ) ) $ ( true ) ) ) ) $ ( if d34 then d15 else d12 )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x126 -> if false then x126 else Bool ) ) ) $ ( if false then Bool else Bool )
        d125 = if if false then true else true then if d64 then d24 else d97 else if d41 then true else d56
        d127 : if true then if false then Bool else Bool else if false then Bool else Bool
        d127 = if if false then d56 else d34 then if true then true else true else if d97 then d55 else d54