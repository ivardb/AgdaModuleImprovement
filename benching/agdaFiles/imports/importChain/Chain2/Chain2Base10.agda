module Chain2Base10  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then Bool else x4 ) ) ) $ ( Bool ) )  where
        d5 : if false then if false then Bool else Bool else if false then Bool else Bool
        d5 = if if false then p3 else true then if p3 then true else p3 else if true then false else p3
        d6 : if true then if true then Bool else Bool else if false then Bool else Bool
        d6 = if if d5 then p1 else p3 then if false then d5 else d5 else if d5 then p3 else p3
        d7 : if false then if false then Bool else Bool else if false then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if false then p3 else d6 ) ) ) $ ( if true then d6 else true )
        d9 : if false then if true then Bool else Bool else if true then Bool else Bool
        d9 = if if d6 then true else false then if p3 then d6 else p1 else if p3 then d6 else true
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if false then x11 else x11 ) ) ) $ ( if false then Bool else Bool )
        d10 = if if false then p3 else d9 then if p1 then d9 else d5 else if p1 then p3 else p1
        d12 : if true then if false then Bool else Bool else if true then Bool else Bool
        d12 = if if d10 then d6 else d6 then if d9 then d7 else p3 else if d10 then d7 else d10
        d13 : if false then if false then Bool else Bool else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> x14 ) ) ) $ ( d9 ) ) ) ) $ ( if p3 then p3 else p1 )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d16 = if if d9 then d12 else d10 then if d10 then d7 else d5 else if p3 then p3 else false
        d19 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if false then x22 else x22 ) ) ) $ ( if false then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> d10 ) ) ) $ ( d16 ) ) ) ) $ ( if true then p3 else false )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> x24 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d23 = if if true then d13 else true then if d10 then p3 else true else if true then d7 else d13
        d26 : ( ( Set -> Set ) ∋ ( ( λ x29 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( x29 ) ) ) ) $ ( if true then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> d13 ) ) ) $ ( p3 ) ) ) ) $ ( if false then d13 else p3 )
        d31 : if false then if true then Bool else Bool else if true then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> x32 ) ) ) $ ( true ) ) ) ) $ ( if p1 then false else false )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if true then x35 else Bool ) ) ) $ ( if true then Bool else Bool )
        d34 = if if d23 then p3 else p3 then if d26 then d12 else d6 else if true then p1 else d7
        d36 : if true then if true then Bool else Bool else if false then Bool else Bool
        d36 = if if d10 then d9 else p3 then if false then false else d13 else if p1 then d19 else d19
        d37 : ( ( Set -> Set ) ∋ ( ( λ x38 -> if true then x38 else x38 ) ) ) $ ( if true then Bool else Bool )
        d37 = if if p1 then false else true then if p3 then false else true else if d9 then p1 else false
        d39 : if true then if true then Bool else Bool else if true then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if true then true else true ) ) ) $ ( if p3 then p3 else p3 )
        d41 : if true then if true then Bool else Bool else if false then Bool else Bool
        d41 = if if d34 then d19 else d39 then if p3 then d19 else p3 else if p3 then p1 else p1
        d42 : if true then if false then Bool else Bool else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if true then d26 else p1 ) ) ) $ ( if p1 then p3 else false )
        d44 : if true then if false then Bool else Bool else if false then Bool else Bool
        d44 = if if p1 then p1 else true then if d41 then p3 else false else if p3 then p3 else p1
        d45 : if false then if false then Bool else Bool else if true then Bool else Bool
        d45 = if if d19 then true else true then if true then d13 else p1 else if false then false else d36
        d46 : if true then if false then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> d42 ) ) ) $ ( false ) ) ) ) $ ( if d7 then true else p1 )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> x51 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if false then x50 else false ) ) ) $ ( if d41 then false else d37 )
        d53 : if false then if false then Bool else Bool else if false then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if false then d5 else false ) ) ) $ ( if d9 then d39 else p1 )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if false then x58 else Bool ) ) ) $ ( if false then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> true ) ) ) $ ( d5 ) ) ) ) $ ( if p1 then d37 else p1 )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if false then Bool else x60 ) ) ) $ ( if true then Bool else Bool )
        d59 = if if d9 then false else true then if true then p3 else d36 else if true then p1 else p1
        d61 : if false then if true then Bool else Bool else if false then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> d39 ) ) ) $ ( d39 ) ) ) ) $ ( if true then d42 else false )
        d64 : if false then if false then Bool else Bool else if false then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if d10 then p3 else p3 ) ) ) $ ( if false then p3 else false )
        d66 : if false then if true then Bool else Bool else if true then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if true then true else p1 ) ) ) $ ( if true then d45 else p3 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d68 = if if false then d39 else d16 then if d55 then p1 else d12 else if d26 then true else false
        d70 : if false then if true then Bool else Bool else if true then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> d44 ) ) ) $ ( false ) ) ) ) $ ( if p1 then p1 else d53 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if false then d39 else d10 ) ) ) $ ( if true then d23 else p3 )
        d77 : if true then if false then Bool else Bool else if true then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> true ) ) ) $ ( d73 ) ) ) ) $ ( if d6 then false else d26 )
        d80 : if true then if false then Bool else Bool else if false then Bool else Bool
        d80 = if if d39 then p1 else true then if false then false else p3 else if d36 then true else true
        d81 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if d34 then true else p1 ) ) ) $ ( if p1 then p1 else true )
        d85 : if false then if true then Bool else Bool else if true then Bool else Bool
        d85 = if if false then true else p1 then if p3 then p3 else p1 else if true then p3 else d66
        d86 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if true then true else p1 ) ) ) $ ( if d59 then d64 else false )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d89 = if if d73 then p3 else d31 then if d70 then p1 else false else if p3 then d64 else true
        d91 : if true then if true then Bool else Bool else if true then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> x93 ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then d59 else d34 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if false then Bool else x95 ) ) ) $ ( if true then Bool else Bool )
        d94 = if if p3 then p3 else true then if false then d77 else p3 else if false then p1 else p1
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> x98 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d96 = if if p1 then d26 else p3 then if false then d44 else d59 else if true then p1 else p3
        d99 : if false then if false then Bool else Bool else if true then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> d77 ) ) ) $ ( d5 ) ) ) ) $ ( if p1 then true else d80 )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> Bool ) ) ) $ ( x103 ) ) ) ) $ ( if true then Bool else Bool )
        d102 = if if d26 then p3 else d39 then if d89 then false else p3 else if true then d86 else d80
        d105 : if true then if false then Bool else Bool else if false then Bool else Bool
        d105 = if if p3 then d59 else d13 then if true then d102 else d9 else if p1 then p1 else true
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> Bool ) ) ) $ ( x107 ) ) ) ) $ ( if false then Bool else Bool )
        d106 = if if false then d12 else true then if false then d66 else false else if d73 then p1 else true
        d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> x110 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d109 = if if d106 then false else p3 then if true then d23 else d39 else if false then p1 else false
        d112 : if true then if false then Bool else Bool else if false then Bool else Bool
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> if false then false else false ) ) ) $ ( if d34 then d70 else d94 )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if false then x117 else Bool ) ) ) $ ( if false then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( Bool -> Bool ) ∋ ( ( λ x116 -> x116 ) ) ) $ ( p1 ) ) ) ) $ ( if d41 then p3 else d10 )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> Bool ) ) ) $ ( x121 ) ) ) ) $ ( if true then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d41 ) ) ) $ ( d6 ) ) ) ) $ ( if p1 then false else d99 )
        d123 : ( ( Set -> Set ) ∋ ( ( λ x126 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( Bool -> Bool ) ∋ ( ( λ x125 -> p3 ) ) ) $ ( p3 ) ) ) ) $ ( if false then p3 else false )
        d127 : ( ( Set -> Set ) ∋ ( ( λ x129 -> if true then x129 else Bool ) ) ) $ ( if false then Bool else Bool )
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> if true then true else true ) ) ) $ ( if p1 then p3 else d39 )
    module M'  = M ( false ) 