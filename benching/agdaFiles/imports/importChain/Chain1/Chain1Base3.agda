module Chain1Base3  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then x2 else Bool ) ) ) $ ( Bool ) )  where
        d3 : if true then if false then Bool else Bool else if true then Bool else Bool
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> if x4 then x4 else p1 ) ) ) $ ( if p1 then p1 else p1 )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x8 -> ( ( Set -> Set ) ∋ ( ( λ x9 -> Bool ) ) ) $ ( x8 ) ) ) ) $ ( if true then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> d3 ) ) ) $ ( false ) ) ) ) $ ( if true then p1 else true )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if d5 then p1 else x11 ) ) ) $ ( if true then p1 else d3 )
        d14 : if false then if false then Bool else Bool else if false then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> d10 ) ) ) $ ( true ) ) ) ) $ ( if p1 then d3 else p1 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d17 = if if false then d5 else p1 then if d14 then false else p1 else if p1 then d10 else true
        d19 : if true then if false then Bool else Bool else if true then Bool else Bool
        d19 = if if p1 then d10 else d14 then if d3 then p1 else p1 else if p1 then p1 else p1
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if false then Bool else x21 ) ) ) $ ( if true then Bool else Bool )
        d20 = if if d17 then p1 else true then if d17 then p1 else d14 else if p1 then false else false
        d22 : if false then if true then Bool else Bool else if false then Bool else Bool
        d22 = if if true then d17 else d19 then if true then true else d17 else if p1 then d10 else true
        d23 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> Bool ) ) ) $ ( x26 ) ) ) ) $ ( if true then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> ( ( Bool -> Bool ) ∋ ( ( λ x25 -> false ) ) ) $ ( d22 ) ) ) ) $ ( if d5 then false else p1 )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then x30 else Bool ) ) ) $ ( if true then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if d14 then x29 else d17 ) ) ) $ ( if p1 then d14 else p1 )
        d31 : if true then if false then Bool else Bool else if true then Bool else Bool
        d31 = if if false then true else true then if d10 then d3 else d3 else if d19 then d5 else p1
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d32 = if if d28 then false else d17 then if p1 then p1 else p1 else if p1 then p1 else false
        d34 : if true then if false then Bool else Bool else if false then Bool else Bool
        d34 = if if d3 then true else p1 then if p1 then p1 else d10 else if p1 then true else false
        d35 : if true then if true then Bool else Bool else if false then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> true ) ) ) $ ( true ) ) ) ) $ ( if d23 then true else p1 )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> x39 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d38 = if if d3 then p1 else false then if p1 then p1 else d5 else if d22 then p1 else d5
        d41 : if true then if false then Bool else Bool else if true then Bool else Bool
        d41 = if if true then d3 else d34 then if p1 then p1 else p1 else if p1 then p1 else d10
        d42 : if true then if false then Bool else Bool else if false then Bool else Bool
        d42 = if if d17 then p1 else p1 then if p1 then d32 else d22 else if p1 then d5 else d23
        d43 : if true then if false then Bool else Bool else if true then Bool else Bool
        d43 = if if d34 then p1 else p1 then if p1 then p1 else d31 else if p1 then p1 else p1
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if false then x45 else Bool ) ) ) $ ( if false then Bool else Bool )
        d44 = if if p1 then p1 else true then if false then true else false else if d34 then true else p1
        d46 : if true then if true then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> d35 ) ) ) $ ( x47 ) ) ) ) $ ( if d35 then true else d32 )
        d49 : if false then if false then Bool else Bool else if true then Bool else Bool
        d49 = if if d22 then true else p1 then if d44 then true else d19 else if p1 then p1 else d17
        d50 : if true then if true then Bool else Bool else if true then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> false ) ) ) $ ( d3 ) ) ) ) $ ( if true then true else d28 )
        d53 : if true then if true then Bool else Bool else if false then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> false ) ) ) $ ( x54 ) ) ) ) $ ( if p1 then true else true )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> x58 ) ) ) $ ( x57 ) ) ) ) $ ( if false then Bool else Bool )
        d56 = if if false then d41 else false then if p1 then false else p1 else if false then d35 else p1
        d59 : if false then if false then Bool else Bool else if false then Bool else Bool
        d59 = if if p1 then p1 else false then if d3 then d3 else true else if d19 then p1 else p1
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d60 = if if p1 then false else d31 then if p1 then true else p1 else if true then p1 else d5
        d62 : if false then if true then Bool else Bool else if false then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if d22 then false else p1 )
        d65 : if false then if true then Bool else Bool else if true then Bool else Bool
        d65 = if if d32 then true else false then if true then p1 else d50 else if p1 then true else d10
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then Bool else x67 ) ) ) $ ( if true then Bool else Bool )
        d66 = if if d59 then d31 else false then if p1 then d46 else true else if p1 then d50 else p1
        d68 : if false then if false then Bool else Bool else if false then Bool else Bool
        d68 = if if d23 then p1 else p1 then if false then p1 else true else if d50 then true else d42
        d69 : if true then if false then Bool else Bool else if false then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if false then false else d35 ) ) ) $ ( if d42 then p1 else p1 )
        d71 : if true then if true then Bool else Bool else if true then Bool else Bool
        d71 = if if false then true else false then if false then true else p1 else if true then p1 else false
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x74 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d72 = if if p1 then d43 else p1 then if p1 then false else p1 else if false then d69 else true
        d75 : if true then if true then Bool else Bool else if true then Bool else Bool
        d75 = if if p1 then d60 else p1 then if d50 then d69 else d53 else if d71 then p1 else p1
        d76 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then d41 else false )
        d80 : if false then if false then Bool else Bool else if true then Bool else Bool
        d80 = if if p1 then true else d69 then if false then p1 else true else if p1 then p1 else p1
        d81 : if true then if false then Bool else Bool else if true then Bool else Bool
        d81 = if if false then d75 else d44 then if d17 then true else d72 else if true then p1 else true
        d82 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if p1 then x83 else true ) ) ) $ ( if true then p1 else p1 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> x87 ) ) ) $ ( x87 ) ) ) ) $ ( if true then Bool else Bool )
        d86 = if if true then p1 else d23 then if p1 then d17 else d69 else if d66 then p1 else d43
        d89 : if true then if false then Bool else Bool else if true then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> p1 ) ) ) $ ( d62 ) ) ) ) $ ( if d53 then p1 else d65 )
        d92 : if true then if false then Bool else Bool else if false then Bool else Bool
        d92 = if if d3 then p1 else false then if true then d38 else true else if p1 then p1 else false
        d93 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> x97 ) ) ) $ ( x96 ) ) ) ) $ ( if true then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> x95 ) ) ) $ ( d14 ) ) ) ) $ ( if p1 then p1 else true )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x101 -> ( ( Set -> Set ) ∋ ( ( λ x102 -> Bool ) ) ) $ ( x101 ) ) ) ) $ ( if false then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> d60 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d46 )
        d103 : if true then if false then Bool else Bool else if false then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if d50 then d38 else d98 ) ) ) $ ( if true then d71 else p1 )
        d105 : if true then if true then Bool else Bool else if true then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( Bool -> Bool ) ∋ ( ( λ x107 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if false then p1 else p1 )
        d108 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then Bool else x110 ) ) ) $ ( if false then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> if false then p1 else x109 ) ) ) $ ( if true then p1 else p1 )
        d111 : if true then if true then Bool else Bool else if true then Bool else Bool
        d111 = if if d56 then d31 else true then if d56 then d19 else false else if p1 then p1 else false
        d112 : if true then if true then Bool else Bool else if true then Bool else Bool
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> true ) ) ) $ ( x113 ) ) ) ) $ ( if p1 then d105 else false )
        d115 : if false then if false then Bool else Bool else if true then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> x117 ) ) ) $ ( d41 ) ) ) ) $ ( if p1 then d80 else p1 )
        d118 : if false then if false then Bool else Bool else if true then Bool else Bool
        d118 = if if p1 then p1 else d41 then if d5 then d28 else true else if p1 then false else p1
    module M'  = M ( true ) 