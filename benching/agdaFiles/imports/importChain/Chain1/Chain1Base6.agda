module Chain1Base6  where
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

    module M ( p1 : if false then Bool else Bool )  where
        d2 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d2 = ( ( Bool -> Bool ) ∋ ( ( λ x3 -> ( ( Bool -> Bool ) ∋ ( ( λ x4 -> false ) ) ) $ ( x3 ) ) ) ) $ ( if p1 then p1 else p1 )
        d6 : if true then if true then Bool else Bool else if false then Bool else Bool
        d6 = if if false then false else false then if d2 then d2 else d2 else if d2 then true else d2
        d7 : if true then if false then Bool else Bool else if true then Bool else Bool
        d7 = if if false then p1 else false then if true then p1 else d2 else if true then p1 else false
        d8 : if true then if false then Bool else Bool else if false then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> x10 ) ) ) $ ( true ) ) ) ) $ ( if p1 then d7 else d6 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> x12 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d11 = if if true then p1 else true then if d8 then true else false else if d7 then true else p1
        d14 : if false then if true then Bool else Bool else if true then Bool else Bool
        d14 = if if d11 then d6 else d11 then if true then d11 else p1 else if p1 then p1 else true
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> if false then x16 else x16 ) ) ) $ ( if false then Bool else Bool )
        d15 = if if false then d11 else p1 then if false then p1 else true else if false then p1 else p1
        d17 : if false then if false then Bool else Bool else if false then Bool else Bool
        d17 = if if p1 then true else p1 then if true then d2 else d2 else if p1 then d2 else d2
        d18 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x21 ) ) ) $ ( x20 ) ) ) ) $ ( if false then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if true then d17 else false ) ) ) $ ( if d15 then d14 else false )
        d22 : if false then if false then Bool else Bool else if false then Bool else Bool
        d22 = if if p1 then d18 else d6 then if false then p1 else d15 else if p1 then true else false
        d23 : if false then if true then Bool else Bool else if true then Bool else Bool
        d23 = if if d14 then d11 else d7 then if d8 then p1 else p1 else if true then d2 else d17
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then x25 else x25 ) ) ) $ ( if true then Bool else Bool )
        d24 = if if true then true else false then if p1 then p1 else p1 else if false then p1 else d14
        d26 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> x29 ) ) ) $ ( x28 ) ) ) ) $ ( if false then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> if true then p1 else false ) ) ) $ ( if false then false else false )
        d30 : if false then if false then Bool else Bool else if true then Bool else Bool
        d30 = if if d18 then p1 else d22 then if d26 then d24 else true else if false then p1 else d17
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if true then x32 else x32 ) ) ) $ ( if false then Bool else Bool )
        d31 = if if d17 then p1 else false then if p1 then false else true else if false then true else false
        d33 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> x36 ) ) ) $ ( x35 ) ) ) ) $ ( if true then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if d7 then p1 else x34 ) ) ) $ ( if p1 then p1 else d24 )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> x38 ) ) ) $ ( x38 ) ) ) ) $ ( if false then Bool else Bool )
        d37 = if if p1 then p1 else true then if d30 then d22 else d7 else if d15 then d23 else d6
        d40 : if true then if false then Bool else Bool else if true then Bool else Bool
        d40 = if if p1 then true else p1 then if d14 then false else d17 else if d15 then d18 else p1
        d41 : ( ( Set -> Set ) ∋ ( ( λ x42 -> if false then Bool else x42 ) ) ) $ ( if true then Bool else Bool )
        d41 = if if p1 then d22 else true then if p1 then true else p1 else if p1 then d6 else d33
        d43 : if false then if true then Bool else Bool else if false then Bool else Bool
        d43 = if if true then d18 else false then if d31 then false else p1 else if p1 then p1 else p1
        d44 : if false then if true then Bool else Bool else if false then Bool else Bool
        d44 = if if d6 then d31 else p1 then if p1 then p1 else p1 else if false then true else p1
        d45 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if false then x47 else x47 ) ) ) $ ( if true then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if d15 then d8 else d22 ) ) ) $ ( if p1 then p1 else false )
        d48 : if true then if true then Bool else Bool else if true then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if p1 then d37 else true ) ) ) $ ( if d8 then false else d33 )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d50 = if if true then d7 else p1 then if d40 then d37 else true else if p1 then false else d41
        d53 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> p1 ) ) ) $ ( d33 ) ) ) ) $ ( if false then d45 else p1 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> x59 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d58 = if if false then d37 else p1 then if d43 then d48 else false else if d45 then true else p1
        d61 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if true then x63 else x63 ) ) ) $ ( if true then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if p1 then true else x62 ) ) ) $ ( if true then p1 else d31 )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x65 -> if true then x65 else Bool ) ) ) $ ( if true then Bool else Bool )
        d64 = if if d11 then d45 else d14 then if d17 then false else p1 else if false then d7 else true
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then x67 else x67 ) ) ) $ ( if false then Bool else Bool )
        d66 = if if d6 then d45 else p1 then if d23 then p1 else d33 else if true then true else false
        d68 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> Bool ) ) ) $ ( x70 ) ) ) ) $ ( if true then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if p1 then d24 else x69 ) ) ) $ ( if p1 then true else d53 )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x73 ) ) ) $ ( x73 ) ) ) ) $ ( if true then Bool else Bool )
        d72 = if if d68 then d64 else p1 then if d45 then p1 else p1 else if p1 then d44 else true
        d75 : if true then if true then Bool else Bool else if false then Bool else Bool
        d75 = if if p1 then true else p1 then if false then p1 else true else if p1 then false else d23
        d76 : if true then if false then Bool else Bool else if true then Bool else Bool
        d76 = if if p1 then p1 else d66 then if true then d66 else false else if d23 then d53 else false
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if true then x78 else x78 ) ) ) $ ( if false then Bool else Bool )
        d77 = if if p1 then p1 else p1 then if d37 then p1 else false else if true then p1 else d72
        d79 : if true then if true then Bool else Bool else if false then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if true then d8 else d58 ) ) ) $ ( if d2 then p1 else d7 )
        d81 : if false then if true then Bool else Bool else if false then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if d44 then true else true ) ) ) $ ( if true then p1 else false )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if true then x86 else x86 ) ) ) $ ( if true then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> ( ( Bool -> Bool ) ∋ ( ( λ x85 -> x85 ) ) ) $ ( p1 ) ) ) ) $ ( if true then p1 else true )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> d37 ) ) ) $ ( p1 ) ) ) ) $ ( if true then d7 else d2 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> Bool ) ) ) $ ( x95 ) ) ) ) $ ( if false then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( ( Bool -> Bool ) ∋ ( ( λ x94 -> false ) ) ) $ ( d76 ) ) ) ) $ ( if p1 then d77 else p1 )
        d97 : if false then if true then Bool else Bool else if false then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if d24 then false else d87 ) ) ) $ ( if d48 then d23 else p1 )
        d99 : if false then if true then Bool else Bool else if true then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> p1 ) ) ) $ ( d68 ) ) ) ) $ ( if false then false else false )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> x104 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d102 = if if d66 then d61 else p1 then if p1 then d24 else d24 else if d26 then p1 else true
        d105 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if true then x107 else x107 ) ) ) $ ( if false then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if false then d7 else x106 ) ) ) $ ( if false then false else false )
        d108 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if true then Bool else x110 ) ) ) $ ( if false then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> if false then false else p1 ) ) ) $ ( if p1 then p1 else d22 )
        d111 : if false then if false then Bool else Bool else if false then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> p1 ) ) ) $ ( d8 ) ) ) ) $ ( if d58 then true else d43 )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if true then x115 else x115 ) ) ) $ ( if false then Bool else Bool )
        d114 = if if p1 then p1 else false then if d58 then p1 else d68 else if p1 then p1 else p1
        d116 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then x119 else x119 ) ) ) $ ( if false then Bool else Bool )
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> ( ( Bool -> Bool ) ∋ ( ( λ x118 -> d18 ) ) ) $ ( true ) ) ) ) $ ( if p1 then false else true )
        d120 : if false then if false then Bool else Bool else if true then Bool else Bool
        d120 = if if d79 then true else d31 then if p1 then false else d8 else if p1 then p1 else true
        d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if true then x122 else Bool ) ) ) $ ( if false then Bool else Bool )
        d121 = if if d64 then p1 else p1 then if d37 then p1 else d72 else if p1 then d41 else p1
        d123 : if true then if false then Bool else Bool else if true then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> if true then true else d41 ) ) ) $ ( if p1 then true else false )
    module M'  = M ( false ) 