module Chain3Base3  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then x2 else Bool ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then x4 else x4 ) ) ) $ ( Bool ) ) ( p5 : if false then Bool else Bool )  where
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d6 = if if p1 then p3 else false then if true then true else false else if false then p5 else p1
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if false then x9 else x9 ) ) ) $ ( if true then Bool else Bool )
        d8 = if if d6 then true else true then if false then false else false else if true then p3 else true
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> x11 ) ) ) $ ( x11 ) ) ) ) $ ( if true then Bool else Bool )
        d10 = if if d6 then p3 else false then if p3 then p3 else p1 else if d8 then p1 else p3
        d13 : if false then if true then Bool else Bool else if false then Bool else Bool
        d13 = if if true then false else p5 then if p3 then p1 else p3 else if d6 then d8 else p3
        d14 : if false then if false then Bool else Bool else if false then Bool else Bool
        d14 = if if true then d6 else p1 then if p5 then d10 else p1 else if p5 then d10 else d8
        d15 : if true then if true then Bool else Bool else if false then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if d10 then x16 else d10 ) ) ) $ ( if true then d6 else false )
        d17 : if true then if false then Bool else Bool else if true then Bool else Bool
        d17 = if if p1 then d15 else d15 then if true then d14 else d15 else if d13 then p5 else true
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if true then x19 else x19 ) ) ) $ ( if true then Bool else Bool )
        d18 = if if false then d13 else true then if p5 then false else true else if p5 then true else p5
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if true then x21 else Bool ) ) ) $ ( if false then Bool else Bool )
        d20 = if if d18 then d10 else true then if d18 then p5 else p1 else if true then true else false
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if true then x23 else Bool ) ) ) $ ( if true then Bool else Bool )
        d22 = if if p5 then false else false then if p1 then false else d17 else if d15 then d14 else true
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d24 = if if true then p3 else p5 then if d18 then d22 else d17 else if d20 then true else false
        d27 : if false then if true then Bool else Bool else if false then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if d6 then d22 else false ) ) ) $ ( if p1 then true else d20 )
        d29 : if true then if false then Bool else Bool else if true then Bool else Bool
        d29 = if if true then d24 else p1 then if p5 then d6 else p5 else if p1 then true else p3
        d30 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> x32 ) ) ) $ ( d18 ) ) ) ) $ ( if p3 then p1 else d18 )
        d35 : if false then if false then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if true then p5 else p5 )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> Bool ) ) ) $ ( x39 ) ) ) ) $ ( if true then Bool else Bool )
        d38 = if if d24 then true else d10 then if d15 then p5 else true else if false then p5 else true
        d41 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if false then d6 else d17 ) ) ) $ ( if d24 then false else false )
        d44 : if false then if false then Bool else Bool else if false then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> false ) ) ) $ ( p5 ) ) ) ) $ ( if d22 then d15 else d35 )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> if false then p3 else d10 ) ) ) $ ( if p5 then p5 else d15 )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if false then x53 else Bool ) ) ) $ ( if true then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then p5 else p1 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if true then Bool else x57 ) ) ) $ ( if false then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> ( ( Bool -> Bool ) ∋ ( ( λ x56 -> d41 ) ) ) $ ( d15 ) ) ) ) $ ( if p1 then true else p1 )
        d58 : if false then if false then Bool else Bool else if true then Bool else Bool
        d58 = if if d38 then p1 else p5 then if d18 then false else p5 else if true then d27 else d13
        d59 : if true then if false then Bool else Bool else if false then Bool else Bool
        d59 = if if p1 then true else d22 then if d38 then d13 else p1 else if d6 then p1 else d47
        d60 : if true then if false then Bool else Bool else if false then Bool else Bool
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if d54 then false else d50 ) ) ) $ ( if p5 then p1 else false )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if true then Bool else x63 ) ) ) $ ( if false then Bool else Bool )
        d62 = if if p5 then true else d44 then if p5 then p5 else d58 else if p5 then false else p1
        d64 : if true then if false then Bool else Bool else if true then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> true ) ) ) $ ( true ) ) ) ) $ ( if p3 then true else p1 )
        d67 : if true then if false then Bool else Bool else if true then Bool else Bool
        d67 = if if d38 then p3 else false then if d20 then false else false else if p1 then d60 else p3
        d68 : if true then if true then Bool else Bool else if true then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> true ) ) ) $ ( true ) ) ) ) $ ( if p5 then true else true )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if false then x74 else x74 ) ) ) $ ( if false then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> d35 ) ) ) $ ( d44 ) ) ) ) $ ( if d29 then p3 else d29 )
        d75 : if false then if true then Bool else Bool else if true then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if p3 then p3 else d68 ) ) ) $ ( if d59 then p3 else p3 )
        d77 : if false then if true then Bool else Bool else if false then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> p1 ) ) ) $ ( true ) ) ) ) $ ( if p3 then false else true )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> x81 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d80 = if if d67 then p3 else p5 then if false then d20 else true else if true then true else false
        d83 : if true then if true then Bool else Bool else if true then Bool else Bool
        d83 = if if p3 then d60 else true then if d29 then true else false else if true then p3 else p1
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if true then x85 else Bool ) ) ) $ ( if false then Bool else Bool )
        d84 = if if true then false else false then if p3 then p3 else p5 else if p3 then false else d83
        d86 : if true then if true then Bool else Bool else if false then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if d80 then d67 else p1 ) ) ) $ ( if p5 then false else d80 )
        d88 : if false then if true then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if p3 then d18 else d64 ) ) ) $ ( if p3 then true else d64 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x92 -> ( ( Set -> Set ) ∋ ( ( λ x93 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if d10 then x91 else p5 ) ) ) $ ( if d29 then p3 else d50 )
        d94 : if true then if false then Bool else Bool else if false then Bool else Bool
        d94 = if if false then true else d8 then if p3 then d41 else false else if true then false else d38
        d95 : if false then if false then Bool else Bool else if false then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if false then d84 else false ) ) ) $ ( if true then d59 else true )
        d97 : if true then if true then Bool else Bool else if false then Bool else Bool
        d97 = if if true then true else false then if d22 then true else d22 else if p5 then d77 else d80
        d98 : if false then if true then Bool else Bool else if true then Bool else Bool
        d98 = if if false then p1 else true then if p1 then true else p1 else if p1 then false else true
        d99 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> true ) ) ) $ ( x100 ) ) ) ) $ ( if p5 then d67 else true )
        d104 : if false then if true then Bool else Bool else if false then Bool else Bool
        d104 = if if d50 then false else false then if p5 then d62 else d35 else if d58 then d64 else false
        d105 : if false then if false then Bool else Bool else if false then Bool else Bool
        d105 = if if p3 then true else p1 then if p5 then d18 else d18 else if d104 then p3 else d47
        d106 : if true then if true then Bool else Bool else if true then Bool else Bool
        d106 = if if true then false else p3 then if d47 then d84 else p3 else if p5 then p1 else p1
        d107 : if true then if false then Bool else Bool else if false then Bool else Bool
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> if d60 then d30 else d29 ) ) ) $ ( if true then p1 else false )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then x110 else x110 ) ) ) $ ( if true then Bool else Bool )
        d109 = if if false then p3 else false then if d98 then d27 else d107 else if p3 then p5 else true
        d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if false then Bool else x112 ) ) ) $ ( if false then Bool else Bool )
        d111 = if if false then d6 else d94 then if p5 then d94 else p1 else if d88 then d17 else true
        d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if false then x114 else Bool ) ) ) $ ( if false then Bool else Bool )
        d113 = if if d18 then d106 else false then if d107 then true else p5 else if p3 then true else p5
        d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if false then x116 else x116 ) ) ) $ ( if false then Bool else Bool )
        d115 = if if p3 then false else true then if p5 then d105 else true else if d95 then p5 else true
    module M'  = M ( false ) 