module Chain3Base2  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then Bool else x2 ) ) ) $ ( Bool ) ) ( p3 : if true then Bool else Bool ) ( p4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if true then Bool else x5 ) ) ) $ ( Bool ) )  where
        d6 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> x9 ) ) ) $ ( x9 ) ) ) ) $ ( if false then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> p1 ) ) ) $ ( true ) ) ) ) $ ( if p4 then false else p1 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x14 -> ( ( Set -> Set ) ∋ ( ( λ x15 -> x14 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> true ) ) ) $ ( p4 ) ) ) ) $ ( if true then true else d6 )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> Bool ) ) ) $ ( x19 ) ) ) ) $ ( if true then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> d11 ) ) ) $ ( d11 ) ) ) ) $ ( if false then d6 else d11 )
        d21 : if false then if false then Bool else Bool else if false then Bool else Bool
        d21 = if if d6 then false else d16 then if false then d6 else p3 else if true then p1 else d6
        d22 : if true then if false then Bool else Bool else if true then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if p3 then p3 else p1 ) ) ) $ ( if true then false else true )
        d24 : if true then if true then Bool else Bool else if false then Bool else Bool
        d24 = if if d11 then d11 else p3 then if p4 then false else false else if true then p1 else true
        d25 : if true then if false then Bool else Bool else if true then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> d21 ) ) ) $ ( p1 ) ) ) ) $ ( if d6 then false else p4 )
        d28 : if false then if true then Bool else Bool else if true then Bool else Bool
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> x29 ) ) ) $ ( d16 ) ) ) ) $ ( if p3 then d21 else d11 )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d31 = if if true then d21 else d28 then if false then p1 else p4 else if d22 then p3 else false
        d33 : if false then if false then Bool else Bool else if false then Bool else Bool
        d33 = if if false then false else p3 then if false then false else false else if false then d24 else d16
        d34 : if true then if true then Bool else Bool else if false then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if p3 then false else d33 ) ) ) $ ( if true then p1 else d31 )
        d36 : if false then if false then Bool else Bool else if false then Bool else Bool
        d36 = if if d25 then true else p4 then if p3 then true else d22 else if false then true else d21
        d37 : ( ( Set -> Set ) ∋ ( ( λ x38 -> if false then Bool else x38 ) ) ) $ ( if false then Bool else Bool )
        d37 = if if false then d16 else true then if p3 then true else true else if d31 then d25 else d25
        d39 : if false then if true then Bool else Bool else if true then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> d31 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then false else false )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if true then Bool else x44 ) ) ) $ ( if true then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if true then x43 else x43 ) ) ) $ ( if false then d11 else d21 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if false then x47 else x47 ) ) ) $ ( if true then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if d31 then true else true ) ) ) $ ( if p1 then false else d36 )
        d48 : if true then if true then Bool else Bool else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if true then true else x49 ) ) ) $ ( if p3 then false else p3 )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> x52 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d50 = if if d33 then false else p4 then if d48 then d22 else p3 else if true then d45 else p4
        d53 : if true then if false then Bool else Bool else if false then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> d50 ) ) ) $ ( true ) ) ) ) $ ( if false then d48 else false )
        d56 : if true then if true then Bool else Bool else if true then Bool else Bool
        d56 = if if p3 then p1 else p1 then if false then p1 else p3 else if d16 then p3 else p3
        d57 : if false then if false then Bool else Bool else if true then Bool else Bool
        d57 = if if d50 then p1 else d6 then if d56 then p1 else false else if false then d6 else p4
        d58 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if true then x60 else Bool ) ) ) $ ( if true then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if d42 then p1 else false ) ) ) $ ( if d11 then false else d33 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> Bool ) ) ) $ ( x62 ) ) ) ) $ ( if true then Bool else Bool )
        d61 = if if p4 then p3 else p3 then if d37 then p1 else true else if false then false else d39
        d64 : if true then if false then Bool else Bool else if true then Bool else Bool
        d64 = if if false then false else false then if d28 then false else p4 else if p4 then true else d57
        d65 : if true then if false then Bool else Bool else if false then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> d22 ) ) ) $ ( d56 ) ) ) ) $ ( if p4 then p4 else p4 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( x69 ) ) ) ) $ ( if true then Bool else Bool )
        d68 = if if d45 then p3 else p1 then if d22 then d50 else true else if false then p1 else p1
        d71 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if true then Bool else x74 ) ) ) $ ( if false then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> x72 ) ) ) $ ( true ) ) ) ) $ ( if false then d33 else d45 )
        d75 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if true then Bool else x76 ) ) ) $ ( if false then Bool else Bool )
        d75 = if if d48 then p1 else true then if false then false else p3 else if false then d21 else true
        d77 : if false then if true then Bool else Bool else if true then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if p3 then d22 else d56 ) ) ) $ ( if p4 then false else false )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> d75 ) ) ) $ ( x80 ) ) ) ) $ ( if false then p1 else false )
        d84 : if true then if true then Bool else Bool else if false then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if p3 then d77 else p1 ) ) ) $ ( if d28 then true else d53 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> p3 ) ) ) $ ( p1 ) ) ) ) $ ( if d58 then d61 else false )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d91 = if if d21 then false else d24 then if d75 then false else d34 else if false then false else d22
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> Bool ) ) ) $ ( x94 ) ) ) ) $ ( if false then Bool else Bool )
        d93 = if if p1 then false else d36 then if d34 then d84 else d45 else if false then p1 else p1
        d96 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> x99 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> d21 ) ) ) $ ( x97 ) ) ) ) $ ( if d61 then p1 else false )
        d101 : if true then if false then Bool else Bool else if true then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> if p1 then true else true ) ) ) $ ( if d57 then p1 else p3 )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> Bool ) ) ) $ ( x104 ) ) ) ) $ ( if false then Bool else Bool )
        d103 = if if p1 then true else p4 then if true then false else p3 else if true then p4 else p3
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> Bool ) ) ) $ ( x107 ) ) ) ) $ ( if true then Bool else Bool )
        d106 = if if p1 then p4 else false then if false then p3 else p1 else if d31 then p1 else true
        d109 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if false then Bool else x112 ) ) ) $ ( if false then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x111 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if d68 then true else d36 )
        d113 : if true then if false then Bool else Bool else if false then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if p3 then p4 else d50 ) ) ) $ ( if d50 then p4 else false )
        d115 : if false then if true then Bool else Bool else if true then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> true ) ) ) $ ( d101 ) ) ) ) $ ( if d25 then p3 else false )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d118 = if if false then false else false then if false then d31 else d79 else if false then true else true
        d120 : ( ( Set -> Set ) ∋ ( ( λ x123 -> ( ( Set -> Set ) ∋ ( ( λ x124 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( Bool -> Bool ) ∋ ( ( λ x122 -> d84 ) ) ) $ ( true ) ) ) ) $ ( if p3 then p3 else true )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x127 -> if false then x127 else x127 ) ) ) $ ( if true then Bool else Bool )
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> if d106 then d45 else p3 ) ) ) $ ( if d115 then p1 else false )
        d128 : if true then if true then Bool else Bool else if false then Bool else Bool
        d128 = if if d24 then false else p1 then if p1 then false else true else if true then false else p4
        d129 : if true then if true then Bool else Bool else if false then Bool else Bool
        d129 = if if d91 then p1 else false then if true then d106 else p4 else if false then d31 else p1
        d130 : if true then if true then Bool else Bool else if true then Bool else Bool
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> if p3 then false else x131 ) ) ) $ ( if p1 then p1 else p3 )
        d132 : ( ( Set -> Set ) ∋ ( ( λ x133 -> ( ( Set -> Set ) ∋ ( ( λ x134 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d132 = if if d71 then true else false then if p4 then false else true else if d91 then d22 else false
        d135 : ( ( Set -> Set ) ∋ ( ( λ x136 -> if false then Bool else x136 ) ) ) $ ( if true then Bool else Bool )
        d135 = if if true then p3 else false then if p4 then p1 else true else if true then true else d61
        d137 : ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x141 -> x140 ) ) ) $ ( x140 ) ) ) ) $ ( if false then Bool else Bool )
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> ( ( Bool -> Bool ) ∋ ( ( λ x139 -> x139 ) ) ) $ ( true ) ) ) ) $ ( if false then p3 else p1 )
    module M'  = M ( true ) 