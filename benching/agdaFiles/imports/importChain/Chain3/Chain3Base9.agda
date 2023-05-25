module Chain3Base9  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then Bool else x4 ) ) ) $ ( Bool ) ) ( p5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if true then Bool else x6 ) ) ) $ ( Bool ) )  where
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> ( ( Set -> Set ) ∋ ( ( λ x9 -> x9 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d7 = if if p1 then true else p5 then if p5 then p1 else p1 else if true then true else p5
        d10 : if true then if false then Bool else Bool else if false then Bool else Bool
        d10 = if if false then true else true then if true then true else p3 else if p1 then d7 else d7
        d11 : if true then if true then Bool else Bool else if true then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if d7 then false else p5 ) ) ) $ ( if p1 then false else false )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if x14 then d11 else false ) ) ) $ ( if p5 then true else p5 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if false then x20 else Bool ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> x19 ) ) ) $ ( x18 ) ) ) ) $ ( if d7 then true else false )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> x23 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d21 = if if false then d10 else false then if d17 then p5 else false else if d7 then d11 else d11
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then Bool else x25 ) ) ) $ ( if true then Bool else Bool )
        d24 = if if p1 then p5 else false then if p5 then p5 else false else if p1 then d10 else d11
        d26 : if false then if false then Bool else Bool else if false then Bool else Bool
        d26 = if if false then d24 else p3 then if true then p3 else p1 else if true then false else true
        d27 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then Bool else x30 ) ) ) $ ( if false then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> false ) ) ) $ ( d7 ) ) ) ) $ ( if true then d21 else true )
        d31 : if true then if false then Bool else Bool else if false then Bool else Bool
        d31 = if if false then d13 else d7 then if p3 then true else p5 else if false then d24 else p5
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if true then x33 else x33 ) ) ) $ ( if true then Bool else Bool )
        d32 = if if true then d31 else d24 then if d10 then p3 else true else if true then p3 else false
        d34 : if true then if true then Bool else Bool else if true then Bool else Bool
        d34 = if if p3 then false else false then if false then p3 else p3 else if p1 then p3 else false
        d35 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if true then Bool else x37 ) ) ) $ ( if true then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if d7 then p3 else p3 ) ) ) $ ( if d21 then p3 else false )
        d38 : if true then if false then Bool else Bool else if false then Bool else Bool
        d38 = if if true then p5 else p3 then if p3 then d21 else d17 else if p1 then d13 else false
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> Bool ) ) ) $ ( x40 ) ) ) ) $ ( if true then Bool else Bool )
        d39 = if if p1 then true else p3 then if p3 then p5 else d11 else if p1 then d34 else d32
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d42 = if if d7 then d34 else false then if true then d17 else p5 else if d35 then p1 else d35
        d45 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> x49 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> d17 ) ) ) $ ( p1 ) ) ) ) $ ( if d26 then d26 else d31 )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> x52 ) ) ) $ ( x51 ) ) ) ) $ ( if true then Bool else Bool )
        d50 = if if p3 then true else false then if p1 then p3 else d27 else if d35 then false else d38
        d53 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> x57 ) ) ) $ ( x56 ) ) ) ) $ ( if false then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> true ) ) ) $ ( d27 ) ) ) ) $ ( if false then p5 else d32 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if false then Bool else x61 ) ) ) $ ( if true then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> d10 ) ) ) $ ( d35 ) ) ) ) $ ( if p1 then false else d50 )
        d62 : if true then if true then Bool else Bool else if false then Bool else Bool
        d62 = if if false then p5 else d32 then if false then d31 else p3 else if p1 then d35 else true
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( x64 ) ) ) ) $ ( if true then Bool else Bool )
        d63 = if if false then d13 else d27 then if p5 then p5 else d31 else if p1 then false else false
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> Bool ) ) ) $ ( x67 ) ) ) ) $ ( if false then Bool else Bool )
        d66 = if if false then false else p5 then if d35 then d42 else d53 else if true then false else p3
        d69 : if false then if false then Bool else Bool else if true then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x71 -> d62 ) ) ) $ ( p5 ) ) ) ) $ ( if d53 then p5 else true )
        d72 : if false then if false then Bool else Bool else if false then Bool else Bool
        d72 = if if true then d50 else false then if p1 then p3 else false else if true then p3 else false
        d73 : if true then if false then Bool else Bool else if true then Bool else Bool
        d73 = if if true then true else p3 then if false then d38 else true else if p5 then true else true
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> x75 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d74 = if if p3 then false else d24 then if d38 then p1 else true else if p3 then p1 else false
        d77 : if false then if true then Bool else Bool else if true then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if d58 then p1 else p5 ) ) ) $ ( if false then true else d63 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if p5 then x80 else p3 ) ) ) $ ( if p1 then p1 else d31 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d83 = if if p5 then p3 else p1 then if d53 then false else d50 else if p3 then p5 else p3
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if true then Bool else x87 ) ) ) $ ( if false then Bool else Bool )
        d86 = if if false then d79 else p1 then if d72 then p3 else p3 else if d26 then false else p1
        d88 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> Bool ) ) ) $ ( x90 ) ) ) ) $ ( if false then Bool else Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if p3 then true else p5 ) ) ) $ ( if false then p3 else d26 )
        d92 : if true then if true then Bool else Bool else if false then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if x93 then true else false ) ) ) $ ( if true then d62 else false )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d94 = if if d58 then d39 else false then if d66 then p5 else false else if p3 then d69 else d62
        d96 : if false then if false then Bool else Bool else if true then Bool else Bool
        d96 = if if d38 then p5 else p1 then if false then true else false else if d58 then d88 else p5
        d97 : if true then if false then Bool else Bool else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if d83 then d31 else p1 ) ) ) $ ( if p3 then d7 else p1 )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if false then x101 else x101 ) ) ) $ ( if true then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if x100 then d73 else true ) ) ) $ ( if d38 then d39 else d27 )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if false then x103 else x103 ) ) ) $ ( if true then Bool else Bool )
        d102 = if if false then d32 else false then if false then p5 else false else if d10 then d74 else d53
        d104 : if false then if true then Bool else Bool else if false then Bool else Bool
        d104 = if if d53 then p1 else d34 then if p1 then d96 else false else if p5 then true else true
        d105 : if true then if false then Bool else Bool else if true then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( Bool -> Bool ) ∋ ( ( λ x107 -> p5 ) ) ) $ ( d92 ) ) ) ) $ ( if d66 then d86 else d34 )
        d108 : if true then if false then Bool else Bool else if false then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> p5 ) ) ) $ ( x109 ) ) ) ) $ ( if true then d88 else p1 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> x115 ) ) ) $ ( x114 ) ) ) ) $ ( if true then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if false then x117 else Bool ) ) ) $ ( if true then Bool else Bool )
        d116 = if if p3 then p1 else d97 then if true then true else p5 else if p5 then false else p1
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if false then x119 else x119 ) ) ) $ ( if false then Bool else Bool )
        d118 = if if d11 then d63 else d92 then if false then d74 else p1 else if d73 then p3 else d104
        d120 : if true then if true then Bool else Bool else if false then Bool else Bool
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if d111 then p1 else d97 ) ) ) $ ( if p1 then false else false )
        d122 : if true then if true then Bool else Bool else if true then Bool else Bool
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> true ) ) ) $ ( d21 ) ) ) ) $ ( if p3 then p5 else false )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x126 -> ( ( Set -> Set ) ∋ ( ( λ x127 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d125 = if if p1 then d122 else true then if p1 then p3 else d24 else if false then true else p5
        d128 : if true then if false then Bool else Bool else if false then Bool else Bool
        d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> ( ( Bool -> Bool ) ∋ ( ( λ x130 -> false ) ) ) $ ( d27 ) ) ) ) $ ( if d66 then p5 else p5 )
        d131 : if true then if false then Bool else Bool else if false then Bool else Bool
        d131 = ( ( Bool -> Bool ) ∋ ( ( λ x132 -> ( ( Bool -> Bool ) ∋ ( ( λ x133 -> true ) ) ) $ ( d105 ) ) ) ) $ ( if d53 then false else d105 )
        d134 : if true then if false then Bool else Bool else if false then Bool else Bool
        d134 = if if p5 then true else d102 then if p5 then false else d83 else if d66 then false else p1
    module M'  = M ( false ) 