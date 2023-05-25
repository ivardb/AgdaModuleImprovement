module Chain1Base13  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then Bool else Bool ) ) ) $ ( Bool ) )  where
        d3 : if false then if false then Bool else Bool else if true then Bool else Bool
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> if p1 then p1 else p1 ) ) ) $ ( if true then p1 else true )
        d5 : if false then if true then Bool else Bool else if false then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if x6 then x6 else x6 ) ) ) $ ( if false then false else d3 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d7 = if if d5 then d5 else p1 then if p1 then p1 else false else if d5 then true else false
        d9 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if true then x11 else x11 ) ) ) $ ( if true then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if p1 then p1 else x10 ) ) ) $ ( if false then false else d5 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> if false then Bool else x13 ) ) ) $ ( if false then Bool else Bool )
        d12 = if if true then p1 else false then if p1 then false else d9 else if false then d3 else p1
        d14 : if false then if false then Bool else Bool else if false then Bool else Bool
        d14 = if if p1 then false else p1 then if d9 then d7 else d9 else if d3 then d3 else d9
        d15 : if true then if false then Bool else Bool else if true then Bool else Bool
        d15 = if if p1 then false else true then if p1 then d5 else true else if d5 then true else false
        d16 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if d7 then true else d9 ) ) ) $ ( if p1 then d9 else d15 )
        d19 : if true then if false then Bool else Bool else if false then Bool else Bool
        d19 = if if false then false else d3 then if p1 then p1 else false else if p1 then p1 else p1
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> ( ( Set -> Set ) ∋ ( ( λ x22 -> x22 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d20 = if if p1 then true else d15 then if p1 then true else false else if p1 then p1 else false
        d23 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> if d5 then x24 else d7 ) ) ) $ ( if d5 then d16 else p1 )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> x27 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d26 = if if p1 then d15 else false then if d14 then d15 else false else if p1 then d12 else p1
        d29 : if false then if false then Bool else Bool else if true then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if d23 then d14 else true ) ) ) $ ( if p1 then p1 else false )
        d31 : if true then if false then Bool else Bool else if false then Bool else Bool
        d31 = if if p1 then p1 else d16 then if p1 then p1 else p1 else if d9 then d29 else false
        d32 : if false then if true then Bool else Bool else if true then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if d29 then d23 else d26 ) ) ) $ ( if d12 then true else d19 )
        d34 : if true then if true then Bool else Bool else if false then Bool else Bool
        d34 = if if p1 then p1 else p1 then if d29 then true else p1 else if d26 then d15 else p1
        d35 : if false then if true then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if true then p1 else true ) ) ) $ ( if p1 then true else false )
        d37 : if true then if true then Bool else Bool else if false then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if x38 then true else false ) ) ) $ ( if p1 then p1 else d32 )
        d39 : if false then if false then Bool else Bool else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if false then d26 else d20 ) ) ) $ ( if false then d37 else d31 )
        d41 : if false then if true then Bool else Bool else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if x42 then false else d35 ) ) ) $ ( if d34 then p1 else p1 )
        d43 : if false then if false then Bool else Bool else if true then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if true then true else d32 ) ) ) $ ( if d19 then false else d35 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x48 -> if false then Bool else x48 ) ) ) $ ( if true then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> d26 ) ) ) $ ( true ) ) ) ) $ ( if d14 then d16 else false )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d49 = if if p1 then d15 else false then if true then p1 else p1 else if p1 then d32 else p1
        d51 : if false then if false then Bool else Bool else if true then Bool else Bool
        d51 = if if true then d19 else d7 then if true then true else p1 else if d49 then d35 else d12
        d52 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> x55 ) ) ) $ ( x55 ) ) ) ) $ ( if true then Bool else Bool )
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> false ) ) ) $ ( false ) ) ) ) $ ( if d14 then d39 else d31 )
        d57 : if true then if false then Bool else Bool else if true then Bool else Bool
        d57 = if if false then p1 else d14 then if true then p1 else d12 else if true then d12 else d51
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if true then Bool else x59 ) ) ) $ ( if false then Bool else Bool )
        d58 = if if d3 then p1 else p1 then if true then d19 else false else if d39 then d15 else false
        d60 : if true then if true then Bool else Bool else if false then Bool else Bool
        d60 = if if d15 then d51 else d39 then if true then d12 else p1 else if p1 then d35 else p1
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if true then Bool else x62 ) ) ) $ ( if false then Bool else Bool )
        d61 = if if p1 then true else true then if p1 then true else p1 else if false then d12 else p1
        d63 : if false then if false then Bool else Bool else if true then Bool else Bool
        d63 = if if p1 then p1 else d19 then if p1 then d14 else p1 else if true then d5 else p1
        d64 : if false then if true then Bool else Bool else if false then Bool else Bool
        d64 = if if true then p1 else d34 then if d63 then d19 else d63 else if p1 then false else d57
        d65 : if false then if true then Bool else Bool else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> p1 ) ) ) $ ( d49 ) ) ) ) $ ( if p1 then p1 else false )
        d68 : if false then if false then Bool else Bool else if true then Bool else Bool
        d68 = if if d35 then false else d7 then if false then p1 else p1 else if d29 then false else d61
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d69 = if if true then d23 else p1 then if p1 then d37 else false else if d7 then true else false
        d72 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if true then d69 else false ) ) ) $ ( if p1 then p1 else false )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if false then Bool else x79 ) ) ) $ ( if true then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> x78 ) ) ) $ ( true ) ) ) ) $ ( if d64 then p1 else p1 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> Bool ) ) ) $ ( x82 ) ) ) ) $ ( if true then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if true then p1 else true ) ) ) $ ( if p1 then d45 else p1 )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> Bool ) ) ) $ ( x87 ) ) ) ) $ ( if true then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> x85 ) ) ) $ ( true ) ) ) ) $ ( if p1 then p1 else d37 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if false then x92 else Bool ) ) ) $ ( if true then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> d80 ) ) ) $ ( true ) ) ) ) $ ( if d7 then false else false )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if false then Bool else x95 ) ) ) $ ( if false then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if d3 then p1 else d45 ) ) ) $ ( if p1 then d29 else d9 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> d68 ) ) ) $ ( x97 ) ) ) ) $ ( if false then p1 else false )
        d101 : if false then if false then Bool else Bool else if false then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> ( ( Bool -> Bool ) ∋ ( ( λ x103 -> x103 ) ) ) $ ( x102 ) ) ) ) $ ( if false then false else p1 )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> ( ( Set -> Set ) ∋ ( ( λ x106 -> x105 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d104 = if if p1 then p1 else true then if p1 then d76 else p1 else if true then p1 else d15
        d107 : if false then if true then Bool else Bool else if false then Bool else Bool
        d107 = if if d9 then p1 else d89 then if true then false else false else if d76 then p1 else d89
        d108 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> x112 ) ) ) $ ( x111 ) ) ) ) $ ( if false then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then true else d29 )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if true then Bool else x114 ) ) ) $ ( if false then Bool else Bool )
        d113 = if if d96 then true else p1 then if true then d89 else d51 else if d63 then d32 else false
        d115 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if false then Bool else x118 ) ) ) $ ( if true then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> false ) ) ) $ ( d12 ) ) ) ) $ ( if d35 then p1 else true )
        d119 : if false then if false then Bool else Bool else if true then Bool else Bool
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> x120 ) ) ) $ ( p1 ) ) ) ) $ ( if true then false else false )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> p1 ) ) ) $ ( x123 ) ) ) ) $ ( if p1 then p1 else true )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if false then x128 else Bool ) ) ) $ ( if false then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if p1 then d41 else x127 ) ) ) $ ( if d69 then d15 else false )
    module M'  = M ( false ) 