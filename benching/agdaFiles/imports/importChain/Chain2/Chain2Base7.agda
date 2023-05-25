module Chain2Base7  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : if true then Bool else Bool )  where
        d3 : if false then if false then Bool else Bool else if true then Bool else Bool
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> if p2 then true else p2 ) ) ) $ ( if false then true else true )
        d5 : if true then if false then Bool else Bool else if false then Bool else Bool
        d5 = if if true then d3 else p2 then if p2 then p2 else p2 else if p2 then d3 else d3
        d6 : if false then if true then Bool else Bool else if true then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> x8 ) ) ) $ ( true ) ) ) ) $ ( if d5 then true else false )
        d9 : if false then if false then Bool else Bool else if false then Bool else Bool
        d9 = if if d6 then p2 else d3 then if false then p1 else d5 else if d3 then p2 else true
        d10 : if false then if true then Bool else Bool else if true then Bool else Bool
        d10 = if if p1 then d9 else p1 then if p2 then true else d3 else if d6 then p2 else d5
        d11 : if false then if false then Bool else Bool else if true then Bool else Bool
        d11 = if if d10 then d5 else p1 then if d10 then false else false else if true then false else false
        d12 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if false then x14 else Bool ) ) ) $ ( if true then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if x13 then true else x13 ) ) ) $ ( if true then d10 else false )
        d15 : if true then if false then Bool else Bool else if false then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> false ) ) ) $ ( d3 ) ) ) ) $ ( if d12 then d3 else true )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> x19 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d18 = if if true then false else p1 then if p2 then d3 else false else if p2 then d5 else true
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> x23 ) ) ) $ ( x22 ) ) ) ) $ ( if false then Bool else Bool )
        d21 = if if d15 then d12 else d18 then if true then d5 else p1 else if false then p1 else true
        d24 : if false then if false then Bool else Bool else if true then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if true then false else d9 ) ) ) $ ( if false then d10 else false )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d26 = if if p1 then false else false then if false then d18 else p1 else if true then p1 else false
        d29 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> x33 ) ) ) $ ( x32 ) ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> d18 ) ) ) $ ( true ) ) ) ) $ ( if d6 then d24 else false )
        d34 : if false then if false then Bool else Bool else if true then Bool else Bool
        d34 = if if true then d15 else true then if d26 then d21 else d9 else if p1 then d24 else d5
        d35 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d35 = if if false then false else p2 then if d34 then p2 else p2 else if p1 then true else d5
        d38 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then x40 else x40 ) ) ) $ ( if true then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if true then d12 else p2 ) ) ) $ ( if true then p2 else true )
        d41 : if true then if false then Bool else Bool else if true then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> true ) ) ) $ ( d5 ) ) ) ) $ ( if true then d10 else p1 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> x46 ) ) ) $ ( x45 ) ) ) ) $ ( if d12 then p2 else d21 )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> x49 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d48 = if if false then true else p2 then if d3 then p2 else d9 else if true then false else true
        d51 : if false then if false then Bool else Bool else if true then Bool else Bool
        d51 = if if false then d18 else true then if d10 then d10 else p2 else if p1 then d3 else true
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> Bool ) ) ) $ ( x53 ) ) ) ) $ ( if true then Bool else Bool )
        d52 = if if p2 then d48 else p1 then if d5 then d9 else true else if false then false else false
        d55 : if false then if true then Bool else Bool else if false then Bool else Bool
        d55 = if if p2 then d26 else false then if d21 then d34 else p1 else if true then p2 else p1
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> x57 ) ) ) $ ( x57 ) ) ) ) $ ( if true then Bool else Bool )
        d56 = if if false then d55 else d44 then if d18 then true else true else if true then p1 else true
        d59 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> x62 ) ) ) $ ( x61 ) ) ) ) $ ( if false then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if d55 then p2 else d35 ) ) ) $ ( if d11 then false else d34 )
        d63 : if true then if false then Bool else Bool else if true then Bool else Bool
        d63 = if if d18 then true else d35 then if d29 then d48 else true else if false then p2 else p1
        d64 : if false then if false then Bool else Bool else if true then Bool else Bool
        d64 = if if false then p1 else p2 then if p2 then false else p1 else if true then false else true
        d65 : if true then if true then Bool else Bool else if false then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if false then d52 else p2 )
        d68 : if true then if true then Bool else Bool else if true then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if false then d18 else true ) ) ) $ ( if p2 then d59 else p2 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if false then Bool else x73 ) ) ) $ ( if false then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> d3 ) ) ) $ ( false ) ) ) ) $ ( if d65 then d12 else p2 )
        d74 : if false then if false then Bool else Bool else if true then Bool else Bool
        d74 = if if false then true else true then if false then d18 else d52 else if true then p2 else d35
        d75 : if true then if false then Bool else Bool else if false then Bool else Bool
        d75 = if if p1 then d10 else true then if false then d63 else d24 else if false then d38 else d64
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d76 = if if d63 then p2 else d70 then if p1 then p2 else p2 else if d41 then d38 else false
        d79 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> x81 ) ) ) $ ( x81 ) ) ) ) $ ( if false then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if true then d48 else p2 ) ) ) $ ( if p1 then d55 else d6 )
        d83 : if false then if true then Bool else Bool else if false then Bool else Bool
        d83 = if if false then p1 else false then if true then d51 else p2 else if d44 then true else true
        d84 : if false then if true then Bool else Bool else if true then Bool else Bool
        d84 = if if d52 then p1 else d41 then if false then d9 else false else if d68 then d65 else p1
        d85 : if false then if true then Bool else Bool else if true then Bool else Bool
        d85 = if if true then p2 else true then if d41 then false else d70 else if p2 then d74 else p1
        d86 : if true then if false then Bool else Bool else if false then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if x87 then d74 else false ) ) ) $ ( if p2 then d21 else p1 )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if true then x89 else Bool ) ) ) $ ( if false then Bool else Bool )
        d88 = if if true then d29 else d6 then if p1 then d68 else false else if d56 then d18 else d9
        d90 : if true then if false then Bool else Bool else if true then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> true ) ) ) $ ( false ) ) ) ) $ ( if p2 then p2 else d21 )
        d93 : if false then if false then Bool else Bool else if false then Bool else Bool
        d93 = if if p1 then p1 else p2 then if p1 then d29 else d70 else if false then d55 else p1
        d94 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> x96 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if false then d10 else x95 ) ) ) $ ( if d48 then d85 else true )
        d98 : if true then if false then Bool else Bool else if false then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if p2 then p2 else d64 ) ) ) $ ( if d15 then d21 else p2 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> x104 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> p1 ) ) ) $ ( true ) ) ) ) $ ( if false then p2 else d52 )
        d105 : if false then if true then Bool else Bool else if false then Bool else Bool
        d105 = if if false then p1 else d88 then if p1 then true else false else if p1 then d9 else false
        d106 : if true then if true then Bool else Bool else if false then Bool else Bool
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> if false then true else p1 ) ) ) $ ( if d21 then p2 else true )
        d108 : if true then if true then Bool else Bool else if true then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> if d15 then d98 else d41 ) ) ) $ ( if true then true else false )
        d110 : if true then if false then Bool else Bool else if true then Bool else Bool
        d110 = if if d100 then true else d108 then if true then d106 else d70 else if d38 then true else d52
        d111 : if false then if false then Bool else Bool else if false then Bool else Bool
        d111 = if if true then d34 else p2 then if p1 then d98 else d55 else if false then p1 else true
        d112 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if true then Bool else x115 ) ) ) $ ( if true then Bool else Bool )
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> false ) ) ) $ ( d18 ) ) ) ) $ ( if true then true else true )
        d116 : if false then if false then Bool else Bool else if false then Bool else Bool
        d116 = if if d86 then d6 else d48 then if d26 then true else false else if p1 then false else true
    module M'  = M ( false ) 