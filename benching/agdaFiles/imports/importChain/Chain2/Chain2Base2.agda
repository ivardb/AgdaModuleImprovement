module Chain2Base2  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ( p3 : if true then Bool else Bool )  where
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> ( ( Set -> Set ) ∋ ( ( λ x6 -> x5 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d4 = if if p1 then false else p1 then if p1 then false else false else if p3 then false else true
        d7 : if false then if true then Bool else Bool else if true then Bool else Bool
        d7 = if if false then d4 else false then if p3 then p1 else d4 else if false then d4 else p1
        d8 : if true then if true then Bool else Bool else if true then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> true ) ) ) $ ( d7 ) ) ) ) $ ( if false then true else true )
        d11 : if false then if true then Bool else Bool else if false then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if d7 then p1 else p3 ) ) ) $ ( if p1 then d4 else p1 )
        d13 : if true then if true then Bool else Bool else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> x15 ) ) ) $ ( p1 ) ) ) ) $ ( if p3 then p1 else d4 )
        d16 : if false then if true then Bool else Bool else if false then Bool else Bool
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> true ) ) ) $ ( true ) ) ) ) $ ( if d13 then p1 else false )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x20 ) ) ) $ ( x20 ) ) ) ) $ ( if true then Bool else Bool )
        d19 = if if d13 then true else p1 then if d16 then p3 else true else if false then d13 else d13
        d22 : if true then if false then Bool else Bool else if false then Bool else Bool
        d22 = if if false then false else p3 then if false then p1 else false else if false then d8 else p1
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> Bool ) ) ) $ ( x24 ) ) ) ) $ ( if true then Bool else Bool )
        d23 = if if false then p1 else p3 then if true then d8 else true else if p3 then p1 else p1
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d26 = if if d13 then p3 else true then if true then false else p1 else if d7 then p3 else d13
        d28 : if true then if false then Bool else Bool else if true then Bool else Bool
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> false ) ) ) $ ( x29 ) ) ) ) $ ( if true then false else false )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if false then x33 else x33 ) ) ) $ ( if true then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if p3 then x32 else d13 ) ) ) $ ( if false then true else true )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> x35 ) ) ) $ ( x35 ) ) ) ) $ ( if true then Bool else Bool )
        d34 = if if d4 then d26 else d13 then if d8 then false else p1 else if d28 then d26 else d26
        d37 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> x40 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if p3 then true else d28 ) ) ) $ ( if p1 then p1 else p1 )
        d41 : if false then if false then Bool else Bool else if true then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if false then true else true ) ) ) $ ( if d26 then false else d26 )
        d43 : if true then if true then Bool else Bool else if false then Bool else Bool
        d43 = if if p3 then true else d16 then if true then d31 else false else if false then d34 else false
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d44 = if if true then p3 else d43 then if false then false else p1 else if p1 then d19 else d22
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> x50 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> x47 ) ) ) $ ( true ) ) ) ) $ ( if d19 then p1 else false )
        d51 : if true then if true then Bool else Bool else if true then Bool else Bool
        d51 = if if true then false else d41 then if d19 then true else p3 else if d44 then false else d11
        d52 : if true then if false then Bool else Bool else if true then Bool else Bool
        d52 = if if d37 then true else p3 then if p3 then p3 else d4 else if true then p3 else d31
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if false then x54 else Bool ) ) ) $ ( if true then Bool else Bool )
        d53 = if if d31 then p1 else p1 then if true then d41 else false else if p1 then true else true
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> if true then x56 else Bool ) ) ) $ ( if true then Bool else Bool )
        d55 = if if d7 then d28 else true then if d44 then d16 else d37 else if d43 then d31 else false
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if true then x58 else Bool ) ) ) $ ( if false then Bool else Bool )
        d57 = if if d16 then p3 else d7 then if false then p3 else d23 else if p3 then d26 else d4
        d59 : if true then if true then Bool else Bool else if true then Bool else Bool
        d59 = if if p1 then p1 else d34 then if true then d13 else p1 else if true then d55 else d43
        d60 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> Bool ) ) ) $ ( x63 ) ) ) ) $ ( if true then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> true ) ) ) $ ( false ) ) ) ) $ ( if d7 then p1 else d37 )
        d65 : if true then if false then Bool else Bool else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> d22 ) ) ) $ ( x66 ) ) ) ) $ ( if false then d41 else true )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if false then Bool else x69 ) ) ) $ ( if true then Bool else Bool )
        d68 = if if d19 then d23 else d34 then if true then true else p1 else if p1 then p1 else true
        d70 : if true then if true then Bool else Bool else if true then Bool else Bool
        d70 = if if d55 then d41 else d34 then if p3 then false else p3 else if true then p3 else p3
        d71 : if true then if true then Bool else Bool else if false then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> d43 ) ) ) $ ( true ) ) ) ) $ ( if d46 then p1 else d19 )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> x77 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> d71 ) ) ) $ ( d19 ) ) ) ) $ ( if p1 then p3 else false )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> x82 ) ) ) $ ( x81 ) ) ) ) $ ( if false then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if true then p3 else true ) ) ) $ ( if true then d52 else d11 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> Bool ) ) ) $ ( x86 ) ) ) ) $ ( if false then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> ( ( Bool -> Bool ) ∋ ( ( λ x85 -> d4 ) ) ) $ ( false ) ) ) ) $ ( if d46 then false else p1 )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if d16 then d4 else true ) ) ) $ ( if d74 then true else true )
        d92 : if true then if false then Bool else Bool else if true then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if x93 then d52 else d57 ) ) ) $ ( if p1 then true else true )
        d94 : if false then if false then Bool else Bool else if true then Bool else Bool
        d94 = if if d44 then d52 else d83 then if p3 then p3 else d41 else if false then p1 else p3
        d95 : if true then if true then Bool else Bool else if false then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if d37 then d16 else d41 ) ) ) $ ( if false then d83 else p1 )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d97 = if if p3 then p3 else true then if d46 then d4 else p1 else if true then d88 else p1
        d100 : if true then if false then Bool else Bool else if true then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> p3 ) ) ) $ ( d19 ) ) ) ) $ ( if d16 then true else p3 )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if false then x105 else x105 ) ) ) $ ( if true then Bool else Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if x104 then d55 else x104 ) ) ) $ ( if p1 then true else d53 )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> x109 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( Bool -> Bool ) ∋ ( ( λ x108 -> d59 ) ) ) $ ( d55 ) ) ) ) $ ( if p3 then true else d92 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> Bool ) ) ) $ ( x112 ) ) ) ) $ ( if true then Bool else Bool )
        d111 = if if p1 then false else p1 then if p3 then p1 else false else if d88 then d41 else p3
        d114 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( Bool -> Bool ) ∋ ( ( λ x116 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if false then p1 else p1 )
        d119 : if false then if false then Bool else Bool else if true then Bool else Bool
        d119 = if if true then p1 else p3 then if p3 then p1 else p1 else if p3 then p3 else d44
        d120 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( Bool -> Bool ) ∋ ( ( λ x122 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if p3 then p3 else true )
        d124 : if true then if true then Bool else Bool else if false then Bool else Bool
        d124 = if if p3 then d60 else d114 then if false then p3 else p3 else if p3 then false else p1
        d125 : if false then if false then Bool else Bool else if true then Bool else Bool
        d125 = if if p1 then p3 else true then if p1 then p1 else p1 else if d4 then p3 else p1
        d126 : if true then if true then Bool else Bool else if false then Bool else Bool
        d126 = if if false then true else d31 then if p3 then false else false else if d119 then p3 else false
        d127 : if false then if true then Bool else Bool else if true then Bool else Bool
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> if d79 then p3 else p3 ) ) ) $ ( if d8 then p1 else p1 )
        d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d129 = if if d127 then p1 else p3 then if true then d52 else false else if p1 then p3 else d95
        d131 : if false then if true then Bool else Bool else if false then Bool else Bool
        d131 = if if d100 then p3 else true then if p3 then p1 else p3 else if d60 then true else p3
    module M'  = M ( false ) 