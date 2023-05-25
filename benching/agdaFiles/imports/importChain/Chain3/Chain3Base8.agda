module Chain3Base8  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then x2 else Bool ) ) ) $ ( Bool ) ) ( p3 : if true then Bool else Bool ) ( p4 : if true then Bool else Bool )  where
        d5 : if true then if false then Bool else Bool else if false then Bool else Bool
        d5 = if if p1 then false else p3 then if true then p3 else p3 else if p4 then p1 else p3
        d6 : if false then if true then Bool else Bool else if true then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> x8 ) ) ) $ ( d5 ) ) ) ) $ ( if d5 then d5 else p1 )
        d9 : if false then if true then Bool else Bool else if false then Bool else Bool
        d9 = if if d6 then p3 else d6 then if p3 then false else p4 else if p1 then d6 else false
        d10 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if true then x12 else x12 ) ) ) $ ( if true then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if p4 then p3 else true ) ) ) $ ( if p1 then p4 else false )
        d13 : if true then if false then Bool else Bool else if true then Bool else Bool
        d13 = if if d10 then d9 else false then if p3 then p3 else false else if p3 then d9 else true
        d14 : if true then if true then Bool else Bool else if false then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if d13 then true else false ) ) ) $ ( if false then d5 else d9 )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> Bool ) ) ) $ ( x17 ) ) ) ) $ ( if true then Bool else Bool )
        d16 = if if d9 then p3 else p3 then if true then p3 else true else if p4 then d5 else p4
        d19 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> x22 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> true ) ) ) $ ( p4 ) ) ) ) $ ( if p3 then d14 else true )
        d24 : if false then if false then Bool else Bool else if true then Bool else Bool
        d24 = if if p1 then d14 else p1 then if true then d10 else true else if false then p4 else p4
        d25 : if false then if false then Bool else Bool else if true then Bool else Bool
        d25 = if if d24 then d13 else d9 then if true then p3 else p4 else if false then d9 else p1
        d26 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if false then x29 else x29 ) ) ) $ ( if false then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> true ) ) ) $ ( d10 ) ) ) ) $ ( if d10 then false else true )
        d30 : if false then if true then Bool else Bool else if false then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> d6 ) ) ) $ ( false ) ) ) ) $ ( if d13 then p3 else d6 )
        d33 : if true then if false then Bool else Bool else if true then Bool else Bool
        d33 = if if p3 then true else d9 then if p3 then p3 else d5 else if false then d30 else d10
        d34 : if true then if true then Bool else Bool else if false then Bool else Bool
        d34 = if if true then p4 else true then if p4 then d6 else false else if true then p4 else d5
        d35 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> x37 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d35 = if if p3 then p4 else p3 then if d34 then p1 else p1 else if p1 then p1 else false
        d38 : if true then if true then Bool else Bool else if true then Bool else Bool
        d38 = if if p1 then d34 else p1 then if p4 then true else true else if d35 then true else p4
        d39 : if true then if false then Bool else Bool else if false then Bool else Bool
        d39 = if if true then d35 else d6 then if p1 then true else false else if true then d6 else p1
        d40 : if true then if false then Bool else Bool else if false then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> x41 ) ) ) $ ( d5 ) ) ) ) $ ( if false then false else false )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> x46 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> d26 ) ) ) $ ( p1 ) ) ) ) $ ( if p4 then d26 else p4 )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> x52 ) ) ) $ ( x51 ) ) ) ) $ ( if true then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> false ) ) ) $ ( true ) ) ) ) $ ( if d39 then true else d10 )
        d53 : if false then if false then Bool else Bool else if true then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if d40 then p1 else p1 ) ) ) $ ( if false then false else false )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if true then p4 else d5 ) ) ) $ ( if p1 then false else true )
        d59 : if false then if false then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> true ) ) ) $ ( d34 ) ) ) ) $ ( if false then d38 else p3 )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if false then p1 else d39 ) ) ) $ ( if d59 then false else p4 )
        d66 : if true then if false then Bool else Bool else if true then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if p1 then d55 else p3 ) ) ) $ ( if false then false else d26 )
        d68 : if true then if true then Bool else Bool else if true then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if false then false else d59 )
        d71 : if true then if true then Bool else Bool else if false then Bool else Bool
        d71 = if if p4 then false else p3 then if false then d10 else false else if true then true else p4
        d72 : if false then if true then Bool else Bool else if false then Bool else Bool
        d72 = if if p4 then false else p1 then if p3 then p3 else true else if false then d38 else true
        d73 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if false then x75 else Bool ) ) ) $ ( if false then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if false then false else true ) ) ) $ ( if p4 then p3 else false )
        d76 : if false then if true then Bool else Bool else if true then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if p4 then d26 else p1 ) ) ) $ ( if d24 then false else d40 )
        d78 : if false then if false then Bool else Bool else if false then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> p1 ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then false else d76 )
        d81 : if true then if false then Bool else Bool else if true then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> d59 ) ) ) $ ( true ) ) ) ) $ ( if true then d35 else d40 )
        d84 : if true then if true then Bool else Bool else if false then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> true ) ) ) $ ( p4 ) ) ) ) $ ( if p4 then d30 else p1 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> x90 ) ) ) $ ( x89 ) ) ) ) $ ( if true then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if d84 then true else x88 ) ) ) $ ( if true then p3 else false )
        d91 : if false then if true then Bool else Bool else if false then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if d81 then true else d19 ) ) ) $ ( if false then d13 else d25 )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> x96 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if true then d76 else true )
        d98 : if true then if true then Bool else Bool else if false then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> false ) ) ) $ ( d24 ) ) ) ) $ ( if true then false else p1 )
        d101 : if true then if false then Bool else Bool else if false then Bool else Bool
        d101 = if if p4 then true else p1 then if d25 then d76 else p1 else if d13 then p4 else p3
        d102 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if d26 then d76 else false ) ) ) $ ( if true then d25 else d24 )
        d105 : if true then if true then Bool else Bool else if false then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if x106 then d76 else false ) ) ) $ ( if p1 then d53 else d78 )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> if true then d25 else p1 ) ) ) $ ( if p3 then d102 else false )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> x112 ) ) ) $ ( d87 ) ) ) ) $ ( if p1 then false else p4 )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if false then x115 else x115 ) ) ) $ ( if false then Bool else Bool )
        d114 = if if p4 then p3 else p4 then if true then true else d35 else if p1 then false else p4
        d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d116 = if if false then d13 else d26 then if p1 then true else false else if false then false else p4
        d119 : if true then if false then Bool else Bool else if false then Bool else Bool
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> p3 ) ) ) $ ( x120 ) ) ) ) $ ( if p4 then true else p4 )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> Bool ) ) ) $ ( x125 ) ) ) ) $ ( if true then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> x124 ) ) ) $ ( d10 ) ) ) ) $ ( if d72 then d91 else false )
        d127 : if false then if true then Bool else Bool else if true then Bool else Bool
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> if true then false else true ) ) ) $ ( if false then d122 else p4 )
        d129 : if false then if true then Bool else Bool else if false then Bool else Bool
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x131 -> d66 ) ) ) $ ( d87 ) ) ) ) $ ( if true then p1 else false )
        d132 : ( ( Set -> Set ) ∋ ( ( λ x135 -> ( ( Set -> Set ) ∋ ( ( λ x136 -> x136 ) ) ) $ ( x135 ) ) ) ) $ ( if false then Bool else Bool )
        d132 = ( ( Bool -> Bool ) ∋ ( ( λ x133 -> ( ( Bool -> Bool ) ∋ ( ( λ x134 -> p3 ) ) ) $ ( d30 ) ) ) ) $ ( if p4 then d93 else d101 )
        d137 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> ( ( Bool -> Bool ) ∋ ( ( λ x139 -> true ) ) ) $ ( d30 ) ) ) ) $ ( if d72 then d72 else false )
    module M'  = M ( false ) 