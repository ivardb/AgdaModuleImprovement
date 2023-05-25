module Chain2Base9  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if true then Bool else Bool ) ) ) $ ( Bool ) )  where
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if false then Bool else x5 ) ) ) $ ( if false then Bool else Bool )
        d4 = if if p1 then false else p1 then if p1 then p1 else true else if p2 then p2 else p1
        d6 : if false then if false then Bool else Bool else if true then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if d4 then false else false ) ) ) $ ( if d4 then d4 else p1 )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> x10 ) ) ) $ ( x9 ) ) ) ) $ ( if true then Bool else Bool )
        d8 = if if d6 then false else d6 then if p1 then false else p1 else if true then p2 else p1
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if true then x12 else x12 ) ) ) $ ( if false then Bool else Bool )
        d11 = if if d8 then p1 else d6 then if p1 then false else p2 else if true then p1 else d6
        d13 : if true then if true then Bool else Bool else if true then Bool else Bool
        d13 = if if p2 then p2 else true then if false then d8 else p2 else if p2 then false else p2
        d14 : if true then if true then Bool else Bool else if true then Bool else Bool
        d14 = if if false then false else d8 then if d11 then d13 else true else if false then true else p2
        d15 : if false then if true then Bool else Bool else if true then Bool else Bool
        d15 = if if p2 then d13 else p2 then if true then p2 else d6 else if p2 then false else d8
        d16 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if true then Bool else x18 ) ) ) $ ( if false then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if x17 then true else p1 ) ) ) $ ( if p1 then d6 else p1 )
        d19 : if false then if false then Bool else Bool else if true then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if false then false else false ) ) ) $ ( if d6 then true else p1 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> Bool ) ) ) $ ( x22 ) ) ) ) $ ( if false then Bool else Bool )
        d21 = if if p1 then d15 else p1 then if d11 then d8 else d4 else if d6 then p2 else true
        d24 : if false then if true then Bool else Bool else if true then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> true ) ) ) $ ( d21 ) ) ) ) $ ( if false then true else p1 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if false then Bool else x28 ) ) ) $ ( if true then Bool else Bool )
        d27 = if if d21 then d19 else false then if d21 then d8 else p2 else if p1 then false else p1
        d29 : if false then if false then Bool else Bool else if true then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> d19 ) ) ) $ ( true ) ) ) ) $ ( if d4 then d24 else false )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if true then Bool else x35 ) ) ) $ ( if false then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> ( ( Bool -> Bool ) ∋ ( ( λ x34 -> true ) ) ) $ ( x33 ) ) ) ) $ ( if d4 then false else p2 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if true then Bool else x37 ) ) ) $ ( if true then Bool else Bool )
        d36 = if if p2 then d6 else p2 then if true then false else p1 else if false then p2 else false
        d38 : if true then if true then Bool else Bool else if false then Bool else Bool
        d38 = if if p2 then d21 else p2 then if d16 then d36 else false else if p2 then d4 else d14
        d39 : if true then if false then Bool else Bool else if true then Bool else Bool
        d39 = if if false then p2 else p2 then if d24 then false else d16 else if d32 then d21 else d19
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if true then Bool else x41 ) ) ) $ ( if false then Bool else Bool )
        d40 = if if true then true else p1 then if p2 then d39 else false else if true then d39 else d38
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if false then x43 else x43 ) ) ) $ ( if false then Bool else Bool )
        d42 = if if p2 then d15 else false then if p1 then p2 else p1 else if p1 then true else p1
        d44 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> x47 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if x45 then p1 else d39 ) ) ) $ ( if d39 then true else false )
        d48 : if true then if false then Bool else Bool else if false then Bool else Bool
        d48 = if if d14 then true else true then if d29 then p1 else p1 else if p2 then p1 else d14
        d49 : if false then if true then Bool else Bool else if false then Bool else Bool
        d49 = if if d36 then d44 else d6 then if p2 then false else d16 else if d21 then d32 else p1
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d50 = if if p1 then true else false then if true then d49 else d29 else if false then d21 else p1
        d52 : ( ( Set -> Set ) ∋ ( ( λ x54 -> ( ( Set -> Set ) ∋ ( ( λ x55 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if p1 then true else d16 ) ) ) $ ( if p1 then p2 else p1 )
        d56 : if false then if false then Bool else Bool else if false then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> false ) ) ) $ ( x57 ) ) ) ) $ ( if p2 then d19 else p2 )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if true then x60 else x60 ) ) ) $ ( if false then Bool else Bool )
        d59 = if if p2 then true else p2 then if p1 then p2 else p1 else if true then false else true
        d61 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if true then x64 else Bool ) ) ) $ ( if false then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> x63 ) ) ) $ ( false ) ) ) ) $ ( if d15 then p1 else p2 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> x66 ) ) ) $ ( x66 ) ) ) ) $ ( if false then Bool else Bool )
        d65 = if if false then p2 else p2 then if true then true else p1 else if p2 then d44 else d50
        d68 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if d56 then true else d42 ) ) ) $ ( if d38 then d40 else p2 )
        d72 : if false then if true then Bool else Bool else if false then Bool else Bool
        d72 = if if false then false else d14 then if d15 then d59 else false else if false then p1 else false
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d73 = if if d27 then false else d52 then if p2 then p2 else d49 else if p2 then true else d59
        d75 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if false then x77 else Bool ) ) ) $ ( if false then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if x76 then true else false ) ) ) $ ( if false then p2 else false )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> x81 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> true ) ) ) $ ( d75 ) ) ) ) $ ( if false then false else d42 )
        d83 : if true then if true then Bool else Bool else if false then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> ( ( Bool -> Bool ) ∋ ( ( λ x85 -> d29 ) ) ) $ ( true ) ) ) ) $ ( if d68 then true else p2 )
        d86 : if true then if true then Bool else Bool else if false then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if true then x87 else x87 ) ) ) $ ( if p1 then p2 else p2 )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if false then x91 else x91 ) ) ) $ ( if false then Bool else Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> d39 ) ) ) $ ( d86 ) ) ) ) $ ( if false then p2 else d86 )
        d92 : if false then if false then Bool else Bool else if false then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( ( Bool -> Bool ) ∋ ( ( λ x94 -> x93 ) ) ) $ ( d44 ) ) ) ) $ ( if false then d29 else false )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x96 -> if false then x96 else x96 ) ) ) $ ( if false then Bool else Bool )
        d95 = if if p1 then p1 else false then if true then d61 else d49 else if false then true else d50
        d97 : if true then if false then Bool else Bool else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if p2 then false else d48 ) ) ) $ ( if p2 then d21 else p2 )
        d99 : if true then if true then Bool else Bool else if true then Bool else Bool
        d99 = if if d68 then true else d56 then if false then p2 else false else if p2 then d16 else false
        d100 : if true then if false then Bool else Bool else if false then Bool else Bool
        d100 = if if p2 then false else true then if false then true else true else if d36 then p2 else true
        d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> x103 ) ) ) $ ( x102 ) ) ) ) $ ( if false then Bool else Bool )
        d101 = if if false then d50 else true then if false then true else false else if true then p1 else true
        d104 : if true then if false then Bool else Bool else if true then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> d97 ) ) ) $ ( false ) ) ) ) $ ( if p2 then p1 else false )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> false ) ) ) $ ( x108 ) ) ) ) $ ( if false then true else true )
        d112 : ( ( Set -> Set ) ∋ ( ( λ x113 -> ( ( Set -> Set ) ∋ ( ( λ x114 -> x113 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d112 = if if false then p2 else d14 then if p1 then false else true else if true then true else d44
        d115 : if false then if true then Bool else Bool else if false then Bool else Bool
        d115 = if if d65 then p2 else d13 then if d36 then true else d104 else if d52 then d83 else true
        d116 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> x118 ) ) ) $ ( x118 ) ) ) ) $ ( if true then Bool else Bool )
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> if d48 then d52 else p2 ) ) ) $ ( if false then d86 else p1 )
        d120 : if true then if true then Bool else Bool else if true then Bool else Bool
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if false then d21 else p1 ) ) ) $ ( if p1 then d107 else true )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> if d107 then x123 else p1 ) ) ) $ ( if true then d73 else true )
        d126 : if true then if true then Bool else Bool else if false then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if false then d8 else true ) ) ) $ ( if true then p2 else true )
    module M'  = M ( true ) 