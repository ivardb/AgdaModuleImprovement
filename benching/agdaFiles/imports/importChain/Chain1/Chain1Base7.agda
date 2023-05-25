module Chain1Base7  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then x2 else x2 ) ) ) $ ( Bool ) )  where
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> x5 ) ) ) $ ( x4 ) ) ) ) $ ( if true then Bool else Bool )
        d3 = if if p1 then p1 else p1 then if true then p1 else true else if p1 then false else p1
        d6 : if true then if true then Bool else Bool else if false then Bool else Bool
        d6 = if if d3 then d3 else d3 then if true then false else d3 else if p1 then false else d3
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> ( ( Set -> Set ) ∋ ( ( λ x9 -> Bool ) ) ) $ ( x8 ) ) ) ) $ ( if false then Bool else Bool )
        d7 = if if false then d3 else true then if d6 then d3 else p1 else if d6 then true else false
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if false then Bool else x11 ) ) ) $ ( if true then Bool else Bool )
        d10 = if if true then d7 else true then if d7 then d6 else false else if p1 then true else d6
        d12 : if false then if true then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if false then d10 else true ) ) ) $ ( if false then p1 else p1 )
        d14 : if false then if true then Bool else Bool else if false then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> d12 ) ) ) $ ( x15 ) ) ) ) $ ( if d3 then p1 else d3 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if false then x20 else Bool ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> true ) ) ) $ ( d3 ) ) ) ) $ ( if p1 then d12 else false )
        d21 : if false then if true then Bool else Bool else if false then Bool else Bool
        d21 = if if d6 then false else d17 then if d10 then p1 else d14 else if p1 then p1 else p1
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d22 = if if p1 then p1 else p1 then if d21 then p1 else d7 else if true then true else d6
        d24 : if true then if true then Bool else Bool else if false then Bool else Bool
        d24 = if if d6 then d6 else true then if d3 then true else d3 else if p1 then p1 else d10
        d25 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> x27 ) ) ) $ ( x27 ) ) ) ) $ ( if false then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if false then true else false ) ) ) $ ( if p1 then false else p1 )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> d3 ) ) ) $ ( x30 ) ) ) ) $ ( if p1 then true else d12 )
        d34 : if false then if false then Bool else Bool else if true then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if x35 then false else false ) ) ) $ ( if false then d29 else p1 )
        d36 : if true then if true then Bool else Bool else if true then Bool else Bool
        d36 = if if true then d25 else p1 then if p1 then true else true else if d7 then p1 else d25
        d37 : if true then if true then Bool else Bool else if true then Bool else Bool
        d37 = if if d3 then d6 else false then if d25 then d34 else d3 else if p1 then p1 else true
        d38 : if false then if false then Bool else Bool else if false then Bool else Bool
        d38 = if if true then p1 else true then if true then p1 else false else if false then false else true
        d39 : if false then if false then Bool else Bool else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then p1 else d24 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> d29 ) ) ) $ ( d14 ) ) ) ) $ ( if d25 then p1 else d17 )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> x47 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d46 = if if true then p1 else d24 then if p1 then p1 else false else if p1 then false else true
        d49 : if true then if true then Bool else Bool else if false then Bool else Bool
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if true then d37 else x50 ) ) ) $ ( if d39 then d29 else true )
        d51 : if false then if true then Bool else Bool else if false then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> x53 ) ) ) $ ( d10 ) ) ) ) $ ( if true then d21 else p1 )
        d54 : if false then if true then Bool else Bool else if true then Bool else Bool
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> ( ( Bool -> Bool ) ∋ ( ( λ x56 -> p1 ) ) ) $ ( d6 ) ) ) ) $ ( if false then p1 else p1 )
        d57 : if true then if false then Bool else Bool else if false then Bool else Bool
        d57 = if if d6 then false else p1 then if d39 then d17 else false else if d51 then true else true
        d58 : if false then if false then Bool else Bool else if true then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if d29 then p1 else d24 ) ) ) $ ( if d12 then p1 else false )
        d60 : if false then if true then Bool else Bool else if false then Bool else Bool
        d60 = if if false then p1 else d46 then if p1 then true else false else if p1 then d14 else d21
        d61 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if false then Bool else x63 ) ) ) $ ( if false then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if p1 then true else p1 ) ) ) $ ( if d24 then false else true )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> Bool ) ) ) $ ( x66 ) ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if true then x65 else p1 ) ) ) $ ( if true then p1 else true )
        d68 : if true then if true then Bool else Bool else if true then Bool else Bool
        d68 = if if p1 then false else d36 then if true then false else d37 else if p1 then p1 else d60
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if true then x70 else x70 ) ) ) $ ( if false then Bool else Bool )
        d69 = if if p1 then p1 else p1 then if d36 then false else d24 else if d3 then d38 else true
        d71 : if false then if false then Bool else Bool else if true then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if false then true else d14 ) ) ) $ ( if false then false else p1 )
        d73 : if false then if false then Bool else Bool else if true then Bool else Bool
        d73 = if if d71 then p1 else p1 then if p1 then p1 else false else if p1 then d10 else p1
        d74 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> p1 ) ) ) $ ( d21 ) ) ) ) $ ( if p1 then p1 else p1 )
        d78 : if true then if true then Bool else Bool else if false then Bool else Bool
        d78 = if if d49 then p1 else d21 then if p1 then d57 else d69 else if p1 then p1 else d60
        d79 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if p1 then true else p1 ) ) ) $ ( if p1 then p1 else d3 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if false then Bool else x86 ) ) ) $ ( if false then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> ( ( Bool -> Bool ) ∋ ( ( λ x85 -> d25 ) ) ) $ ( x84 ) ) ) ) $ ( if d29 then true else true )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> x89 ) ) ) $ ( x88 ) ) ) ) $ ( if true then Bool else Bool )
        d87 = if if p1 then p1 else true then if d36 then d12 else d69 else if false then p1 else d79
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> x91 ) ) ) $ ( x91 ) ) ) ) $ ( if true then Bool else Bool )
        d90 = if if p1 then p1 else p1 then if p1 then true else d7 else if true then false else p1
        d93 : if true then if true then Bool else Bool else if false then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> p1 ) ) ) $ ( true ) ) ) ) $ ( if true then d51 else p1 )
        d96 : if false then if true then Bool else Bool else if false then Bool else Bool
        d96 = if if p1 then true else d12 then if true then d61 else p1 else if d29 then d12 else d29
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> x99 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d97 = if if false then p1 else d64 then if true then p1 else false else if p1 then false else true
        d100 : if true then if true then Bool else Bool else if false then Bool else Bool
        d100 = if if d97 then d25 else d61 then if d74 then true else d61 else if false then true else true
        d101 : if true then if false then Bool else Bool else if true then Bool else Bool
        d101 = if if true then true else d73 then if p1 then d34 else d25 else if d78 then d96 else d60
        d102 : if true then if false then Bool else Bool else if false then Bool else Bool
        d102 = if if d101 then false else p1 then if false then p1 else false else if d83 then d74 else false
        d103 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> ( ( Bool -> Bool ) ∋ ( ( λ x105 -> d102 ) ) ) $ ( x104 ) ) ) ) $ ( if d42 then p1 else d102 )
        d108 : if false then if true then Bool else Bool else if false then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> if true then d22 else false ) ) ) $ ( if d74 then false else d71 )
        d110 : if false then if true then Bool else Bool else if true then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> d49 ) ) ) $ ( d101 ) ) ) ) $ ( if d78 then p1 else d3 )
        d113 : if false then if true then Bool else Bool else if false then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if false then d49 else x114 ) ) ) $ ( if true then false else p1 )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> Bool ) ) ) $ ( x118 ) ) ) ) $ ( if false then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> false ) ) ) $ ( false ) ) ) ) $ ( if d78 then false else p1 )
        d120 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if x121 then false else p1 ) ) ) $ ( if p1 then false else true )
        d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> if true then Bool else x124 ) ) ) $ ( if true then Bool else Bool )
        d123 = if if d39 then d12 else true then if false then false else p1 else if p1 then p1 else d49
    module M'  = M ( false ) 