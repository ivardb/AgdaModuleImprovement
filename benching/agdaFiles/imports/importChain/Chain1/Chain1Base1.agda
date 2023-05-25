module Chain1Base1  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then x2 else Bool ) ) ) $ ( Bool ) )  where
        d3 : if true then if false then Bool else Bool else if false then Bool else Bool
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> ( ( Bool -> Bool ) ∋ ( ( λ x5 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then true else p1 )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if false then x9 else Bool ) ) ) $ ( if true then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> x7 ) ) ) $ ( true ) ) ) ) $ ( if p1 then true else d3 )
        d10 : if true then if true then Bool else Bool else if false then Bool else Bool
        d10 = if if false then p1 else p1 then if p1 then true else p1 else if p1 then p1 else d3
        d11 : ( ( Set -> Set ) ∋ ( ( λ x14 -> ( ( Set -> Set ) ∋ ( ( λ x15 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> x13 ) ) ) $ ( p1 ) ) ) ) $ ( if false then true else p1 )
        d16 : if true then if false then Bool else Bool else if true then Bool else Bool
        d16 = if if true then p1 else true then if d11 then d6 else d11 else if d10 then true else d10
        d17 : if false then if false then Bool else Bool else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> d3 ) ) ) $ ( d11 ) ) ) ) $ ( if true then false else d16 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> false ) ) ) $ ( d10 ) ) ) ) $ ( if false then p1 else true )
        d25 : if true then if true then Bool else Bool else if true then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if false then x26 else p1 ) ) ) $ ( if d11 then false else d10 )
        d27 : if false then if false then Bool else Bool else if false then Bool else Bool
        d27 = if if p1 then p1 else false then if p1 then false else true else if p1 then d6 else false
        d28 : if false then if true then Bool else Bool else if true then Bool else Bool
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> x29 ) ) ) $ ( d10 ) ) ) ) $ ( if p1 then d3 else p1 )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if true then Bool else x34 ) ) ) $ ( if false then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> d11 ) ) ) $ ( true ) ) ) ) $ ( if p1 then p1 else true )
        d35 : if false then if false then Bool else Bool else if true then Bool else Bool
        d35 = if if p1 then p1 else p1 then if true then false else true else if false then d16 else d27
        d36 : if true then if true then Bool else Bool else if true then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if d20 then false else p1 ) ) ) $ ( if d28 then true else p1 )
        d38 : if false then if false then Bool else Bool else if false then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( ( Bool -> Bool ) ∋ ( ( λ x40 -> true ) ) ) $ ( false ) ) ) ) $ ( if p1 then p1 else d36 )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if true then Bool else x44 ) ) ) $ ( if true then Bool else Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> false ) ) ) $ ( d6 ) ) ) ) $ ( if p1 then p1 else d35 )
        d45 : if false then if false then Bool else Bool else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if p1 then p1 else p1 ) ) ) $ ( if p1 then true else p1 )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> x49 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d47 = if if p1 then d25 else d3 then if p1 then true else p1 else if p1 then p1 else d10
        d50 : ( ( Set -> Set ) ∋ ( ( λ x52 -> if false then x52 else x52 ) ) ) $ ( if true then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if true then false else d41 ) ) ) $ ( if true then d38 else p1 )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if true then Bool else x55 ) ) ) $ ( if false then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if true then true else d25 ) ) ) $ ( if d38 then true else false )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if true then x57 else Bool ) ) ) $ ( if false then Bool else Bool )
        d56 = if if d20 then d31 else false then if p1 then true else p1 else if true then true else true
        d58 : if true then if true then Bool else Bool else if false then Bool else Bool
        d58 = if if true then p1 else true then if p1 then p1 else false else if p1 then false else true
        d59 : if false then if false then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if false then p1 else d45 )
        d62 : if true then if false then Bool else Bool else if true then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> false ) ) ) $ ( false ) ) ) ) $ ( if p1 then false else false )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x66 -> if false then Bool else x66 ) ) ) $ ( if true then Bool else Bool )
        d65 = if if p1 then false else d27 then if d45 then p1 else d58 else if false then p1 else p1
        d67 : if true then if false then Bool else Bool else if false then Bool else Bool
        d67 = if if true then false else p1 then if false then p1 else p1 else if d41 then d62 else false
        d68 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if true then p1 else false ) ) ) $ ( if p1 then d62 else d45 )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x73 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d72 = if if false then p1 else d47 then if false then true else true else if p1 then d3 else d56
        d75 : ( ( Set -> Set ) ∋ ( ( λ x76 -> ( ( Set -> Set ) ∋ ( ( λ x77 -> x76 ) ) ) $ ( x76 ) ) ) ) $ ( if false then Bool else Bool )
        d75 = if if d11 then true else p1 then if p1 then p1 else true else if p1 then p1 else d36
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if true then Bool else x79 ) ) ) $ ( if false then Bool else Bool )
        d78 = if if d56 then d62 else p1 then if p1 then true else false else if p1 then p1 else p1
        d80 : if false then if false then Bool else Bool else if true then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> ( ( Bool -> Bool ) ∋ ( ( λ x82 -> x81 ) ) ) $ ( true ) ) ) ) $ ( if false then d58 else d67 )
        d83 : if true then if false then Bool else Bool else if false then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if d62 then true else false ) ) ) $ ( if p1 then d53 else true )
        d85 : if false then if true then Bool else Bool else if true then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if true then d38 else false ) ) ) $ ( if false then true else p1 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d87 = if if p1 then d47 else d58 then if d20 then p1 else true else if true then d35 else false
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> x92 ) ) ) $ ( x91 ) ) ) ) $ ( if true then Bool else Bool )
        d90 = if if p1 then p1 else d87 then if d16 then p1 else p1 else if true then d50 else p1
        d93 : if false then if true then Bool else Bool else if false then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> d10 ) ) ) $ ( false ) ) ) ) $ ( if true then d17 else d72 )
        d96 : if true then if false then Bool else Bool else if false then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> false ) ) ) $ ( true ) ) ) ) $ ( if d45 then d25 else d85 )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> x100 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d99 = if if false then d96 else d93 then if d80 then p1 else true else if true then true else d87
        d102 : if true then if false then Bool else Bool else if false then Bool else Bool
        d102 = if if p1 then p1 else d50 then if true then p1 else d25 else if d56 then p1 else false
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> x105 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d103 = if if d31 then true else p1 then if true then false else d83 else if p1 then d62 else d28
        d106 : if true then if false then Bool else Bool else if false then Bool else Bool
        d106 = if if d28 then true else p1 then if false then false else d6 else if true then p1 else p1
        d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d107 = if if p1 then d3 else p1 then if d41 then p1 else p1 else if p1 then p1 else true
        d110 : if false then if true then Bool else Bool else if false then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> false ) ) ) $ ( d58 ) ) ) ) $ ( if false then true else p1 )
        d113 : if false then if true then Bool else Bool else if false then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> x114 ) ) ) $ ( d85 ) ) ) ) $ ( if false then p1 else d41 )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> x118 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d116 = if if false then p1 else true then if p1 then false else p1 else if p1 then false else d25
        d119 : if false then if true then Bool else Bool else if false then Bool else Bool
        d119 = if if d67 then d59 else d107 then if d78 then true else d113 else if true then p1 else d107
        d120 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if true then Bool else x123 ) ) ) $ ( if true then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( Bool -> Bool ) ∋ ( ( λ x122 -> d36 ) ) ) $ ( d10 ) ) ) ) $ ( if true then d65 else p1 )
        d124 : ( ( Set -> Set ) ∋ ( ( λ x126 -> ( ( Set -> Set ) ∋ ( ( λ x127 -> Bool ) ) ) $ ( x126 ) ) ) ) $ ( if true then Bool else Bool )
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> if false then d90 else d72 ) ) ) $ ( if p1 then true else false )
        d128 : ( ( Set -> Set ) ∋ ( ( λ x129 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> x130 ) ) ) $ ( x129 ) ) ) ) $ ( if false then Bool else Bool )
        d128 = if if p1 then d6 else false then if p1 then p1 else p1 else if d58 then p1 else d107
        d131 : ( ( Set -> Set ) ∋ ( ( λ x133 -> ( ( Set -> Set ) ∋ ( ( λ x134 -> x133 ) ) ) $ ( x133 ) ) ) ) $ ( if false then Bool else Bool )
        d131 = ( ( Bool -> Bool ) ∋ ( ( λ x132 -> if d10 then true else d16 ) ) ) $ ( if true then p1 else d16 )
        d135 : ( ( Set -> Set ) ∋ ( ( λ x136 -> ( ( Set -> Set ) ∋ ( ( λ x137 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d135 = if if d25 then true else d110 then if p1 then d87 else d87 else if d128 then d27 else p1
    module M'  = M ( true ) 