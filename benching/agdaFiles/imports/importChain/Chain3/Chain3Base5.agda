module Chain3Base5  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if true then x3 else x3 ) ) ) $ ( Bool ) ) ( p4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if false then x5 else Bool ) ) ) $ ( Bool ) )  where
        d6 : if true then if true then Bool else Bool else if false then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if false then p4 else false )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> x11 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if d6 then true else false ) ) ) $ ( if d6 then true else false )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x16 -> if false then x16 else x16 ) ) ) $ ( if false then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then p1 else d9 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if false then x18 else Bool ) ) ) $ ( if true then Bool else Bool )
        d17 = if if p1 then p4 else d6 then if p4 then false else d9 else if false then p2 else d6
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if false then x20 else Bool ) ) ) $ ( if true then Bool else Bool )
        d19 = if if p4 then false else p1 then if false then false else p2 else if p2 then d13 else d6
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> x22 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d21 = if if p1 then true else p1 then if p4 then p4 else d6 else if p2 then true else false
        d24 : if true then if false then Bool else Bool else if true then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> false ) ) ) $ ( false ) ) ) ) $ ( if d6 then true else p4 )
        d27 : if false then if true then Bool else Bool else if true then Bool else Bool
        d27 = if if false then d13 else p1 then if p2 then p1 else false else if d6 then d9 else false
        d28 : if true then if true then Bool else Bool else if false then Bool else Bool
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if true then p1 else p2 ) ) ) $ ( if p4 then p4 else d9 )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> Bool ) ) ) $ ( x31 ) ) ) ) $ ( if false then Bool else Bool )
        d30 = if if true then d17 else d17 then if true then false else true else if true then d17 else d17
        d33 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if true then x35 else Bool ) ) ) $ ( if true then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if p2 then x34 else false ) ) ) $ ( if p4 then d6 else d9 )
        d36 : if true then if false then Bool else Bool else if true then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if true then p2 else d13 ) ) ) $ ( if p2 then false else d19 )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d38 = if if p2 then p4 else p4 then if true then p4 else d36 else if true then d27 else p2
        d41 : if true then if true then Bool else Bool else if true then Bool else Bool
        d41 = if if p1 then p2 else true then if p1 then p1 else d19 else if d28 then false else d9
        d42 : if false then if false then Bool else Bool else if true then Bool else Bool
        d42 = if if d36 then d41 else p1 then if d9 then d30 else d13 else if p1 then p2 else p4
        d43 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if x44 then d17 else false ) ) ) $ ( if p1 then d13 else p1 )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x48 -> if false then Bool else x48 ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if p4 then d28 else true ) ) ) $ ( if p2 then d17 else false )
        d49 : if false then if true then Bool else Bool else if false then Bool else Bool
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x51 -> d33 ) ) ) $ ( x50 ) ) ) ) $ ( if d6 then true else d24 )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if false then Bool else x53 ) ) ) $ ( if true then Bool else Bool )
        d52 = if if false then p2 else p4 then if false then p4 else p4 else if d42 then true else d28
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d54 = if if false then d36 else false then if d6 then d42 else d30 else if false then true else d27
        d57 : if true then if false then Bool else Bool else if true then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if true then p4 else false ) ) ) $ ( if false then d46 else p2 )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x61 -> x61 ) ) ) $ ( x60 ) ) ) ) $ ( if false then Bool else Bool )
        d59 = if if p4 then p4 else d36 then if d42 then p2 else d28 else if true then p2 else true
        d62 : if false then if true then Bool else Bool else if false then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if d43 then d19 else false ) ) ) $ ( if true then p2 else false )
        d64 : if false then if true then Bool else Bool else if false then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> x65 ) ) ) $ ( p2 ) ) ) ) $ ( if d38 then true else d49 )
        d67 : if true then if true then Bool else Bool else if false then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if p1 then false else x68 ) ) ) $ ( if false then d19 else d28 )
        d69 : if false then if false then Bool else Bool else if true then Bool else Bool
        d69 = if if p2 then true else d19 then if p1 then p2 else p4 else if true then d64 else p2
        d70 : if true then if false then Bool else Bool else if false then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> true ) ) ) $ ( x71 ) ) ) ) $ ( if d13 then false else true )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if true then x74 else Bool ) ) ) $ ( if true then Bool else Bool )
        d73 = if if p1 then p4 else d36 then if p4 then true else p4 else if p2 then true else true
        d75 : if true then if false then Bool else Bool else if false then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if p2 then d52 else false ) ) ) $ ( if p2 then p4 else d64 )
        d77 : if false then if false then Bool else Bool else if false then Bool else Bool
        d77 = if if true then false else true then if d57 then false else p1 else if p2 then d9 else d57
        d78 : if true then if false then Bool else Bool else if false then Bool else Bool
        d78 = if if false then p1 else d73 then if d41 then d13 else true else if p2 then d77 else p2
        d79 : if true then if false then Bool else Bool else if true then Bool else Bool
        d79 = if if true then false else d27 then if p2 then d13 else p2 else if p2 then d49 else d38
        d80 : if false then if true then Bool else Bool else if false then Bool else Bool
        d80 = if if true then d21 else p4 then if p2 then true else d33 else if p2 then p2 else p2
        d81 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> Bool ) ) ) $ ( x84 ) ) ) ) $ ( if true then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> d54 ) ) ) $ ( p4 ) ) ) ) $ ( if d54 then d49 else d69 )
        d86 : if false then if true then Bool else Bool else if true then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> true ) ) ) $ ( d46 ) ) ) ) $ ( if p4 then false else d41 )
        d89 : if false then if true then Bool else Bool else if false then Bool else Bool
        d89 = if if p2 then d69 else p4 then if true then p1 else d79 else if d81 then false else p4
        d90 : if false then if false then Bool else Bool else if true then Bool else Bool
        d90 = if if p1 then p1 else p4 then if d41 then d13 else p4 else if false then d80 else true
        d91 : if false then if true then Bool else Bool else if false then Bool else Bool
        d91 = if if p1 then p4 else d54 then if d24 then d19 else p2 else if p4 then p2 else true
        d92 : if false then if false then Bool else Bool else if true then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if d54 then p2 else false ) ) ) $ ( if p2 then d67 else true )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> x96 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if true then d24 else x95 ) ) ) $ ( if true then true else true )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if true then Bool else x100 ) ) ) $ ( if false then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if d38 then p1 else p4 ) ) ) $ ( if true then d19 else false )
        d101 : if true then if true then Bool else Bool else if true then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> if d70 then p2 else false ) ) ) $ ( if d89 then p2 else d91 )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> x104 ) ) ) $ ( x104 ) ) ) ) $ ( if true then Bool else Bool )
        d103 = if if true then p4 else p4 then if false then d62 else p2 else if false then p1 else false
        d106 : if true then if true then Bool else Bool else if false then Bool else Bool
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( Bool -> Bool ) ∋ ( ( λ x108 -> d101 ) ) ) $ ( d62 ) ) ) ) $ ( if d41 then true else d27 )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if d46 then true else d33 ) ) ) $ ( if true then false else p1 )
        d113 : if true then if true then Bool else Bool else if false then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if p4 then d109 else x114 ) ) ) $ ( if true then true else p2 )
        d115 : if true then if false then Bool else Bool else if true then Bool else Bool
        d115 = if if false then false else d28 then if p2 then false else true else if p1 then p1 else true
        d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if true then x117 else Bool ) ) ) $ ( if false then Bool else Bool )
        d116 = if if d33 then d78 else false then if p1 then d59 else d101 else if true then true else d90
        d118 : if true then if false then Bool else Bool else if true then Bool else Bool
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> if p4 then d64 else p1 ) ) ) $ ( if p1 then d101 else p2 )
        d120 : if true then if true then Bool else Bool else if false then Bool else Bool
        d120 = if if p2 then p2 else d41 then if p4 then false else p2 else if p2 then p1 else p2
    module M'  = M ( true ) 