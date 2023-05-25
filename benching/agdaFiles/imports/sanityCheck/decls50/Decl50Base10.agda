module Decl50Base10  where
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
        d1 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1 = if if true then false else false then if false then false else false else if false then true else false
        d2 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> Bool ) ) ) $ ( x4 ) ) ) ) $ ( if false then Bool else Bool )
        d2 = ( ( Bool -> Bool ) ∋ ( ( λ x3 -> if x3 then d1 else x3 ) ) ) $ ( if true then d1 else d1 )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x8 -> ( ( Set -> Set ) ∋ ( ( λ x9 -> x9 ) ) ) $ ( x8 ) ) ) ) $ ( if true then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if true then x7 else false ) ) ) $ ( if false then false else true )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> x11 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d10 = if if true then false else true then if d6 then true else d6 else if false then d2 else false
        d13 : if true then if false then Bool else Bool else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if true then d1 else false ) ) ) $ ( if d2 then d10 else true )
        d15 : if true then if false then Bool else Bool else if true then Bool else Bool
        d15 = if if true then d2 else d1 then if d13 then d13 else d1 else if d10 then false else false
        d16 : if false then if true then Bool else Bool else if false then Bool else Bool
        d16 = if if true then true else d13 then if d10 then true else d13 else if d10 then d2 else d1
        d17 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if false then x19 else x19 ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if x18 then true else x18 ) ) ) $ ( if d16 then d10 else d1 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if false then x22 else x22 ) ) ) $ ( if true then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if d2 then false else x21 ) ) ) $ ( if true then false else false )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if true then x24 else Bool ) ) ) $ ( if true then Bool else Bool )
        d23 = if if d2 then d15 else d13 then if false then d6 else false else if false then false else d13
        d25 : if true then if false then Bool else Bool else if true then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if x26 then d10 else false ) ) ) $ ( if true then true else d23 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d27 = if if true then false else d13 then if d20 then true else true else if d6 then d15 else d10
        d30 : if false then if false then Bool else Bool else if true then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if d16 then d16 else x31 ) ) ) $ ( if d13 then false else false )
        d32 : if true then if false then Bool else Bool else if true then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if false then x33 else x33 ) ) ) $ ( if false then d30 else true )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d34 = if if true then true else d23 then if true then false else false else if d16 then true else d17
        d36 : if true then if true then Bool else Bool else if false then Bool else Bool
        d36 = if if false then d20 else d20 then if d20 then d1 else true else if d1 then d20 else d32
        d37 : if false then if false then Bool else Bool else if false then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> x38 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d10 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if true then Bool else x43 ) ) ) $ ( if true then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> true ) ) ) $ ( true ) ) ) ) $ ( if d30 then true else d32 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if false then x47 else Bool ) ) ) $ ( if true then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> true ) ) ) $ ( false ) ) ) ) $ ( if d23 then false else false )
        d48 : if true then if false then Bool else Bool else if false then Bool else Bool
        d48 = if if d17 then false else true then if false then true else d20 else if true then d34 else true
        d49 : if false then if true then Bool else Bool else if true then Bool else Bool
        d49 = if if true then false else d37 then if true then false else true else if true then d1 else true
        d50 : if false then if false then Bool else Bool else if false then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if true then d20 else d27 ) ) ) $ ( if false then false else d16 )
        d52 : if true then if false then Bool else Bool else if false then Bool else Bool
        d52 = if if false then d49 else d34 then if d10 then true else d10 else if d44 then d2 else d27
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if false then Bool else x54 ) ) ) $ ( if true then Bool else Bool )
        d53 = if if d52 then d52 else d32 then if true then d2 else true else if false then d32 else false
        d55 : if false then if false then Bool else Bool else if false then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if false then d36 else x56 ) ) ) $ ( if false then d15 else true )
        d57 : if false then if true then Bool else Bool else if false then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if d34 then d48 else true ) ) ) $ ( if false then false else d17 )
        d59 : if true then if true then Bool else Bool else if true then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> x60 ) ) ) $ ( false ) ) ) ) $ ( if d27 then false else d50 )
        d62 : if true then if true then Bool else Bool else if true then Bool else Bool
        d62 = if if false then true else false then if d32 then d25 else d2 else if d13 then true else true
        d63 : ( ( Set -> Set ) ∋ ( ( λ x66 -> if true then x66 else x66 ) ) ) $ ( if true then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> false ) ) ) $ ( true ) ) ) ) $ ( if d10 then true else false )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if true then x68 else Bool ) ) ) $ ( if false then Bool else Bool )
        d67 = if if d49 then false else false then if true then d62 else true else if d16 then false else false
        d69 : if true then if true then Bool else Bool else if true then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if d23 then x70 else d17 ) ) ) $ ( if false then true else true )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> false ) ) ) $ ( false ) ) ) ) $ ( if d10 then d57 else d63 )
        d76 : if false then if false then Bool else Bool else if false then Bool else Bool
        d76 = if if d17 then d17 else false then if d52 then false else d53 else if d20 then true else d27
        d77 : if true then if true then Bool else Bool else if false then Bool else Bool
        d77 = if if d62 then d63 else true then if d63 then false else d59 else if false then d20 else false
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if true then Bool else x79 ) ) ) $ ( if true then Bool else Bool )
        d78 = if if d13 then true else d59 then if d67 then d44 else d69 else if true then true else false
        d80 : if false then if true then Bool else Bool else if true then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> ( ( Bool -> Bool ) ∋ ( ( λ x82 -> x82 ) ) ) $ ( d30 ) ) ) ) $ ( if d77 then true else d1 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> x85 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if x84 then d44 else d52 ) ) ) $ ( if true then true else true )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> x90 ) ) ) $ ( x90 ) ) ) ) $ ( if true then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> d32 ) ) ) $ ( false ) ) ) ) $ ( if d52 then d80 else false )
        d92 : if true then if false then Bool else Bool else if false then Bool else Bool
        d92 = if if d67 then true else d69 then if false then d50 else d48 else if d50 then d76 else d76
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> x95 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d93 = if if false then true else true then if d32 then false else d50 else if d44 then true else false
        d96 : if true then if true then Bool else Bool else if false then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> false ) ) ) $ ( d53 ) ) ) ) $ ( if d69 then false else true )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d99 = if if d49 then true else false then if true then d16 else d17 else if d27 then true else d40
        d102 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if true then x104 else x104 ) ) ) $ ( if false then Bool else Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if x103 then false else x103 ) ) ) $ ( if false then d6 else d80 )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d105 = if if true then d23 else d10 then if false then true else d13 else if true then d83 else false
        d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> x109 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d108 = if if true then d15 else false then if true then false else true else if d25 then false else true
        d111 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> Bool ) ) ) $ ( x114 ) ) ) ) $ ( if false then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> d34 ) ) ) $ ( x112 ) ) ) ) $ ( if d62 then false else false )
        d116 : if false then if true then Bool else Bool else if false then Bool else Bool
        d116 = if if true then d69 else d27 then if true then true else d2 else if d99 then d1 else true
        d117 : if false then if false then Bool else Bool else if false then Bool else Bool
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( Bool -> Bool ) ∋ ( ( λ x119 -> true ) ) ) $ ( false ) ) ) ) $ ( if d77 then true else d44 )
        d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> x121 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d120 = if if false then d93 else true then if true then true else true else if d76 then true else true
        d123 : ( ( Set -> Set ) ∋ ( ( λ x126 -> ( ( Set -> Set ) ∋ ( ( λ x127 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( Bool -> Bool ) ∋ ( ( λ x125 -> true ) ) ) $ ( x124 ) ) ) ) $ ( if false then d117 else false )