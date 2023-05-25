module Chain3Base15  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if false then Bool else Bool ) ( p3 : if true then Bool else Bool )  where
        d4 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> Bool ) ) ) $ ( x7 ) ) ) ) $ ( if false then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if false then p1 else p1 )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> x10 ) ) ) $ ( x10 ) ) ) ) $ ( if false then Bool else Bool )
        d9 = if if d4 then p2 else true then if true then p2 else d4 else if d4 then p3 else d4
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d12 = if if false then false else d4 then if p2 then p2 else false else if d9 then false else true
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d14 = if if p1 then p1 else d9 then if false then p3 else d9 else if p2 then p2 else false
        d17 : if false then if true then Bool else Bool else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if false then d14 else false ) ) ) $ ( if d14 then false else true )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> Bool ) ) ) $ ( x22 ) ) ) ) $ ( if false then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> p3 ) ) ) $ ( d17 ) ) ) ) $ ( if d4 then p2 else p1 )
        d24 : if true then if false then Bool else Bool else if false then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if d19 then false else d12 ) ) ) $ ( if p1 then d19 else d12 )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> if true then x27 else x27 ) ) ) $ ( if false then Bool else Bool )
        d26 = if if false then false else false then if true then d9 else d12 else if false then p2 else p1
        d28 : if false then if false then Bool else Bool else if false then Bool else Bool
        d28 = if if p3 then false else false then if true then d17 else true else if true then true else false
        d29 : if true then if true then Bool else Bool else if true then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if true then false else d26 ) ) ) $ ( if true then d24 else d4 )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if true then x32 else x32 ) ) ) $ ( if true then Bool else Bool )
        d31 = if if d4 then d29 else d12 then if true then true else false else if true then p3 else false
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> Bool ) ) ) $ ( x34 ) ) ) ) $ ( if true then Bool else Bool )
        d33 = if if p1 then true else p3 then if true then true else p3 else if p2 then d19 else p2
        d36 : if false then if false then Bool else Bool else if true then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> d28 ) ) ) $ ( d14 ) ) ) ) $ ( if d4 then p3 else p3 )
        d39 : if false then if false then Bool else Bool else if true then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if d33 then d36 else true ) ) ) $ ( if d19 then p3 else p1 )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> x43 ) ) ) $ ( x43 ) ) ) ) $ ( if false then Bool else Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if p2 then x42 else d28 ) ) ) $ ( if false then d28 else d12 )
        d45 : if true then if false then Bool else Bool else if true then Bool else Bool
        d45 = if if false then p1 else false then if p2 then d33 else p3 else if p3 then p2 else false
        d46 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if true then x47 else x47 ) ) ) $ ( if true then Bool else Bool )
        d46 = if if false then d45 else true then if d45 then d39 else true else if true then p3 else p1
        d48 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> Bool ) ) ) $ ( x51 ) ) ) ) $ ( if true then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> p3 ) ) ) $ ( false ) ) ) ) $ ( if true then d24 else true )
        d53 : if true then if true then Bool else Bool else if false then Bool else Bool
        d53 = if if false then false else p3 then if d33 then d4 else d26 else if p2 then d17 else d19
        d54 : if false then if true then Bool else Bool else if true then Bool else Bool
        d54 = if if false then d28 else d53 then if p1 then d9 else d36 else if false then p1 else true
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> if true then Bool else x56 ) ) ) $ ( if false then Bool else Bool )
        d55 = if if p2 then d48 else p2 then if p3 then d24 else false else if p1 then false else d29
        d57 : if false then if false then Bool else Bool else if false then Bool else Bool
        d57 = if if d54 then p1 else false then if d39 then d26 else false else if p2 then d48 else d9
        d58 : if true then if false then Bool else Bool else if false then Bool else Bool
        d58 = if if p1 then true else d24 then if d24 then d9 else p2 else if p2 then p1 else p3
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if true then x60 else Bool ) ) ) $ ( if true then Bool else Bool )
        d59 = if if d41 then p1 else p3 then if d39 then false else true else if false then false else p1
        d61 : if true then if false then Bool else Bool else if false then Bool else Bool
        d61 = if if p3 then d57 else true then if d48 then d45 else p2 else if d41 then d33 else d53
        d62 : ( ( Set -> Set ) ∋ ( ( λ x65 -> ( ( Set -> Set ) ∋ ( ( λ x66 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if d36 then p2 else p2 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> x69 ) ) ) $ ( x68 ) ) ) ) $ ( if false then Bool else Bool )
        d67 = if if p1 then d58 else p1 then if true then p1 else p2 else if true then d17 else p3
        d70 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> x72 ) ) ) $ ( x71 ) ) ) ) $ ( if false then Bool else Bool )
        d70 = if if p3 then p1 else p3 then if p2 then d14 else d45 else if d17 then true else p3
        d73 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if true then x75 else Bool ) ) ) $ ( if true then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if false then d17 else d12 ) ) ) $ ( if false then p3 else p2 )
        d76 : if true then if false then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if d12 then false else p2 ) ) ) $ ( if false then d9 else d59 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( x79 ) ) ) ) $ ( if true then Bool else Bool )
        d78 = if if p1 then p3 else p1 then if d29 then true else d76 else if p2 then d48 else d70
        d81 : if false then if false then Bool else Bool else if true then Bool else Bool
        d81 = if if d55 then true else true then if d53 then p1 else p2 else if p2 then p3 else p2
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> x83 ) ) ) $ ( x83 ) ) ) ) $ ( if true then Bool else Bool )
        d82 = if if d31 then d46 else d70 then if p1 then false else true else if true then d29 else p2
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d85 = if if p2 then d55 else p3 then if d78 then true else d57 else if d78 then true else p2
        d88 : if false then if false then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if true then true else false ) ) ) $ ( if false then true else false )
        d90 : if false then if false then Bool else Bool else if false then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if false then true else p3 )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if false then x94 else x94 ) ) ) $ ( if false then Bool else Bool )
        d93 = if if d61 then d82 else false then if p3 then false else d46 else if p1 then false else p1
        d95 : if false then if false then Bool else Bool else if true then Bool else Bool
        d95 = if if d76 then false else p1 then if d62 then d46 else d4 else if false then true else p2
        d96 : if true then if true then Bool else Bool else if true then Bool else Bool
        d96 = if if p1 then true else true then if p1 then p3 else d14 else if p2 then d39 else d24
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> Bool ) ) ) $ ( x98 ) ) ) ) $ ( if true then Bool else Bool )
        d97 = if if p1 then p2 else false then if d14 then d9 else d33 else if d70 then d78 else p3
        d100 : if false then if false then Bool else Bool else if true then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> d54 ) ) ) $ ( p2 ) ) ) ) $ ( if p1 then p1 else true )
        d103 : if false then if true then Bool else Bool else if false then Bool else Bool
        d103 = if if p2 then true else false then if p2 then d57 else p3 else if p2 then d46 else p1
        d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if true then x105 else x105 ) ) ) $ ( if true then Bool else Bool )
        d104 = if if p1 then true else p1 then if true then d67 else true else if true then d36 else p1
        d106 : if false then if false then Bool else Bool else if true then Bool else Bool
        d106 = if if d12 then false else p3 then if true then true else d97 else if d41 then p1 else p1
        d107 : if false then if false then Bool else Bool else if true then Bool else Bool
        d107 = if if d28 then false else p2 then if p1 then false else false else if true then p3 else d12
        d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> Bool ) ) ) $ ( x109 ) ) ) ) $ ( if false then Bool else Bool )
        d108 = if if d4 then d103 else p2 then if d62 then false else d103 else if false then d58 else d29
        d111 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> d82 ) ) ) $ ( d41 ) ) ) ) $ ( if p2 then p2 else d57 )
        d116 : if true then if true then Bool else Bool else if true then Bool else Bool
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> if d88 then x117 else d90 ) ) ) $ ( if d95 then false else true )
        d118 : if false then if true then Bool else Bool else if true then Bool else Bool
        d118 = if if p1 then true else true then if true then false else d93 else if false then p3 else p3
        d119 : if true then if true then Bool else Bool else if true then Bool else Bool
        d119 = if if false then p3 else p2 then if true then d118 else true else if true then true else false
    module M'  = M ( true ) 