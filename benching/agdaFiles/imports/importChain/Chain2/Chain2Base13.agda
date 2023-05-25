module Chain2Base13  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then Bool else x4 ) ) ) $ ( Bool ) )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> Bool ) ) ) $ ( x6 ) ) ) ) $ ( if false then Bool else Bool )
        d5 = if if false then false else true then if false then false else false else if p1 then p1 else false
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d8 = if if p1 then d5 else p1 then if p1 then false else p3 else if p1 then d5 else true
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> Bool ) ) ) $ ( x11 ) ) ) ) $ ( if false then Bool else Bool )
        d10 = if if d8 then d8 else d5 then if true then false else false else if d5 then true else d5
        d13 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> Bool ) ) ) $ ( x16 ) ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> true ) ) ) $ ( d8 ) ) ) ) $ ( if false then d8 else true )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if false then x19 else Bool ) ) ) $ ( if true then Bool else Bool )
        d18 = if if p3 then p1 else true then if d13 then true else p1 else if true then d13 else p1
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if false then x21 else x21 ) ) ) $ ( if false then Bool else Bool )
        d20 = if if p1 then p1 else d10 then if p3 then false else d8 else if true then p1 else p3
        d22 : if true then if true then Bool else Bool else if true then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if d20 then d18 else p3 )
        d25 : if true then if true then Bool else Bool else if true then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if false then false else p1 ) ) ) $ ( if d22 then d5 else false )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then x30 else Bool ) ) ) $ ( if false then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if p3 then true else p3 )
        d31 : if false then if true then Bool else Bool else if false then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> d22 ) ) ) $ ( x32 ) ) ) ) $ ( if d27 then true else p3 )
        d34 : if false then if true then Bool else Bool else if true then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> p1 ) ) ) $ ( d20 ) ) ) ) $ ( if false then d13 else p3 )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then Bool else x40 ) ) ) $ ( if true then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if p3 then false else d25 )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x42 -> if true then Bool else x42 ) ) ) $ ( if false then Bool else Bool )
        d41 = if if d8 then p1 else p1 then if false then false else false else if p1 then true else d31
        d43 : if true then if false then Bool else Bool else if false then Bool else Bool
        d43 = if if true then false else d41 then if true then d37 else p1 else if false then d10 else p1
        d44 : if false then if false then Bool else Bool else if false then Bool else Bool
        d44 = if if d34 then d34 else d37 then if p3 then p1 else false else if p3 then true else d34
        d45 : if true then if true then Bool else Bool else if false then Bool else Bool
        d45 = if if p3 then p1 else true then if true then d41 else d31 else if p3 then p3 else d37
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if true then x49 else x49 ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> d22 ) ) ) $ ( true ) ) ) ) $ ( if d31 then d18 else false )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if true then Bool else x53 ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> p1 ) ) ) $ ( x51 ) ) ) ) $ ( if p3 then d18 else p1 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x56 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> if true then d27 else false ) ) ) $ ( if p3 then p1 else p1 )
        d57 : if true then if true then Bool else Bool else if true then Bool else Bool
        d57 = if if p3 then d13 else d41 then if d25 then true else d31 else if p3 then p1 else d44
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( x59 ) ) ) ) $ ( if false then Bool else Bool )
        d58 = if if p3 then d37 else true then if d20 then true else p1 else if d5 then d18 else p3
        d61 : if false then if false then Bool else Bool else if false then Bool else Bool
        d61 = if if p1 then p3 else p1 then if p1 then d50 else p1 else if p3 then d34 else false
        d62 : if false then if true then Bool else Bool else if false then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if d25 then x63 else d13 ) ) ) $ ( if p3 then d58 else d27 )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x65 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d64 = if if false then false else p1 then if p1 then true else false else if d13 then false else true
        d66 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> Bool ) ) ) $ ( x68 ) ) ) ) $ ( if false then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if p3 then p3 else x67 ) ) ) $ ( if d37 then d44 else d45 )
        d70 : if false then if true then Bool else Bool else if true then Bool else Bool
        d70 = if if true then p1 else d41 then if p1 then true else false else if d66 then d54 else p1
        d71 : if true then if true then Bool else Bool else if false then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> x72 ) ) ) $ ( d8 ) ) ) ) $ ( if false then d50 else p1 )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x76 -> ( ( Set -> Set ) ∋ ( ( λ x77 -> Bool ) ) ) $ ( x76 ) ) ) ) $ ( if false then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if false then p1 else p3 ) ) ) $ ( if true then d34 else p3 )
        d78 : if true then if false then Bool else Bool else if true then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> x79 ) ) ) $ ( false ) ) ) ) $ ( if d44 then d44 else d10 )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> x83 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d81 = if if d74 then d46 else p3 then if p3 then d25 else p3 else if true then p1 else true
        d84 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> Bool ) ) ) $ ( x86 ) ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if p1 then false else p3 ) ) ) $ ( if d34 then p3 else d22 )
        d88 : if false then if true then Bool else Bool else if false then Bool else Bool
        d88 = if if false then p1 else false then if d46 then p3 else d25 else if d10 then d31 else p1
        d89 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if false then x91 else Bool ) ) ) $ ( if false then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if false then x90 else d57 ) ) ) $ ( if p3 then d58 else p3 )
        d92 : if true then if false then Bool else Bool else if false then Bool else Bool
        d92 = if if d5 then d57 else d34 then if d25 then p1 else d13 else if false then p1 else p3
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> x95 ) ) ) $ ( x94 ) ) ) ) $ ( if true then Bool else Bool )
        d93 = if if false then d44 else d88 then if d45 then true else false else if d8 then d34 else p3
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> x98 ) ) ) $ ( x97 ) ) ) ) $ ( if false then Bool else Bool )
        d96 = if if d34 then p3 else true then if true then d81 else false else if d78 then true else p1
        d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if false then Bool else x100 ) ) ) $ ( if false then Bool else Bool )
        d99 = if if false then d93 else p1 then if p1 then d8 else false else if p1 then p1 else p1
        d101 : if true then if true then Bool else Bool else if true then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> ( ( Bool -> Bool ) ∋ ( ( λ x103 -> d99 ) ) ) $ ( p1 ) ) ) ) $ ( if p3 then d61 else p1 )
        d104 : if true then if false then Bool else Bool else if false then Bool else Bool
        d104 = if if false then true else d64 then if d27 then false else d13 else if p3 then false else p1
        d105 : if false then if false then Bool else Bool else if true then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if true then true else p3 ) ) ) $ ( if true then d13 else d62 )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> false ) ) ) $ ( true ) ) ) ) $ ( if d88 then p3 else p3 )
        d111 : if false then if false then Bool else Bool else if true then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> if d92 then false else true ) ) ) $ ( if p1 then false else p3 )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d113 = if if d54 then d20 else p3 then if true then p3 else d37 else if d50 then p1 else false
        d115 : if true then if true then Bool else Bool else if false then Bool else Bool
        d115 = if if false then p3 else p3 then if false then p3 else false else if p3 then d41 else true
        d116 : if false then if false then Bool else Bool else if false then Bool else Bool
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> ( ( Bool -> Bool ) ∋ ( ( λ x118 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then true else d84 )
        d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> Bool ) ) ) $ ( x120 ) ) ) ) $ ( if false then Bool else Bool )
        d119 = if if d57 then p3 else p1 then if p3 then true else d22 else if p3 then d62 else p3
        d122 : ( ( Set -> Set ) ∋ ( ( λ x123 -> ( ( Set -> Set ) ∋ ( ( λ x124 -> x124 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d122 = if if d54 then d107 else false then if false then p3 else d54 else if p3 then p1 else false
        d125 : ( ( Set -> Set ) ∋ ( ( λ x126 -> ( ( Set -> Set ) ∋ ( ( λ x127 -> x127 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d125 = if if d71 then true else true then if d113 then p3 else d34 else if false then false else d62
        d128 : if true then if false then Bool else Bool else if true then Bool else Bool
        d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> if d96 then d25 else true ) ) ) $ ( if true then d27 else p1 )
        d130 : ( ( Set -> Set ) ∋ ( ( λ x132 -> if true then x132 else Bool ) ) ) $ ( if true then Bool else Bool )
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> if false then p3 else p1 ) ) ) $ ( if d13 then true else p3 )
    module M'  = M ( false ) 