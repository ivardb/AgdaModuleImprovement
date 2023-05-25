module Chain3Base14  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then Bool else x4 ) ) ) $ ( Bool ) ) ( p5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if true then Bool else x6 ) ) ) $ ( Bool ) )  where
        d7 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if true then x9 else x9 ) ) ) $ ( if true then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if p3 then true else false ) ) ) $ ( if p1 then p3 else p1 )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> x12 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d10 = if if p5 then p5 else d7 then if p1 then p1 else d7 else if p1 then p3 else d7
        d13 : ( ( Set -> Set ) ∋ ( ( λ x16 -> if false then Bool else x16 ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> d7 ) ) ) $ ( true ) ) ) ) $ ( if p3 then p3 else true )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> Bool ) ) ) $ ( x18 ) ) ) ) $ ( if true then Bool else Bool )
        d17 = if if d13 then true else true then if false then true else p3 else if p5 then p1 else true
        d20 : if true then if false then Bool else Bool else if true then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> d10 ) ) ) $ ( p3 ) ) ) ) $ ( if false then p3 else true )
        d23 : if true then if false then Bool else Bool else if true then Bool else Bool
        d23 = if if p1 then p1 else true then if false then false else p5 else if d17 then p5 else true
        d24 : if false then if true then Bool else Bool else if true then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> x26 ) ) ) $ ( true ) ) ) ) $ ( if p3 then true else p5 )
        d27 : if false then if true then Bool else Bool else if true then Bool else Bool
        d27 = if if false then p3 else p3 then if d7 then d23 else d24 else if true then false else p1
        d28 : if false then if true then Bool else Bool else if true then Bool else Bool
        d28 = if if p5 then p5 else d13 then if d23 then false else false else if p1 then p5 else d24
        d29 : if true then if true then Bool else Bool else if true then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if d10 then true else d17 ) ) ) $ ( if d20 then p1 else p3 )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> x34 ) ) ) $ ( x34 ) ) ) ) $ ( if false then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> true ) ) ) $ ( d13 ) ) ) ) $ ( if p5 then d17 else p1 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x38 -> if false then x38 else x38 ) ) ) $ ( if false then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if x37 then true else p3 ) ) ) $ ( if false then p3 else p5 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> x40 ) ) ) $ ( x40 ) ) ) ) $ ( if true then Bool else Bool )
        d39 = if if d7 then p1 else p3 then if d13 then p1 else d13 else if d24 then p3 else p5
        d42 : if true then if false then Bool else Bool else if false then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> p1 ) ) ) $ ( d20 ) ) ) ) $ ( if p3 then d31 else true )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> x47 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d45 = if if d13 then d29 else d7 then if d39 then d17 else p1 else if p5 then d31 else true
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d48 = if if d31 then false else p3 then if true then d39 else false else if d29 then true else p5
        d51 : if true then if false then Bool else Bool else if true then Bool else Bool
        d51 = if if p1 then true else d24 then if p5 then p3 else false else if p5 then true else d28
        d52 : if true then if true then Bool else Bool else if true then Bool else Bool
        d52 = if if true then d42 else d20 then if true then false else false else if false then p1 else p3
        d53 : if false then if true then Bool else Bool else if false then Bool else Bool
        d53 = if if p5 then d13 else true then if false then true else p5 else if d28 then d17 else p5
        d54 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> if d17 then x55 else d42 ) ) ) $ ( if d13 then false else true )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> x61 ) ) ) $ ( x61 ) ) ) ) $ ( if true then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> p5 ) ) ) $ ( false ) ) ) ) $ ( if false then p5 else true )
        d63 : if false then if false then Bool else Bool else if false then Bool else Bool
        d63 = if if d29 then false else p3 then if false then p5 else d20 else if p3 then false else p3
        d64 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> x66 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if x65 then d27 else false ) ) ) $ ( if d45 then true else d48 )
        d68 : if false then if true then Bool else Bool else if true then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> true ) ) ) $ ( false ) ) ) ) $ ( if p3 then true else p3 )
        d71 : if true then if true then Bool else Bool else if false then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> true ) ) ) $ ( x72 ) ) ) ) $ ( if p5 then false else true )
        d74 : if true then if false then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> false ) ) ) $ ( d39 ) ) ) ) $ ( if p1 then p5 else d20 )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if false then x79 else x79 ) ) ) $ ( if false then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if false then d68 else p1 ) ) ) $ ( if d64 then p5 else true )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> x82 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d80 = if if p3 then d7 else d24 then if d28 then d74 else d13 else if p5 then p3 else true
        d83 : if true then if false then Bool else Bool else if true then Bool else Bool
        d83 = if if p5 then true else d64 then if p5 then p3 else false else if p3 then true else d51
        d84 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if true then x86 else x86 ) ) ) $ ( if true then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if p5 then d31 else p5 ) ) ) $ ( if false then d74 else p3 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> Bool ) ) ) $ ( x88 ) ) ) ) $ ( if true then Bool else Bool )
        d87 = if if p3 then d68 else p3 then if d13 then false else d83 else if true then d53 else d20
        d90 : if false then if true then Bool else Bool else if true then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> true ) ) ) $ ( true ) ) ) ) $ ( if d48 then d31 else d51 )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if p5 then d64 else d27 ) ) ) $ ( if d52 then true else d29 )
        d97 : if false then if false then Bool else Bool else if false then Bool else Bool
        d97 = if if d10 then p1 else true then if p3 then false else true else if d48 then false else d58
        d98 : if false then if true then Bool else Bool else if true then Bool else Bool
        d98 = if if true then p3 else false then if d13 then d48 else d74 else if true then p5 else false
        d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> x100 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d99 = if if true then false else false then if d84 then p5 else d7 else if d17 then p3 else p5
        d102 : if true then if false then Bool else Bool else if true then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> p3 ) ) ) $ ( false ) ) ) ) $ ( if p1 then p5 else p1 )
        d105 : if true then if false then Bool else Bool else if true then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if p1 then true else p3 ) ) ) $ ( if d45 then true else d68 )
        d107 : if false then if false then Bool else Bool else if false then Bool else Bool
        d107 = if if p5 then d29 else d74 then if false then false else true else if p1 then true else true
        d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> Bool ) ) ) $ ( x109 ) ) ) ) $ ( if true then Bool else Bool )
        d108 = if if d97 then p3 else false then if p5 then d48 else true else if d98 then p1 else p3
        d111 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if false then x114 else x114 ) ) ) $ ( if false then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> d107 ) ) ) $ ( d108 ) ) ) ) $ ( if true then p1 else p1 )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if true then x118 else x118 ) ) ) $ ( if false then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> x116 ) ) ) $ ( true ) ) ) ) $ ( if d64 then d87 else false )
        d119 : if true then if false then Bool else Bool else if false then Bool else Bool
        d119 = if if true then true else d71 then if false then d51 else p3 else if d90 then d107 else d53
        d120 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if false then x122 else Bool ) ) ) $ ( if true then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if d51 then d58 else p1 ) ) ) $ ( if d48 then p5 else p1 )
        d123 : if true then if false then Bool else Bool else if true then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( Bool -> Bool ) ∋ ( ( λ x125 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then d53 else d27 )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x128 -> ( ( Set -> Set ) ∋ ( ( λ x129 -> Bool ) ) ) $ ( x128 ) ) ) ) $ ( if false then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if d97 then true else x127 ) ) ) $ ( if d42 then false else true )
        d130 : if true then if true then Bool else Bool else if false then Bool else Bool
        d130 = if if p5 then p5 else p5 then if p3 then d13 else true else if true then p3 else p5
        d131 : ( ( Set -> Set ) ∋ ( ( λ x134 -> ( ( Set -> Set ) ∋ ( ( λ x135 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d131 = ( ( Bool -> Bool ) ∋ ( ( λ x132 -> ( ( Bool -> Bool ) ∋ ( ( λ x133 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if false then p5 else d42 )
        d136 : ( ( Set -> Set ) ∋ ( ( λ x138 -> if false then x138 else x138 ) ) ) $ ( if false then Bool else Bool )
        d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> if d28 then false else p5 ) ) ) $ ( if d53 then true else p5 )
        d139 : if true then if false then Bool else Bool else if true then Bool else Bool
        d139 = if if p1 then d7 else p5 then if p5 then p1 else false else if p3 then p1 else false
    module M'  = M ( true ) 