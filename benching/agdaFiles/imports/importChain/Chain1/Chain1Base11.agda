module Chain1Base11  where
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

    module M ( p1 : if true then Bool else Bool )  where
        d2 : if false then if false then Bool else Bool else if false then Bool else Bool
        d2 = if if p1 then p1 else true then if false then p1 else p1 else if false then p1 else p1
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then x4 else Bool ) ) ) $ ( if true then Bool else Bool )
        d3 = if if p1 then p1 else d2 then if true then true else p1 else if p1 then false else p1
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> x7 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d5 = if if d2 then d2 else false then if false then false else p1 else if p1 then d2 else d3
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if true then Bool else x9 ) ) ) $ ( if false then Bool else Bool )
        d8 = if if true then false else p1 then if true then p1 else false else if p1 then true else true
        d10 : if false then if true then Bool else Bool else if true then Bool else Bool
        d10 = if if d2 then p1 else p1 then if p1 then d5 else p1 else if false then false else p1
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if false then x12 else x12 ) ) ) $ ( if true then Bool else Bool )
        d11 = if if false then d3 else d8 then if d10 then p1 else d2 else if p1 then d3 else p1
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> ( ( Set -> Set ) ∋ ( ( λ x15 -> Bool ) ) ) $ ( x14 ) ) ) ) $ ( if false then Bool else Bool )
        d13 = if if false then d5 else p1 then if true then true else d3 else if p1 then p1 else p1
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> x18 ) ) ) $ ( x17 ) ) ) ) $ ( if false then Bool else Bool )
        d16 = if if p1 then p1 else true then if d13 then p1 else d2 else if p1 then false else p1
        d19 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if true then Bool else x22 ) ) ) $ ( if false then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> x21 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then d16 else true )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d23 = if if true then d13 else d16 then if true then d19 else true else if d10 then p1 else false
        d25 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if true then Bool else x28 ) ) ) $ ( if true then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> d10 ) ) ) $ ( false ) ) ) ) $ ( if true then d11 else true )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then x30 else x30 ) ) ) $ ( if true then Bool else Bool )
        d29 = if if false then false else d23 then if d23 then p1 else d16 else if d11 then d2 else d3
        d31 : if true then if true then Bool else Bool else if false then Bool else Bool
        d31 = if if p1 then d16 else d29 then if p1 then false else true else if d13 then true else d8
        d32 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if true then x35 else Bool ) ) ) $ ( if true then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> ( ( Bool -> Bool ) ∋ ( ( λ x34 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if true then p1 else p1 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> x38 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if false then false else x37 ) ) ) $ ( if d8 then d32 else d8 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if true then Bool else x41 ) ) ) $ ( if true then Bool else Bool )
        d40 = if if true then p1 else d31 then if d29 then p1 else true else if false then p1 else d2
        d42 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if true then Bool else x45 ) ) ) $ ( if true then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> p1 ) ) ) $ ( d36 ) ) ) ) $ ( if p1 then true else d36 )
        d46 : if false then if true then Bool else Bool else if false then Bool else Bool
        d46 = if if p1 then d42 else p1 then if d31 then d10 else d16 else if p1 then p1 else d3
        d47 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> x50 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> if d32 then d29 else p1 ) ) ) $ ( if d10 then p1 else d3 )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> x53 ) ) ) $ ( x53 ) ) ) ) $ ( if false then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if false then p1 else d11 ) ) ) $ ( if true then d10 else d8 )
        d55 : if false then if true then Bool else Bool else if true then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if false then false else d32 ) ) ) $ ( if true then false else p1 )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if false then Bool else x59 ) ) ) $ ( if false then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if false then false else p1 ) ) ) $ ( if d16 then false else p1 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> x62 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d60 = if if false then p1 else false then if p1 then true else false else if p1 then d40 else d11
        d63 : if true then if true then Bool else Bool else if false then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> p1 ) ) ) $ ( d36 ) ) ) ) $ ( if true then p1 else d29 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x68 ) ) ) $ ( x67 ) ) ) ) $ ( if true then Bool else Bool )
        d66 = if if d40 then true else p1 then if true then d29 else d47 else if false then true else p1
        d69 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> x71 ) ) ) $ ( x71 ) ) ) ) $ ( if true then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if true then x70 else d31 ) ) ) $ ( if d63 then p1 else false )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x76 -> ( ( Set -> Set ) ∋ ( ( λ x77 -> Bool ) ) ) $ ( x76 ) ) ) ) $ ( if false then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> d3 ) ) ) $ ( p1 ) ) ) ) $ ( if d57 then true else p1 )
        d78 : if false then if true then Bool else Bool else if false then Bool else Bool
        d78 = if if p1 then p1 else false then if p1 then d60 else p1 else if p1 then true else d25
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> p1 ) ) ) $ ( d8 ) ) ) ) $ ( if true then d19 else false )
        d83 : if true then if false then Bool else Bool else if false then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> ( ( Bool -> Bool ) ∋ ( ( λ x85 -> p1 ) ) ) $ ( d51 ) ) ) ) $ ( if false then true else d42 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> d16 ) ) ) $ ( true ) ) ) ) $ ( if true then d57 else p1 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> x91 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d90 = if if p1 then true else d3 then if p1 then d13 else false else if d69 then false else p1
        d93 : if false then if false then Bool else Bool else if true then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if d13 then true else false )
        d96 : if true then if false then Bool else Bool else if false then Bool else Bool
        d96 = if if p1 then d16 else p1 then if d40 then d51 else true else if true then p1 else true
        d97 : if true then if true then Bool else Bool else if true then Bool else Bool
        d97 = if if true then false else p1 then if p1 then false else false else if false then p1 else d83
        d98 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if d16 then x99 else false ) ) ) $ ( if p1 then d5 else false )
        d101 : if true then if true then Bool else Bool else if false then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> ( ( Bool -> Bool ) ∋ ( ( λ x103 -> false ) ) ) $ ( d31 ) ) ) ) $ ( if d51 then false else p1 )
        d104 : if true then if true then Bool else Bool else if true then Bool else Bool
        d104 = if if p1 then false else true then if d97 then p1 else true else if true then d11 else p1
        d105 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> x109 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( Bool -> Bool ) ∋ ( ( λ x107 -> d73 ) ) ) $ ( x106 ) ) ) ) $ ( if p1 then false else d10 )
        d110 : if false then if true then Bool else Bool else if true then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> x112 ) ) ) $ ( true ) ) ) ) $ ( if false then p1 else p1 )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> Bool ) ) ) $ ( x114 ) ) ) ) $ ( if true then Bool else Bool )
        d113 = if if p1 then p1 else false then if p1 then p1 else d93 else if false then p1 else d40
        d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d116 = if if false then p1 else false then if d25 then true else p1 else if p1 then p1 else p1
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d118 = if if true then d79 else false then if d105 then true else p1 else if false then p1 else p1
        d121 : if false then if true then Bool else Bool else if true then Bool else Bool
        d121 = if if d51 then d97 else d5 then if false then p1 else p1 else if d25 then false else true
        d122 : if false then if true then Bool else Bool else if false then Bool else Bool
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then d25 else d25 )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x126 -> ( ( Set -> Set ) ∋ ( ( λ x127 -> x126 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d125 = if if d13 then true else p1 then if d3 then true else false else if false then p1 else p1
        d128 : if true then if false then Bool else Bool else if true then Bool else Bool
        d128 = if if p1 then false else d116 then if p1 then p1 else d118 else if true then false else d69
        d129 : ( ( Set -> Set ) ∋ ( ( λ x131 -> if true then x131 else Bool ) ) ) $ ( if false then Bool else Bool )
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if p1 then d42 else true ) ) ) $ ( if false then false else true )
        d132 : if true then if false then Bool else Bool else if true then Bool else Bool
        d132 = if if p1 then true else p1 then if true then p1 else true else if p1 then false else false
        d133 : ( ( Set -> Set ) ∋ ( ( λ x135 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> if x134 then d73 else p1 ) ) ) $ ( if d29 then true else d32 )
    module M'  = M ( false ) 