module Chain3Base7  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if false then Bool else Bool ) ( p3 : if false then Bool else Bool )  where
        d4 : if true then if false then Bool else Bool else if true then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if true then x5 else false ) ) ) $ ( if false then false else p3 )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if false then x8 else Bool ) ) ) $ ( if false then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if p2 then x7 else true ) ) ) $ ( if d4 then false else true )
        d9 : if false then if false then Bool else Bool else if false then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> d4 ) ) ) $ ( d6 ) ) ) ) $ ( if d6 then p2 else d6 )
        d12 : if false then if true then Bool else Bool else if false then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if false then d6 else d9 ) ) ) $ ( if p1 then d9 else p3 )
        d14 : if false then if true then Bool else Bool else if true then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> d6 ) ) ) $ ( false ) ) ) ) $ ( if d6 then d6 else d4 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if true then x19 else Bool ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if p2 then p2 else false ) ) ) $ ( if false then d4 else d9 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if p1 then p2 else p3 ) ) ) $ ( if d4 then p1 else d17 )
        d23 : if false then if false then Bool else Bool else if false then Bool else Bool
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> ( ( Bool -> Bool ) ∋ ( ( λ x25 -> d12 ) ) ) $ ( d14 ) ) ) ) $ ( if p1 then d14 else p3 )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> if true then x27 else x27 ) ) ) $ ( if false then Bool else Bool )
        d26 = if if p2 then d20 else false then if false then p3 else p2 else if false then d20 else d12
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if true then Bool else x29 ) ) ) $ ( if false then Bool else Bool )
        d28 = if if d23 then true else d12 then if false then p1 else true else if p2 then d4 else true
        d30 : if true then if true then Bool else Bool else if true then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if p1 then d23 else d14 ) ) ) $ ( if p3 then d28 else d26 )
        d32 : if true then if true then Bool else Bool else if false then Bool else Bool
        d32 = if if d12 then p2 else d26 then if p1 then false else false else if false then p3 else p3
        d33 : if false then if true then Bool else Bool else if false then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if p2 then true else p1 )
        d36 : if false then if false then Bool else Bool else if false then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> d32 ) ) ) $ ( p1 ) ) ) ) $ ( if d17 then d28 else p1 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> Bool ) ) ) $ ( x42 ) ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> true ) ) ) $ ( d20 ) ) ) ) $ ( if d17 then true else p2 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> ( ( Set -> Set ) ∋ ( ( λ x46 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d44 = if if true then false else d39 then if d20 then d6 else p3 else if p2 then false else true
        d47 : if true then if true then Bool else Bool else if false then Bool else Bool
        d47 = if if p2 then false else p3 then if d32 then d33 else p2 else if false then d33 else true
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if false then x49 else x49 ) ) ) $ ( if true then Bool else Bool )
        d48 = if if true then d33 else true then if d17 then d20 else false else if d9 then d14 else true
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d50 = if if true then d4 else false then if true then d30 else false else if false then d48 else true
        d52 : if false then if true then Bool else Bool else if true then Bool else Bool
        d52 = if if p2 then false else true then if d50 then p3 else p3 else if d32 then false else p2
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if true then x54 else Bool ) ) ) $ ( if true then Bool else Bool )
        d53 = if if d36 then p1 else true then if d28 then d47 else d12 else if d12 then false else d6
        d55 : if false then if true then Bool else Bool else if true then Bool else Bool
        d55 = if if d52 then p1 else d53 then if d33 then true else d39 else if d4 then false else d4
        d56 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if false then Bool else x59 ) ) ) $ ( if false then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> x58 ) ) ) $ ( p2 ) ) ) ) $ ( if false then d44 else d26 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if false then x63 else x63 ) ) ) $ ( if true then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> p2 ) ) ) $ ( d12 ) ) ) ) $ ( if p3 then false else true )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x66 -> if false then x66 else Bool ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if p2 then d17 else d28 ) ) ) $ ( if d32 then p3 else d60 )
        d67 : if false then if true then Bool else Bool else if false then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if false then d6 else p2 ) ) ) $ ( if d17 then d33 else true )
        d69 : if false then if false then Bool else Bool else if false then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x71 -> d60 ) ) ) $ ( true ) ) ) ) $ ( if d14 then d28 else p2 )
        d72 : if false then if true then Bool else Bool else if false then Bool else Bool
        d72 = if if p3 then p3 else true then if d60 then p3 else d64 else if d26 then d44 else d4
        d73 : if true then if false then Bool else Bool else if true then Bool else Bool
        d73 = if if d67 then true else p1 then if p3 then true else true else if d67 then p1 else p2
        d74 : if true then if false then Bool else Bool else if true then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if x75 then false else true ) ) ) $ ( if false then true else false )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if false then x77 else Bool ) ) ) $ ( if false then Bool else Bool )
        d76 = if if p3 then d72 else d6 then if p2 then p3 else p2 else if false then true else p3
        d78 : if true then if true then Bool else Bool else if false then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if x79 then d48 else p3 ) ) ) $ ( if p2 then false else d64 )
        d80 : if true then if true then Bool else Bool else if true then Bool else Bool
        d80 = if if true then d48 else p1 then if d60 then d14 else true else if p1 then d20 else d32
        d81 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d81 = if if p2 then d80 else false then if false then d17 else true else if d48 then p2 else true
        d84 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if true then x86 else Bool ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if p2 then false else false ) ) ) $ ( if p3 then d81 else d69 )
        d87 : if true then if false then Bool else Bool else if false then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if d60 then p3 else p1 ) ) ) $ ( if false then d12 else d60 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if false then x91 else x91 ) ) ) $ ( if true then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if p1 then d47 else p1 ) ) ) $ ( if true then d28 else false )
        d92 : if true then if false then Bool else Bool else if false then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if false then d32 else false ) ) ) $ ( if true then false else p1 )
        d94 : if true then if false then Bool else Bool else if false then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if d67 then d26 else p1 ) ) ) $ ( if false then p1 else false )
        d96 : if true then if false then Bool else Bool else if true then Bool else Bool
        d96 = if if d55 then p3 else p2 then if d12 then d73 else false else if p1 then p1 else p2
        d97 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if true then Bool else x99 ) ) ) $ ( if true then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if p2 then p3 else false ) ) ) $ ( if p1 then p1 else p1 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if false then Bool else x101 ) ) ) $ ( if true then Bool else Bool )
        d100 = if if true then d36 else false then if false then p1 else d60 else if d81 then p3 else true
        d102 : if true then if true then Bool else Bool else if true then Bool else Bool
        d102 = if if false then d14 else true then if d14 then true else false else if p2 then p3 else p3
        d103 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> x106 ) ) ) $ ( x106 ) ) ) ) $ ( if false then Bool else Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> ( ( Bool -> Bool ) ∋ ( ( λ x105 -> false ) ) ) $ ( d74 ) ) ) ) $ ( if d96 then false else p3 )
        d108 : if false then if true then Bool else Bool else if false then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> if d32 then true else x109 ) ) ) $ ( if d30 then p3 else true )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if true then Bool else x113 ) ) ) $ ( if true then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> p1 ) ) ) $ ( d102 ) ) ) ) $ ( if p3 then p2 else true )
        d114 : if true then if false then Bool else Bool else if false then Bool else Bool
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( Bool -> Bool ) ∋ ( ( λ x116 -> p3 ) ) ) $ ( p3 ) ) ) ) $ ( if true then d102 else true )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then Bool else x119 ) ) ) $ ( if true then Bool else Bool )
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> if d32 then false else p2 ) ) ) $ ( if p3 then d52 else p3 )
        d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> x121 ) ) ) $ ( x121 ) ) ) ) $ ( if false then Bool else Bool )
        d120 = if if true then d56 else p3 then if p2 then false else true else if true then true else true
        d123 : if false then if true then Bool else Bool else if true then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( Bool -> Bool ) ∋ ( ( λ x125 -> x124 ) ) ) $ ( d92 ) ) ) ) $ ( if d73 then p3 else d97 )
    module M'  = M ( true ) 