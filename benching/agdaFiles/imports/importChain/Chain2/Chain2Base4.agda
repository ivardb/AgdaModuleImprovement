module Chain2Base4  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then Bool else x2 ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then x4 else Bool ) ) ) $ ( Bool ) )  where
        d5 : if false then if true then Bool else Bool else if true then Bool else Bool
        d5 = if if true then true else p3 then if false then p1 else p1 else if p3 then p3 else true
        d6 : if false then if true then Bool else Bool else if false then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if d5 then x7 else true ) ) ) $ ( if false then false else p1 )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> x10 ) ) ) $ ( x9 ) ) ) ) $ ( if false then Bool else Bool )
        d8 = if if false then p1 else p1 then if true then false else d6 else if d6 then p3 else p1
        d11 : if false then if true then Bool else Bool else if true then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if p3 then true else false ) ) ) $ ( if p3 then false else p3 )
        d13 : if true then if false then Bool else Bool else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if false then d8 else d8 ) ) ) $ ( if true then p3 else d5 )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> if true then Bool else x16 ) ) ) $ ( if false then Bool else Bool )
        d15 = if if d8 then d5 else d5 then if false then d5 else d8 else if p3 then p3 else p1
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> Bool ) ) ) $ ( x18 ) ) ) ) $ ( if true then Bool else Bool )
        d17 = if if p3 then d6 else p3 then if p3 then d6 else d15 else if true then true else p1
        d20 : if false then if true then Bool else Bool else if false then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if d8 then p1 else d6 ) ) ) $ ( if p1 then p3 else false )
        d22 : if false then if false then Bool else Bool else if true then Bool else Bool
        d22 = if if d5 then true else d15 then if d8 then false else p3 else if d17 then p1 else p1
        d23 : if true then if true then Bool else Bool else if false then Bool else Bool
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> if p1 then p1 else d22 ) ) ) $ ( if true then p1 else d17 )
        d25 : if false then if true then Bool else Bool else if true then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> false ) ) ) $ ( x26 ) ) ) ) $ ( if false then p1 else true )
        d28 : if false then if true then Bool else Bool else if false then Bool else Bool
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> d23 ) ) ) $ ( d23 ) ) ) ) $ ( if d15 then d20 else true )
        d31 : if true then if true then Bool else Bool else if true then Bool else Bool
        d31 = if if p3 then d6 else false then if false then p3 else d25 else if p3 then false else p3
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d32 = if if d8 then d31 else p3 then if d25 then d17 else false else if p3 then p3 else false
        d35 : if false then if true then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if d32 then p1 else x36 ) ) ) $ ( if false then d13 else p3 )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if false then Bool else x39 ) ) ) $ ( if false then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if true then d20 else d28 ) ) ) $ ( if true then p3 else p1 )
        d40 : if false then if false then Bool else Bool else if true then Bool else Bool
        d40 = if if true then p1 else d35 then if true then p3 else p3 else if d5 then true else d22
        d41 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> x43 ) ) ) $ ( x42 ) ) ) ) $ ( if true then Bool else Bool )
        d41 = if if d32 then false else p1 then if d37 then p3 else d5 else if true then p1 else p3
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d44 = if if p1 then false else p1 then if p3 then p1 else true else if d15 then p3 else p3
        d46 : if false then if false then Bool else Bool else if false then Bool else Bool
        d46 = if if true then p3 else false then if p1 then p1 else p3 else if false then d23 else false
        d47 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if true then x50 else x50 ) ) ) $ ( if true then Bool else Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> d11 ) ) ) $ ( false ) ) ) ) $ ( if p1 then p3 else d44 )
        d51 : if true then if false then Bool else Bool else if false then Bool else Bool
        d51 = if if true then d6 else d44 then if d23 then p1 else p3 else if p3 then d11 else d32
        d52 : if false then if false then Bool else Bool else if false then Bool else Bool
        d52 = if if p1 then p1 else true then if d23 then true else true else if p3 then false else false
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if true then Bool else x54 ) ) ) $ ( if false then Bool else Bool )
        d53 = if if d52 then true else d52 then if true then p3 else d51 else if d17 then d35 else d13
        d55 : if false then if true then Bool else Bool else if true then Bool else Bool
        d55 = if if true then d8 else p3 then if d46 then d46 else p3 else if true then p1 else false
        d56 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> Bool ) ) ) $ ( x58 ) ) ) ) $ ( if false then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if x57 then x57 else d37 ) ) ) $ ( if false then false else p3 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> Bool ) ) ) $ ( x61 ) ) ) ) $ ( if true then Bool else Bool )
        d60 = if if d20 then d46 else p1 then if p1 then p1 else p1 else if d15 then d15 else p1
        d63 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> Bool ) ) ) $ ( x66 ) ) ) ) $ ( if false then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> p3 ) ) ) $ ( p1 ) ) ) ) $ ( if d25 then d25 else d11 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if false then x69 else Bool ) ) ) $ ( if false then Bool else Bool )
        d68 = if if false then p1 else p1 then if p3 then p3 else false else if true then d63 else d60
        d70 : if true then if false then Bool else Bool else if true then Bool else Bool
        d70 = if if p3 then false else p1 then if d6 then p1 else d55 else if p1 then p1 else d37
        d71 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> x73 ) ) ) $ ( d11 ) ) ) ) $ ( if false then d11 else true )
        d76 : if true then if false then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if true then p3 else true ) ) ) $ ( if true then true else true )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if false then d5 else false ) ) ) $ ( if d44 then false else d76 )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> Bool ) ) ) $ ( x82 ) ) ) ) $ ( if false then Bool else Bool )
        d81 = if if false then p3 else d41 then if p3 then false else p1 else if d22 then p3 else d28
        d84 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if false then x86 else x86 ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if false then p1 else p3 ) ) ) $ ( if false then d41 else true )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if p3 then d5 else d13 ) ) ) $ ( if d25 then true else p1 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d90 = if if p1 then true else d5 then if true then d60 else false else if true then p1 else d25
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d93 = if if p1 then d90 else p1 then if p3 then d84 else d87 else if p3 then d11 else true
        d96 : if true then if true then Bool else Bool else if false then Bool else Bool
        d96 = if if d15 then d17 else d41 then if false then d71 else d44 else if d56 then false else p1
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if true then x98 else x98 ) ) ) $ ( if true then Bool else Bool )
        d97 = if if p1 then d81 else true then if d63 then p1 else true else if false then d37 else d81
        d99 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> d11 ) ) ) $ ( false ) ) ) ) $ ( if d81 then p3 else false )
        d104 : if true then if false then Bool else Bool else if true then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> if true then true else true ) ) ) $ ( if p3 then p3 else d5 )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if true then Bool else x107 ) ) ) $ ( if true then Bool else Bool )
        d106 = if if true then false else p3 then if true then true else p3 else if d53 then false else d97
        d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d108 = if if p3 then p3 else p3 then if p3 then d41 else false else if d47 then false else true
        d111 : ( ( Set -> Set ) ∋ ( ( λ x113 -> ( ( Set -> Set ) ∋ ( ( λ x114 -> Bool ) ) ) $ ( x113 ) ) ) ) $ ( if true then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> if false then p3 else d87 ) ) ) $ ( if true then d56 else false )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> d53 ) ) ) $ ( d31 ) ) ) ) $ ( if d6 then true else d13 )
        d120 : if true then if true then Bool else Bool else if false then Bool else Bool
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if true then true else d96 ) ) ) $ ( if true then p3 else d106 )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> Bool ) ) ) $ ( x124 ) ) ) ) $ ( if false then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> if p1 then x123 else d68 ) ) ) $ ( if true then d15 else p3 )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x129 -> if false then x129 else Bool ) ) ) $ ( if true then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( ( Bool -> Bool ) ∋ ( ( λ x128 -> x128 ) ) ) $ ( false ) ) ) ) $ ( if p1 then false else true )
        d130 : if false then if false then Bool else Bool else if false then Bool else Bool
        d130 = if if d11 then p1 else p1 then if p3 then true else false else if false then true else d97
    module M'  = M ( true ) 