module Chain3Base1  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then x2 else Bool ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ( p5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if false then Bool else Bool ) ) ) $ ( Bool ) )  where
        d7 : if true then if true then Bool else Bool else if false then Bool else Bool
        d7 = if if p1 then true else true then if false then p1 else false else if p3 then true else true
        d8 : if false then if true then Bool else Bool else if true then Bool else Bool
        d8 = if if p5 then true else true then if true then p3 else true else if d7 then p5 else false
        d9 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> Bool ) ) ) $ ( x12 ) ) ) ) $ ( if true then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> d8 ) ) ) $ ( d8 ) ) ) ) $ ( if d7 then p1 else false )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x16 -> if false then x16 else x16 ) ) ) $ ( if true then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if d7 then false else x15 ) ) ) $ ( if true then false else true )
        d17 : if true then if false then Bool else Bool else if true then Bool else Bool
        d17 = if if d9 then d8 else p3 then if false then p1 else p3 else if d8 then false else p3
        d18 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x20 ) ) ) $ ( x20 ) ) ) ) $ ( if true then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if p3 then p5 else p5 ) ) ) $ ( if d8 then p5 else p3 )
        d22 : if false then if false then Bool else Bool else if false then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> true ) ) ) $ ( d14 ) ) ) ) $ ( if d17 then true else false )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if true then Bool else x26 ) ) ) $ ( if false then Bool else Bool )
        d25 = if if true then d18 else p1 then if true then d17 else d18 else if false then true else false
        d27 : if false then if true then Bool else Bool else if false then Bool else Bool
        d27 = if if p5 then d17 else false then if p1 then d22 else false else if false then p3 else p1
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if false then Bool else x29 ) ) ) $ ( if false then Bool else Bool )
        d28 = if if p5 then d25 else true then if p3 then false else false else if d9 then d17 else p5
        d30 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if false then x32 else x32 ) ) ) $ ( if true then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if false then false else false ) ) ) $ ( if p1 then p3 else d9 )
        d33 : if false then if false then Bool else Bool else if true then Bool else Bool
        d33 = if if p1 then p1 else true then if d7 then d18 else d7 else if d27 then p3 else true
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> x35 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d34 = if if p1 then p5 else d22 then if d27 then true else p5 else if false then d33 else p1
        d37 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then x40 else x40 ) ) ) $ ( if true then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> d18 ) ) ) $ ( d25 ) ) ) ) $ ( if p3 then p5 else true )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> x42 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d41 = if if false then false else p3 then if true then p1 else p3 else if true then d7 else d18
        d44 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> x47 ) ) ) $ ( x47 ) ) ) ) $ ( if true then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if true then true else p3 )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> Bool ) ) ) $ ( x51 ) ) ) ) $ ( if false then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if d28 then false else true ) ) ) $ ( if p1 then d37 else false )
        d53 : if false then if false then Bool else Bool else if false then Bool else Bool
        d53 = if if d41 then p1 else false then if p5 then false else p3 else if d37 then true else false
        d54 : if false then if true then Bool else Bool else if true then Bool else Bool
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> if p3 then d25 else true ) ) ) $ ( if p3 then p5 else p5 )
        d56 : if false then if true then Bool else Bool else if false then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> true ) ) ) $ ( d49 ) ) ) ) $ ( if false then p5 else true )
        d59 : if true then if false then Bool else Bool else if true then Bool else Bool
        d59 = if if p5 then d56 else true then if p3 then false else false else if d41 then p5 else true
        d60 : if true then if true then Bool else Bool else if true then Bool else Bool
        d60 = if if d7 then d49 else false then if d17 then p5 else d25 else if d44 then p5 else true
        d61 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if true then x64 else x64 ) ) ) $ ( if false then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> d44 ) ) ) $ ( d28 ) ) ) ) $ ( if d41 then true else d34 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> x68 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> d17 ) ) ) $ ( x66 ) ) ) ) $ ( if true then true else d18 )
        d70 : if false then if false then Bool else Bool else if false then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> d56 ) ) ) $ ( d37 ) ) ) ) $ ( if true then true else false )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> Bool ) ) ) $ ( x75 ) ) ) ) $ ( if false then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if p1 then p1 else d25 ) ) ) $ ( if p3 then p3 else d28 )
        d77 : if false then if false then Bool else Bool else if true then Bool else Bool
        d77 = if if p3 then d8 else d27 then if p3 then false else p1 else if p5 then true else p3
        d78 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if false then x81 else x81 ) ) ) $ ( if false then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> p3 ) ) ) $ ( d8 ) ) ) ) $ ( if d37 then p1 else p5 )
        d82 : if true then if true then Bool else Bool else if false then Bool else Bool
        d82 = if if false then p3 else p5 then if true then d53 else p3 else if true then false else p1
        d83 : if false then if false then Bool else Bool else if false then Bool else Bool
        d83 = if if d41 then true else p1 then if p5 then false else true else if false then true else p3
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> Bool ) ) ) $ ( x85 ) ) ) ) $ ( if false then Bool else Bool )
        d84 = if if p3 then true else d28 then if p5 then d61 else p1 else if p5 then d49 else d18
        d87 : if false then if false then Bool else Bool else if false then Bool else Bool
        d87 = if if false then false else true then if false then true else d37 else if p5 then false else p1
        d88 : if true then if true then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if p1 then true else d56 ) ) ) $ ( if true then false else p5 )
        d90 : if false then if false then Bool else Bool else if true then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if p3 then d37 else false ) ) ) $ ( if true then d78 else true )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if false then x93 else Bool ) ) ) $ ( if false then Bool else Bool )
        d92 = if if d56 then false else p3 then if d88 then p1 else p3 else if p1 then p1 else true
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if true then x95 else x95 ) ) ) $ ( if false then Bool else Bool )
        d94 = if if p3 then d70 else d9 then if p5 then d78 else p1 else if true then d34 else false
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d96 = if if p5 then true else d92 then if false then p1 else false else if p1 then p3 else false
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> x99 ) ) ) $ ( x99 ) ) ) ) $ ( if true then Bool else Bool )
        d98 = if if p1 then p3 else p3 then if false then p5 else p3 else if p5 then false else p5
        d101 : if true then if false then Bool else Bool else if true then Bool else Bool
        d101 = if if p3 then d60 else p3 then if d84 then p5 else d8 else if true then d61 else p1
        d102 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if d33 then d78 else d27 ) ) ) $ ( if p1 then true else true )
        d105 : if true then if true then Bool else Bool else if false then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if d102 then p1 else d98 ) ) ) $ ( if p1 then d54 else d87 )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> if p1 then true else true ) ) ) $ ( if p5 then p5 else p1 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d111 = if if true then p5 else d18 then if p5 then p1 else p5 else if false then true else true
        d113 : if false then if false then Bool else Bool else if false then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if p5 then x114 else p5 ) ) ) $ ( if d96 then p3 else p5 )
        d115 : if false then if true then Bool else Bool else if true then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> if false then true else p5 ) ) ) $ ( if d53 then p1 else true )
        d117 : if false then if false then Bool else Bool else if false then Bool else Bool
        d117 = if if d107 then d102 else false then if false then false else p5 else if p3 then true else true
        d118 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> Bool ) ) ) $ ( x121 ) ) ) ) $ ( if false then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> false ) ) ) $ ( true ) ) ) ) $ ( if d37 then p1 else d107 )
        d123 : ( ( Set -> Set ) ∋ ( ( λ x126 -> if true then x126 else x126 ) ) ) $ ( if true then Bool else Bool )
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( Bool -> Bool ) ∋ ( ( λ x125 -> p5 ) ) ) $ ( d54 ) ) ) ) $ ( if p3 then true else true )
        d127 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x131 -> Bool ) ) ) $ ( x130 ) ) ) ) $ ( if false then Bool else Bool )
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> ( ( Bool -> Bool ) ∋ ( ( λ x129 -> d41 ) ) ) $ ( false ) ) ) ) $ ( if p5 then true else d107 )
        d132 : if true then if false then Bool else Bool else if true then Bool else Bool
        d132 = ( ( Bool -> Bool ) ∋ ( ( λ x133 -> ( ( Bool -> Bool ) ∋ ( ( λ x134 -> x133 ) ) ) $ ( x133 ) ) ) ) $ ( if p5 then d59 else p3 )
    module M'  = M ( false ) 