module Chain1Base8  where
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
        d2 : if false then if false then Bool else Bool else if true then Bool else Bool
        d2 = if if true then p1 else true then if p1 then true else true else if false then p1 else true
        d3 : if true then if true then Bool else Bool else if true then Bool else Bool
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> if d2 then true else d2 ) ) ) $ ( if true then d2 else p1 )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if true then x7 else Bool ) ) ) $ ( if false then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if p1 then false else d3 ) ) ) $ ( if d3 then d2 else true )
        d8 : if true then if true then Bool else Bool else if false then Bool else Bool
        d8 = if if p1 then d2 else d3 then if d3 then p1 else p1 else if d5 then d2 else d3
        d9 : if false then if false then Bool else Bool else if true then Bool else Bool
        d9 = if if false then true else p1 then if true then p1 else p1 else if d2 then p1 else false
        d10 : if false then if false then Bool else Bool else if true then Bool else Bool
        d10 = if if p1 then false else false then if true then d8 else p1 else if true then d2 else p1
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if false then x12 else x12 ) ) ) $ ( if true then Bool else Bool )
        d11 = if if p1 then d3 else d8 then if true then d5 else p1 else if true then true else p1
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> ( ( Set -> Set ) ∋ ( ( λ x15 -> x14 ) ) ) $ ( x14 ) ) ) ) $ ( if false then Bool else Bool )
        d13 = if if p1 then false else true then if p1 then p1 else false else if false then d5 else p1
        d16 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> Bool ) ) ) $ ( x19 ) ) ) ) $ ( if false then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then false else p1 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> x22 ) ) ) $ ( x22 ) ) ) ) $ ( if true then Bool else Bool )
        d21 = if if p1 then d3 else false then if p1 then true else true else if d5 then p1 else d3
        d24 : if true then if false then Bool else Bool else if false then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> d10 ) ) ) $ ( d11 ) ) ) ) $ ( if false then false else d10 )
        d27 : if true then if true then Bool else Bool else if true then Bool else Bool
        d27 = if if false then d10 else d9 then if false then true else p1 else if false then d11 else d2
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if true then x29 else Bool ) ) ) $ ( if true then Bool else Bool )
        d28 = if if p1 then false else p1 then if d2 then d2 else true else if d13 then p1 else p1
        d30 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> x32 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if false then false else d16 ) ) ) $ ( if d9 then false else p1 )
        d34 : if true then if false then Bool else Bool else if false then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if true then true else d30 ) ) ) $ ( if p1 then p1 else p1 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d36 = if if false then p1 else p1 then if true then false else false else if true then p1 else d27
        d39 : if true then if false then Bool else Bool else if true then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> p1 ) ) ) $ ( d8 ) ) ) ) $ ( if p1 then false else p1 )
        d42 : if false then if false then Bool else Bool else if true then Bool else Bool
        d42 = if if p1 then p1 else true then if d21 then false else false else if d13 then d2 else false
        d43 : if false then if true then Bool else Bool else if true then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> false ) ) ) $ ( d21 ) ) ) ) $ ( if d16 then p1 else false )
        d46 : if false then if true then Bool else Bool else if false then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> false ) ) ) $ ( true ) ) ) ) $ ( if p1 then true else p1 )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> Bool ) ) ) $ ( x52 ) ) ) ) $ ( if false then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x51 -> false ) ) ) $ ( d24 ) ) ) ) $ ( if d16 then p1 else false )
        d54 : if false then if true then Bool else Bool else if false then Bool else Bool
        d54 = if if d10 then d28 else false then if d39 then false else false else if d39 then p1 else p1
        d55 : if false then if true then Bool else Bool else if false then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if false then true else d11 )
        d58 : if false then if false then Bool else Bool else if false then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if true then d16 else x59 ) ) ) $ ( if d27 then p1 else true )
        d60 : if true then if false then Bool else Bool else if false then Bool else Bool
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if d49 then false else false ) ) ) $ ( if p1 then false else false )
        d62 : if true then if false then Bool else Bool else if true then Bool else Bool
        d62 = if if d58 then false else d3 then if p1 then false else p1 else if true then false else d55
        d63 : if false then if false then Bool else Bool else if false then Bool else Bool
        d63 = if if true then p1 else p1 then if d8 then p1 else d2 else if p1 then false else p1
        d64 : if true then if false then Bool else Bool else if true then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> p1 ) ) ) $ ( d62 ) ) ) ) $ ( if p1 then false else p1 )
        d67 : if true then if false then Bool else Bool else if false then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> x68 ) ) ) $ ( d49 ) ) ) ) $ ( if d13 then true else d39 )
        d70 : if false then if false then Bool else Bool else if false then Bool else Bool
        d70 = if if d16 then p1 else d11 then if false then false else true else if true then false else d63
        d71 : if false then if true then Bool else Bool else if false then Bool else Bool
        d71 = if if true then true else false then if p1 then p1 else false else if p1 then d63 else p1
        d72 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> x76 ) ) ) $ ( x75 ) ) ) ) $ ( if false then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> ( ( Bool -> Bool ) ∋ ( ( λ x74 -> d64 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then d30 else false )
        d77 : if false then if false then Bool else Bool else if true then Bool else Bool
        d77 = if if d5 then true else d67 then if true then true else false else if false then false else true
        d78 : if false then if false then Bool else Bool else if false then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> p1 ) ) ) $ ( x79 ) ) ) ) $ ( if p1 then false else p1 )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> x84 ) ) ) $ ( x84 ) ) ) ) $ ( if false then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> false ) ) ) $ ( false ) ) ) ) $ ( if p1 then d9 else d77 )
        d86 : if false then if true then Bool else Bool else if false then Bool else Bool
        d86 = if if p1 then true else p1 then if d70 then true else d72 else if true then p1 else true
        d87 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> x89 ) ) ) $ ( d3 ) ) ) ) $ ( if false then p1 else false )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if false then x94 else x94 ) ) ) $ ( if true then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if true then d21 else true )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then true else d58 )
        d100 : if true then if true then Bool else Bool else if true then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> p1 ) ) ) $ ( d2 ) ) ) ) $ ( if false then true else d54 )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> x107 ) ) ) $ ( x106 ) ) ) ) $ ( if false then Bool else Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> ( ( Bool -> Bool ) ∋ ( ( λ x105 -> p1 ) ) ) $ ( x104 ) ) ) ) $ ( if true then p1 else true )
        d108 : if false then if true then Bool else Bool else if true then Bool else Bool
        d108 = if if p1 then d34 else p1 then if false then d67 else p1 else if p1 then p1 else false
        d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then x110 else x110 ) ) ) $ ( if true then Bool else Bool )
        d109 = if if p1 then true else false then if true then d100 else p1 else if false then p1 else d42
        d111 : if false then if true then Bool else Bool else if true then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if p1 then d71 else true )
        d114 : if false then if true then Bool else Bool else if false then Bool else Bool
        d114 = if if false then p1 else p1 then if false then true else p1 else if p1 then d43 else d111
        d115 : if false then if false then Bool else Bool else if true then Bool else Bool
        d115 = if if d28 then d36 else true then if false then p1 else false else if true then false else p1
        d116 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if false then x118 else Bool ) ) ) $ ( if false then Bool else Bool )
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> if false then x117 else d49 ) ) ) $ ( if d21 then false else d109 )
        d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d119 = if if d42 then p1 else d78 then if true then false else false else if d43 then p1 else p1
        d121 : if true then if false then Bool else Bool else if true then Bool else Bool
        d121 = if if true then d11 else false then if d87 then false else d109 else if p1 then false else d60
        d122 : if true then if false then Bool else Bool else if true then Bool else Bool
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> if x123 then x123 else p1 ) ) ) $ ( if d55 then p1 else false )
    module M'  = M ( false ) 