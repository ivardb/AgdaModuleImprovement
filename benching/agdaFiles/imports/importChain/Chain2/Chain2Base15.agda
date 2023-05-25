module Chain2Base15  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then x2 else Bool ) ) ) $ ( Bool ) ) ( p3 : if true then Bool else Bool )  where
        d4 : if false then if false then Bool else Bool else if true then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if true then false else x5 ) ) ) $ ( if p1 then p1 else p1 )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d6 = if if p1 then true else p3 then if d4 then p3 else d4 else if d4 then false else p1
        d8 : if true then if true then Bool else Bool else if false then Bool else Bool
        d8 = if if true then p3 else d4 then if p3 then false else p1 else if false then p1 else d4
        d9 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> x11 ) ) ) $ ( x11 ) ) ) ) $ ( if true then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if false then d4 else d4 ) ) ) $ ( if true then false else p3 )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if false then x14 else x14 ) ) ) $ ( if false then Bool else Bool )
        d13 = if if p3 then p3 else false then if d6 then false else d4 else if d9 then d9 else p1
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x17 ) ) ) $ ( x16 ) ) ) ) $ ( if true then Bool else Bool )
        d15 = if if p1 then p3 else d13 then if p1 then p1 else p3 else if d9 then d8 else p3
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if true then Bool else x19 ) ) ) $ ( if true then Bool else Bool )
        d18 = if if d13 then p1 else true then if d6 then false else true else if p3 then true else true
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if false then x21 else Bool ) ) ) $ ( if false then Bool else Bool )
        d20 = if if d4 then p3 else d9 then if d6 then false else d13 else if d4 then d13 else d13
        d22 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> x24 ) ) ) $ ( x24 ) ) ) ) $ ( if true then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if p1 then d4 else d18 ) ) ) $ ( if false then p1 else d8 )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d26 = if if true then p1 else p1 then if false then p3 else p3 else if d18 then p3 else d20
        d29 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> Bool ) ) ) $ ( x30 ) ) ) ) $ ( if false then Bool else Bool )
        d29 = if if p1 then false else p1 then if false then false else true else if d20 then d22 else d22
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( x33 ) ) ) ) $ ( if true then Bool else Bool )
        d32 = if if false then false else d22 then if d4 then p1 else p1 else if true then false else true
        d35 : ( ( Set -> Set ) ∋ ( ( λ x36 -> if false then x36 else Bool ) ) ) $ ( if false then Bool else Bool )
        d35 = if if d32 then d20 else p1 then if false then p1 else true else if p1 then d22 else true
        d37 : if false then if false then Bool else Bool else if false then Bool else Bool
        d37 = if if d20 then p1 else p1 then if true then p1 else p3 else if d9 then d8 else false
        d38 : if true then if true then Bool else Bool else if true then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( ( Bool -> Bool ) ∋ ( ( λ x40 -> true ) ) ) $ ( false ) ) ) ) $ ( if p1 then p1 else false )
        d41 : if true then if true then Bool else Bool else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if d32 then d8 else d32 ) ) ) $ ( if d6 then p1 else true )
        d43 : if true then if false then Bool else Bool else if false then Bool else Bool
        d43 = if if true then d20 else p1 then if false then p1 else d4 else if p3 then d29 else p1
        d44 : if true then if true then Bool else Bool else if true then Bool else Bool
        d44 = if if p3 then d41 else d15 then if true then d8 else true else if false then false else p1
        d45 : if false then if false then Bool else Bool else if true then Bool else Bool
        d45 = if if false then d18 else d35 then if false then p3 else false else if d8 then p1 else d9
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> x49 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> p3 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then true else d6 )
        d51 : if false then if false then Bool else Bool else if true then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> d9 ) ) ) $ ( d13 ) ) ) ) $ ( if d26 then false else true )
        d54 : if true then if false then Bool else Bool else if true then Bool else Bool
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> ( ( Bool -> Bool ) ∋ ( ( λ x56 -> x56 ) ) ) $ ( d15 ) ) ) ) $ ( if p3 then p3 else false )
        d57 : if false then if true then Bool else Bool else if true then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> ( ( Bool -> Bool ) ∋ ( ( λ x59 -> d20 ) ) ) $ ( true ) ) ) ) $ ( if false then p1 else p3 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if true then x61 else Bool ) ) ) $ ( if true then Bool else Bool )
        d60 = if if p1 then true else d51 then if d18 then d4 else p1 else if d32 then d20 else false
        d62 : if false then if false then Bool else Bool else if false then Bool else Bool
        d62 = if if false then true else false then if true then d29 else p3 else if true then true else p3
        d63 : if true then if false then Bool else Bool else if true then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> p3 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then p1 else d13 )
        d66 : if false then if false then Bool else Bool else if true then Bool else Bool
        d66 = if if p3 then d51 else p3 then if p3 then d57 else false else if d18 then p3 else d45
        d67 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> d54 ) ) ) $ ( true ) ) ) ) $ ( if d60 then p1 else p1 )
        d71 : if true then if true then Bool else Bool else if true then Bool else Bool
        d71 = if if true then d35 else d38 then if d9 then d57 else false else if p3 then d63 else d51
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if true then Bool else x73 ) ) ) $ ( if false then Bool else Bool )
        d72 = if if p1 then d57 else d13 then if true then d18 else true else if d62 then p1 else d37
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if false then Bool else x75 ) ) ) $ ( if true then Bool else Bool )
        d74 = if if false then p1 else true then if true then d26 else p1 else if false then false else true
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if true then x77 else x77 ) ) ) $ ( if false then Bool else Bool )
        d76 = if if p1 then true else p1 then if d43 then d29 else p1 else if p3 then p1 else false
        d78 : if false then if false then Bool else Bool else if true then Bool else Bool
        d78 = if if p1 then p1 else true then if p3 then p3 else d62 else if p3 then p3 else p3
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d79 = if if false then d51 else d26 then if d74 then p1 else true else if p1 then p3 else false
        d81 : if true then if false then Bool else Bool else if true then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> true ) ) ) $ ( p3 ) ) ) ) $ ( if true then p1 else false )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> Bool ) ) ) $ ( x87 ) ) ) ) $ ( if true then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> false ) ) ) $ ( d29 ) ) ) ) $ ( if d35 then p1 else false )
        d89 : if false then if false then Bool else Bool else if false then Bool else Bool
        d89 = if if false then p3 else d13 then if p3 then p3 else false else if p3 then d76 else d4
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> x92 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d90 = if if d32 then p3 else true then if true then d18 else false else if p3 then p3 else d60
        d93 : ( ( Set -> Set ) ∋ ( ( λ x96 -> if false then x96 else x96 ) ) ) $ ( if false then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> d18 ) ) ) $ ( x94 ) ) ) ) $ ( if true then false else p1 )
        d97 : if true then if true then Bool else Bool else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if d8 then p3 else x98 ) ) ) $ ( if false then d15 else d38 )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if true then Bool else x102 ) ) ) $ ( if true then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> x100 ) ) ) $ ( d71 ) ) ) ) $ ( if p3 then d13 else false )
        d103 : if false then if true then Bool else Bool else if true then Bool else Bool
        d103 = if if false then d51 else d93 then if d89 then p1 else p3 else if false then false else d62
        d104 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> x108 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> d71 ) ) ) $ ( d22 ) ) ) ) $ ( if false then p1 else false )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then x110 else x110 ) ) ) $ ( if true then Bool else Bool )
        d109 = if if true then p3 else p1 then if false then false else p3 else if d37 then p3 else d29
        d111 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> x115 ) ) ) $ ( x114 ) ) ) ) $ ( if true then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then d18 else d43 )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> x117 ) ) ) $ ( x117 ) ) ) ) $ ( if false then Bool else Bool )
        d116 = if if d41 then d97 else false then if d46 then true else d15 else if d37 then d15 else d20
        d119 : if true then if false then Bool else Bool else if false then Bool else Bool
        d119 = if if d29 then p3 else false then if p3 then p1 else d78 else if true then true else d18
        d120 : if false then if true then Bool else Bool else if false then Bool else Bool
        d120 = if if true then false else d66 then if d93 then p1 else false else if p1 then true else d43
        d121 : ( ( Set -> Set ) ∋ ( ( λ x124 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( ( Bool -> Bool ) ∋ ( ( λ x123 -> d111 ) ) ) $ ( true ) ) ) ) $ ( if false then d79 else d15 )
        d125 : if true then if true then Bool else Bool else if true then Bool else Bool
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> ( ( Bool -> Bool ) ∋ ( ( λ x127 -> x126 ) ) ) $ ( false ) ) ) ) $ ( if p1 then p3 else true )
    module M'  = M ( true ) 