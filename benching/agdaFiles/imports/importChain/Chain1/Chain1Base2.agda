module Chain1Base2  where
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
        d2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> ( ( Set -> Set ) ∋ ( ( λ x4 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d2 = if if p1 then true else false then if p1 then p1 else false else if true then false else p1
        d5 : if false then if true then Bool else Bool else if true then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> d2 ) ) ) $ ( d2 ) ) ) ) $ ( if p1 then d2 else d2 )
        d8 : if false then if true then Bool else Bool else if true then Bool else Bool
        d8 = if if d2 then p1 else p1 then if p1 then p1 else d5 else if p1 then p1 else p1
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if true then x10 else x10 ) ) ) $ ( if false then Bool else Bool )
        d9 = if if d2 then p1 else p1 then if p1 then d8 else p1 else if false then true else p1
        d11 : if true then if true then Bool else Bool else if true then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if d9 then x12 else d9 ) ) ) $ ( if p1 then d2 else p1 )
        d13 : if false then if false then Bool else Bool else if true then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> d11 ) ) ) $ ( false ) ) ) ) $ ( if true then d5 else d8 )
        d16 : if true then if true then Bool else Bool else if true then Bool else Bool
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if d2 then false else p1 )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x21 ) ) ) $ ( x20 ) ) ) ) $ ( if false then Bool else Bool )
        d19 = if if true then true else true then if true then false else p1 else if false then true else true
        d22 : if true then if true then Bool else Bool else if true then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> d13 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then true else p1 )
        d25 : if false then if false then Bool else Bool else if true then Bool else Bool
        d25 = if if p1 then d13 else true then if d11 then false else d9 else if d22 then false else d22
        d26 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> d2 ) ) ) $ ( p1 ) ) ) ) $ ( if false then p1 else d11 )
        d30 : if true then if false then Bool else Bool else if false then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> false ) ) ) $ ( x31 ) ) ) ) $ ( if d26 then d2 else p1 )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x36 -> if false then x36 else Bool ) ) ) $ ( if false then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> d16 ) ) ) $ ( x34 ) ) ) ) $ ( if d5 then d9 else true )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x38 -> if false then Bool else x38 ) ) ) $ ( if false then Bool else Bool )
        d37 = if if d5 then p1 else p1 then if d13 then d33 else false else if false then d11 else d11
        d39 : ( ( Set -> Set ) ∋ ( ( λ x42 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> true ) ) ) $ ( x40 ) ) ) ) $ ( if d9 then false else p1 )
        d43 : if false then if true then Bool else Bool else if false then Bool else Bool
        d43 = if if false then d39 else p1 then if true then d13 else p1 else if p1 then d11 else false
        d44 : if true then if false then Bool else Bool else if true then Bool else Bool
        d44 = if if p1 then d13 else p1 then if true then p1 else p1 else if false then true else p1
        d45 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if true then Bool else x47 ) ) ) $ ( if false then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if false then false else p1 ) ) ) $ ( if p1 then p1 else true )
        d48 : if false then if false then Bool else Bool else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> false ) ) ) $ ( x49 ) ) ) ) $ ( if d30 then d16 else d22 )
        d51 : if true then if false then Bool else Bool else if false then Bool else Bool
        d51 = if if p1 then d44 else false then if false then false else d25 else if true then d25 else d33
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> Bool ) ) ) $ ( x53 ) ) ) ) $ ( if false then Bool else Bool )
        d52 = if if true then d19 else p1 then if p1 then d26 else d45 else if true then false else d51
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> x56 ) ) ) $ ( x56 ) ) ) ) $ ( if true then Bool else Bool )
        d55 = if if p1 then p1 else d13 then if d30 then p1 else p1 else if d22 then d43 else d2
        d58 : if true then if false then Bool else Bool else if true then Bool else Bool
        d58 = if if false then p1 else p1 then if false then p1 else d25 else if d37 then true else p1
        d59 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then p1 else p1 )
        d63 : if true then if true then Bool else Bool else if false then Bool else Bool
        d63 = if if p1 then d30 else p1 then if d39 then p1 else false else if d44 then d8 else true
        d64 : if true then if false then Bool else Bool else if true then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> x66 ) ) ) $ ( false ) ) ) ) $ ( if p1 then false else d63 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if true then x68 else x68 ) ) ) $ ( if true then Bool else Bool )
        d67 = if if d55 then true else false then if d37 then p1 else false else if true then false else d9
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> x71 ) ) ) $ ( x70 ) ) ) ) $ ( if true then Bool else Bool )
        d69 = if if p1 then d59 else p1 then if p1 then p1 else false else if true then d44 else false
        d72 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if false then x74 else Bool ) ) ) $ ( if false then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if true then p1 else x73 ) ) ) $ ( if true then p1 else true )
        d75 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if true then x76 else Bool ) ) ) $ ( if true then Bool else Bool )
        d75 = if if true then p1 else d43 then if d48 then p1 else p1 else if false then p1 else true
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if true then x78 else Bool ) ) ) $ ( if false then Bool else Bool )
        d77 = if if p1 then p1 else false then if d30 then p1 else p1 else if p1 then d16 else d75
        d79 : if true then if false then Bool else Bool else if true then Bool else Bool
        d79 = if if p1 then false else p1 then if p1 then d16 else p1 else if p1 then true else true
        d80 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if false then Bool else x82 ) ) ) $ ( if false then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if p1 then d55 else true ) ) ) $ ( if p1 then d64 else false )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d83 = if if p1 then false else false then if d2 then p1 else p1 else if d80 then false else p1
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d86 = if if true then false else d5 then if p1 then p1 else false else if false then d80 else p1
        d88 : if false then if false then Bool else Bool else if true then Bool else Bool
        d88 = if if true then d26 else d39 then if p1 then d33 else true else if p1 then d55 else d37
        d89 : if true then if false then Bool else Bool else if true then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> d30 ) ) ) $ ( p1 ) ) ) ) $ ( if true then d86 else p1 )
        d92 : if false then if false then Bool else Bool else if false then Bool else Bool
        d92 = if if d48 then true else d51 then if true then true else p1 else if d86 then d19 else d45
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d93 = if if p1 then true else d69 then if p1 then false else true else if d77 then true else d83
        d95 : if true then if false then Bool else Bool else if false then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if false then p1 else false ) ) ) $ ( if p1 then p1 else p1 )
        d97 : if true then if true then Bool else Bool else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d100 : if false then if true then Bool else Bool else if false then Bool else Bool
        d100 = if if false then d83 else d55 then if d55 then p1 else d33 else if p1 then d44 else d16
        d101 : if true then if false then Bool else Bool else if false then Bool else Bool
        d101 = if if d86 then false else p1 then if p1 then true else p1 else if p1 then d48 else true
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if true then x103 else x103 ) ) ) $ ( if false then Bool else Bool )
        d102 = if if d55 then d25 else d59 then if d95 then true else false else if p1 then d67 else d26
        d104 : if false then if false then Bool else Bool else if false then Bool else Bool
        d104 = if if true then d72 else true then if true then false else p1 else if false then p1 else true
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d105 = if if p1 then p1 else p1 then if p1 then false else d8 else if p1 then d88 else d19
        d107 : if false then if true then Bool else Bool else if true then Bool else Bool
        d107 = if if true then false else d75 then if d72 then d5 else p1 else if d37 then d22 else d9
        d108 : if true then if false then Bool else Bool else if false then Bool else Bool
        d108 = if if true then false else d86 then if p1 then p1 else p1 else if true then d102 else p1
        d109 : ( ( Set -> Set ) ∋ ( ( λ x111 -> if true then Bool else x111 ) ) ) $ ( if false then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if x110 then x110 else x110 ) ) ) $ ( if p1 then p1 else d105 )
        d112 : if true then if true then Bool else Bool else if true then Bool else Bool
        d112 = if if p1 then d22 else p1 then if d39 then p1 else false else if d9 then true else p1
    module M'  = M ( true ) 