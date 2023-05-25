module Chain1Base12  where
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
        d2 = ( ( Bool -> Bool ) ∋ ( ( λ x3 -> if true then p1 else true ) ) ) $ ( if false then p1 else p1 )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> ( ( Set -> Set ) ∋ ( ( λ x6 -> x6 ) ) ) $ ( x5 ) ) ) ) $ ( if true then Bool else Bool )
        d4 = if if p1 then false else d2 then if true then p1 else true else if false then p1 else d2
        d7 : if true then if true then Bool else Bool else if false then Bool else Bool
        d7 = if if true then false else p1 then if d2 then p1 else true else if p1 then false else true
        d8 : if true then if false then Bool else Bool else if true then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> x10 ) ) ) $ ( d4 ) ) ) ) $ ( if d7 then d4 else false )
        d11 : if true then if true then Bool else Bool else if false then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if true then false else true ) ) ) $ ( if d7 then d8 else d8 )
        d13 : if true then if false then Bool else Bool else if true then Bool else Bool
        d13 = if if true then p1 else p1 then if p1 then p1 else d8 else if d11 then d7 else d8
        d14 : if true then if true then Bool else Bool else if false then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> x16 ) ) ) $ ( false ) ) ) ) $ ( if p1 then false else d7 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if true then Bool else x19 ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if d7 then p1 else d2 ) ) ) $ ( if d8 then p1 else false )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> ( ( Set -> Set ) ∋ ( ( λ x22 -> x21 ) ) ) $ ( x21 ) ) ) ) $ ( if true then Bool else Bool )
        d20 = if if p1 then p1 else false then if false then p1 else p1 else if false then p1 else p1
        d23 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then Bool else x25 ) ) ) $ ( if false then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> if d8 then d14 else p1 ) ) ) $ ( if true then p1 else p1 )
        d26 : if false then if false then Bool else Bool else if false then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> x27 ) ) ) $ ( false ) ) ) ) $ ( if p1 then p1 else true )
        d29 : if false then if false then Bool else Bool else if false then Bool else Bool
        d29 = if if p1 then p1 else p1 then if p1 then d7 else true else if d26 then p1 else false
        d30 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> Bool ) ) ) $ ( x32 ) ) ) ) $ ( if true then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if x31 then false else p1 ) ) ) $ ( if p1 then false else false )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> d11 ) ) ) $ ( p1 ) ) ) ) $ ( if false then p1 else d7 )
        d38 : if true then if false then Bool else Bool else if true then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( ( Bool -> Bool ) ∋ ( ( λ x40 -> true ) ) ) $ ( true ) ) ) ) $ ( if d29 then p1 else true )
        d41 : if false then if true then Bool else Bool else if false then Bool else Bool
        d41 = if if p1 then p1 else d34 then if p1 then d29 else d2 else if true then d14 else true
        d42 : if false then if false then Bool else Bool else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> d13 ) ) ) $ ( d4 ) ) ) ) $ ( if d29 then false else p1 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if false then x46 else x46 ) ) ) $ ( if false then Bool else Bool )
        d45 = if if false then false else false then if p1 then d26 else true else if d26 then d34 else p1
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> Bool ) ) ) $ ( x48 ) ) ) ) $ ( if false then Bool else Bool )
        d47 = if if d17 then d29 else p1 then if d34 then d30 else p1 else if d4 then d38 else d4
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> x51 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d50 = if if false then true else p1 then if d42 then d23 else p1 else if p1 then p1 else d13
        d53 : if true then if false then Bool else Bool else if true then Bool else Bool
        d53 = if if d34 then false else false then if p1 then d23 else p1 else if p1 then p1 else false
        d54 : if false then if true then Bool else Bool else if true then Bool else Bool
        d54 = if if d53 then d14 else p1 then if d17 then p1 else d14 else if p1 then false else true
        d55 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> x58 ) ) ) $ ( x58 ) ) ) ) $ ( if false then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> d23 ) ) ) $ ( d50 ) ) ) ) $ ( if p1 then d4 else p1 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> x61 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d60 = if if false then false else false then if true then p1 else p1 else if false then p1 else p1
        d63 : if false then if false then Bool else Bool else if false then Bool else Bool
        d63 = if if true then p1 else false then if d55 then false else p1 else if p1 then true else p1
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> false ) ) ) $ ( x65 ) ) ) ) $ ( if d23 then false else false )
        d68 : if false then if true then Bool else Bool else if false then Bool else Bool
        d68 = if if p1 then p1 else p1 then if d8 then p1 else d7 else if p1 then p1 else true
        d69 : if true then if true then Bool else Bool else if false then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if true then p1 else d20 ) ) ) $ ( if d45 then d45 else d64 )
        d71 : if true then if true then Bool else Bool else if true then Bool else Bool
        d71 = if if d20 then d38 else false then if true then d29 else true else if p1 then p1 else p1
        d72 : if true then if false then Bool else Bool else if false then Bool else Bool
        d72 = if if false then false else p1 then if false then p1 else false else if d45 then d60 else d38
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if false then x74 else x74 ) ) ) $ ( if true then Bool else Bool )
        d73 = if if p1 then true else p1 then if p1 then d47 else false else if d14 then p1 else true
        d75 : if false then if true then Bool else Bool else if true then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> p1 ) ) ) $ ( d2 ) ) ) ) $ ( if false then false else d42 )
        d78 : if true then if true then Bool else Bool else if false then Bool else Bool
        d78 = if if p1 then true else false then if p1 then p1 else d54 else if d63 then true else false
        d79 : if false then if true then Bool else Bool else if false then Bool else Bool
        d79 = if if false then true else d60 then if p1 then p1 else d34 else if d4 then p1 else d73
        d80 : if false then if false then Bool else Bool else if true then Bool else Bool
        d80 = if if d38 then p1 else d75 then if true then d42 else d30 else if d26 then p1 else true
        d81 : if false then if false then Bool else Bool else if false then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if d38 then d69 else d20 ) ) ) $ ( if p1 then p1 else p1 )
        d83 : if false then if true then Bool else Bool else if false then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> ( ( Bool -> Bool ) ∋ ( ( λ x85 -> true ) ) ) $ ( false ) ) ) ) $ ( if p1 then p1 else true )
        d86 : if false then if true then Bool else Bool else if true then Bool else Bool
        d86 = if if p1 then d83 else true then if p1 then false else d4 else if false then true else true
        d87 : if true then if false then Bool else Bool else if true then Bool else Bool
        d87 = if if p1 then true else p1 then if false then p1 else false else if p1 then p1 else p1
        d88 : if true then if false then Bool else Bool else if false then Bool else Bool
        d88 = if if d41 then true else p1 then if d75 then false else d26 else if d81 then false else p1
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d89 = if if false then p1 else d73 then if d45 then false else d14 else if d75 then d8 else p1
        d91 : if false then if true then Bool else Bool else if false then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if false then d4 else d55 ) ) ) $ ( if d72 then true else true )
        d93 : if true then if true then Bool else Bool else if true then Bool else Bool
        d93 = if if d11 then d54 else d26 then if p1 then p1 else p1 else if true then p1 else p1
        d94 : ( ( Set -> Set ) ∋ ( ( λ x96 -> if true then x96 else Bool ) ) ) $ ( if true then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if x95 then true else false ) ) ) $ ( if d78 then d79 else d81 )
        d97 : if false then if true then Bool else Bool else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> d17 ) ) ) $ ( x98 ) ) ) ) $ ( if p1 then d88 else d83 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> x102 ) ) ) $ ( x102 ) ) ) ) $ ( if true then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if true then x101 else x101 ) ) ) $ ( if p1 then p1 else p1 )
        d104 : if true then if false then Bool else Bool else if false then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> x105 ) ) ) $ ( d29 ) ) ) ) $ ( if p1 then d80 else d78 )
        d107 : if true then if true then Bool else Bool else if false then Bool else Bool
        d107 = if if p1 then d93 else d97 then if p1 then true else p1 else if p1 then false else false
        d108 : if false then if false then Bool else Bool else if true then Bool else Bool
        d108 = if if d107 then false else p1 then if d7 then p1 else true else if p1 then d89 else d26
        d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if true then x110 else x110 ) ) ) $ ( if false then Bool else Bool )
        d109 = if if true then d94 else false then if true then p1 else d55 else if true then p1 else p1
    module M'  = M ( false ) 