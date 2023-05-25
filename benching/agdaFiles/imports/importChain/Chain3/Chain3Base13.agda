module Chain3Base13  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if true then Bool else x3 ) ) ) $ ( Bool ) ) ( p4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if false then Bool else Bool ) ) ) $ ( Bool ) )  where
        d6 : if true then if true then Bool else Bool else if true then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if false then true else p2 ) ) ) $ ( if false then p2 else true )
        d8 : if false then if true then Bool else Bool else if false then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> d6 ) ) ) $ ( true ) ) ) ) $ ( if d6 then p2 else false )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d11 = if if true then p2 else false then if d8 then p4 else p1 else if p4 then p1 else false
        d13 : if true then if true then Bool else Bool else if false then Bool else Bool
        d13 = if if true then d6 else false then if p4 then d8 else p2 else if false then false else d6
        d14 : if false then if true then Bool else Bool else if false then Bool else Bool
        d14 = if if d6 then p4 else p1 then if d6 then false else true else if d8 then p1 else p1
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d15 = if if false then p2 else d6 then if d14 then d14 else p2 else if p1 then p1 else p2
        d18 : if false then if false then Bool else Bool else if true then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if false then true else d15 ) ) ) $ ( if true then false else p4 )
        d20 : if true then if true then Bool else Bool else if false then Bool else Bool
        d20 = if if d13 then p1 else false then if false then d13 else d8 else if false then p4 else p4
        d21 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> d18 ) ) ) $ ( d15 ) ) ) ) $ ( if p2 then true else false )
        d26 : if false then if false then Bool else Bool else if false then Bool else Bool
        d26 = if if p1 then d15 else p1 then if p4 then false else d14 else if d21 then d6 else p4
        d27 : if false then if true then Bool else Bool else if true then Bool else Bool
        d27 = if if p1 then p4 else d8 then if false then p4 else p1 else if d8 then d15 else d21
        d28 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> x32 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> p4 ) ) ) $ ( true ) ) ) ) $ ( if d13 then p1 else true )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if false then x34 else Bool ) ) ) $ ( if true then Bool else Bool )
        d33 = if if d15 then d26 else d21 then if d27 then p2 else d21 else if d18 then d21 else d21
        d35 : if true then if false then Bool else Bool else if true then Bool else Bool
        d35 = if if p2 then d27 else d28 then if false then p2 else d15 else if d8 then true else p1
        d36 : if false then if true then Bool else Bool else if false then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> p4 ) ) ) $ ( true ) ) ) ) $ ( if p1 then false else p4 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> x40 ) ) ) $ ( x40 ) ) ) ) $ ( if true then Bool else Bool )
        d39 = if if d15 then p1 else false then if p1 then false else d14 else if false then p2 else false
        d42 : if false then if true then Bool else Bool else if true then Bool else Bool
        d42 = if if false then d20 else d6 then if d39 then d21 else true else if true then d15 else p2
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> ( ( Set -> Set ) ∋ ( ( λ x45 -> x45 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d43 = if if p2 then p1 else true then if d21 then d39 else d27 else if p1 then p4 else p2
        d46 : if true then if true then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if x47 then true else d43 ) ) ) $ ( if d6 then d14 else true )
        d48 : if true then if false then Bool else Bool else if true then Bool else Bool
        d48 = if if p4 then false else p4 then if p4 then true else p4 else if p4 then p1 else d46
        d49 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if false then x51 else x51 ) ) ) $ ( if true then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if true then true else d15 ) ) ) $ ( if p2 then p4 else d13 )
        d52 : if false then if false then Bool else Bool else if true then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if x53 then false else true ) ) ) $ ( if d39 then true else p2 )
        d54 : if true then if true then Bool else Bool else if true then Bool else Bool
        d54 = if if p2 then false else false then if d48 then false else d36 else if d39 then true else false
        d55 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> false ) ) ) $ ( true ) ) ) ) $ ( if p1 then p1 else d49 )
        d60 : if false then if true then Bool else Bool else if true then Bool else Bool
        d60 = if if d55 then p2 else p1 then if false then true else d46 else if p2 then true else d46
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> x62 ) ) ) $ ( x62 ) ) ) ) $ ( if true then Bool else Bool )
        d61 = if if p4 then false else d60 then if p4 then d54 else d18 else if p1 then d6 else d36
        d64 : if false then if false then Bool else Bool else if false then Bool else Bool
        d64 = if if d43 then true else p4 then if d60 then p1 else d61 else if d61 then p1 else false
        d65 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> x67 ) ) ) $ ( x66 ) ) ) ) $ ( if true then Bool else Bool )
        d65 = if if p2 then false else d46 then if false then true else d61 else if false then true else d28
        d68 : if false then if false then Bool else Bool else if false then Bool else Bool
        d68 = if if d18 then false else d11 then if d36 then p4 else true else if p4 then d21 else d52
        d69 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if true then Bool else x72 ) ) ) $ ( if true then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x71 -> p2 ) ) ) $ ( d13 ) ) ) ) $ ( if d13 then false else p2 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x76 -> ( ( Set -> Set ) ∋ ( ( λ x77 -> Bool ) ) ) $ ( x76 ) ) ) ) $ ( if true then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> p2 ) ) ) $ ( true ) ) ) ) $ ( if false then d46 else false )
        d78 : if false then if true then Bool else Bool else if true then Bool else Bool
        d78 = if if p2 then d61 else true then if false then d73 else p4 else if p4 then d65 else true
        d79 : if false then if true then Bool else Bool else if false then Bool else Bool
        d79 = if if d14 then false else d69 then if false then p4 else d33 else if true then p1 else d48
        d80 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> x83 ) ) ) $ ( x82 ) ) ) ) $ ( if false then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if true then p1 else p4 ) ) ) $ ( if d52 then true else true )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if true then Bool else x85 ) ) ) $ ( if true then Bool else Bool )
        d84 = if if p4 then p4 else false then if d49 then d61 else d18 else if p2 then p1 else false
        d86 : if true then if false then Bool else Bool else if false then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if p2 then true else d36 ) ) ) $ ( if false then p1 else d65 )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> x90 ) ) ) $ ( x89 ) ) ) ) $ ( if true then Bool else Bool )
        d88 = if if p2 then false else false then if true then p4 else d13 else if true then d49 else p4
        d91 : if false then if true then Bool else Bool else if true then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if p1 then false else true ) ) ) $ ( if d69 then d65 else d48 )
        d93 : if false then if true then Bool else Bool else if true then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if d69 then x94 else p4 ) ) ) $ ( if false then false else p1 )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if false then p2 else p4 ) ) ) $ ( if d73 then false else d28 )
        d99 : if true then if false then Bool else Bool else if false then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if d28 then false else false ) ) ) $ ( if d79 then p2 else p1 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if false then Bool else x103 ) ) ) $ ( if false then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> if p4 then p1 else true ) ) ) $ ( if p1 then d84 else d80 )
        d104 : if false then if false then Bool else Bool else if true then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> if true then d13 else false ) ) ) $ ( if true then d14 else p1 )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( Bool -> Bool ) ∋ ( ( λ x108 -> p4 ) ) ) $ ( true ) ) ) ) $ ( if p2 then d21 else d42 )
        d111 : if true then if true then Bool else Bool else if true then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> if p2 then true else d104 ) ) ) $ ( if false then p4 else false )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if true then x114 else Bool ) ) ) $ ( if true then Bool else Bool )
        d113 = if if d18 then p1 else p4 then if true then false else p1 else if true then p1 else d21
        d115 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> x119 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> false ) ) ) $ ( p4 ) ) ) ) $ ( if p2 then d46 else d73 )
        d120 : if false then if false then Bool else Bool else if true then Bool else Bool
        d120 = if if d54 then d14 else true then if true then true else p4 else if false then true else p2
        d121 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> x124 ) ) ) $ ( x124 ) ) ) ) $ ( if true then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( ( Bool -> Bool ) ∋ ( ( λ x123 -> d93 ) ) ) $ ( p2 ) ) ) ) $ ( if false then d27 else p4 )
        d126 : if true then if false then Bool else Bool else if true then Bool else Bool
        d126 = if if p2 then p1 else d79 then if d46 then d13 else false else if true then p4 else p1
    module M'  = M ( false ) 