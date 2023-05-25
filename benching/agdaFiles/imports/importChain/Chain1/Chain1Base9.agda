module Chain1Base9  where
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

    module M ( p1 : if false then Bool else Bool )  where
        d2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> ( ( Set -> Set ) ∋ ( ( λ x4 -> x3 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d2 = if if p1 then true else p1 then if p1 then true else false else if true then p1 else false
        d5 : if true then if true then Bool else Bool else if false then Bool else Bool
        d5 = if if p1 then d2 else p1 then if p1 then d2 else p1 else if true then true else true
        d6 : if true then if true then Bool else Bool else if false then Bool else Bool
        d6 = if if d2 then false else d5 then if p1 then false else p1 else if d5 then d5 else p1
        d7 : if true then if false then Bool else Bool else if false then Bool else Bool
        d7 = if if true then p1 else d2 then if true then d5 else p1 else if p1 then p1 else true
        d8 : if false then if false then Bool else Bool else if true then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if x9 then p1 else false ) ) ) $ ( if p1 then d2 else d5 )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if false then Bool else x11 ) ) ) $ ( if true then Bool else Bool )
        d10 = if if false then p1 else d2 then if d6 then d8 else p1 else if d5 then false else p1
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> x13 ) ) ) $ ( x13 ) ) ) ) $ ( if true then Bool else Bool )
        d12 = if if true then p1 else p1 then if false then d6 else p1 else if d10 then false else d8
        d15 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if false then x18 else x18 ) ) ) $ ( if true then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> false ) ) ) $ ( x16 ) ) ) ) $ ( if p1 then d5 else false )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> d7 ) ) ) $ ( p1 ) ) ) ) $ ( if d7 then p1 else true )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if false then x26 else Bool ) ) ) $ ( if false then Bool else Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if p1 then p1 else d19 ) ) ) $ ( if true then false else p1 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if false then x29 else x29 ) ) ) $ ( if false then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if x28 then d2 else x28 ) ) ) $ ( if d7 then d15 else d10 )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> Bool ) ) ) $ ( x32 ) ) ) ) $ ( if true then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if false then true else true ) ) ) $ ( if p1 then true else d19 )
        d34 : if false then if true then Bool else Bool else if true then Bool else Bool
        d34 = if if p1 then p1 else p1 then if false then true else d30 else if true then d30 else p1
        d35 : if true then if false then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if true then d2 else d5 )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> Bool ) ) ) $ ( x40 ) ) ) ) $ ( if true then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if p1 then d27 else x39 ) ) ) $ ( if false then p1 else true )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x45 -> ( ( Set -> Set ) ∋ ( ( λ x46 -> Bool ) ) ) $ ( x45 ) ) ) ) $ ( if true then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> false ) ) ) $ ( false ) ) ) ) $ ( if p1 then false else p1 )
        d47 : if false then if false then Bool else Bool else if false then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> d38 ) ) ) $ ( p1 ) ) ) ) $ ( if true then p1 else d12 )
        d50 : if true then if false then Bool else Bool else if false then Bool else Bool
        d50 = if if false then d12 else p1 then if false then false else true else if d47 then p1 else p1
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> x52 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d51 = if if d8 then d5 else d2 then if d34 then d10 else p1 else if false then d42 else d47
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if true then Bool else x55 ) ) ) $ ( if false then Bool else Bool )
        d54 = if if false then d15 else d10 then if true then d35 else false else if d50 then true else p1
        d56 : if false then if false then Bool else Bool else if true then Bool else Bool
        d56 = if if d54 then false else p1 then if d30 then p1 else p1 else if true then p1 else d5
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if false then x58 else Bool ) ) ) $ ( if false then Bool else Bool )
        d57 = if if p1 then p1 else false then if p1 then p1 else true else if d38 then p1 else d30
        d59 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if true then x61 else x61 ) ) ) $ ( if false then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if x60 then false else p1 ) ) ) $ ( if true then d47 else false )
        d62 : if false then if true then Bool else Bool else if false then Bool else Bool
        d62 = if if p1 then false else d50 then if p1 then d6 else false else if false then p1 else d42
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if true then Bool else x64 ) ) ) $ ( if false then Bool else Bool )
        d63 = if if d54 then p1 else d38 then if false then d35 else false else if d62 then p1 else d34
        d65 : if true then if true then Bool else Bool else if false then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if d59 then true else false ) ) ) $ ( if d54 then d59 else p1 )
        d67 : if true then if true then Bool else Bool else if true then Bool else Bool
        d67 = if if p1 then d30 else true then if d6 then p1 else p1 else if true then d15 else p1
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d68 = if if false then p1 else true then if p1 then p1 else false else if d62 then p1 else p1
        d70 : if false then if true then Bool else Bool else if true then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> x72 ) ) ) $ ( d6 ) ) ) ) $ ( if p1 then p1 else d63 )
        d73 : if true then if false then Bool else Bool else if true then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> d62 ) ) ) $ ( d30 ) ) ) ) $ ( if d27 then true else p1 )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if false then x77 else x77 ) ) ) $ ( if true then Bool else Bool )
        d76 = if if p1 then d35 else false then if true then p1 else p1 else if false then false else p1
        d78 : if false then if true then Bool else Bool else if true then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if d7 then d56 else true ) ) ) $ ( if true then true else p1 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x83 -> if true then x83 else Bool ) ) ) $ ( if false then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> ( ( Bool -> Bool ) ∋ ( ( λ x82 -> false ) ) ) $ ( x81 ) ) ) ) $ ( if false then false else false )
        d84 : if true then if true then Bool else Bool else if true then Bool else Bool
        d84 = if if p1 then d76 else p1 then if p1 then false else d63 else if true then d8 else p1
        d85 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if false then x88 else x88 ) ) ) $ ( if true then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> p1 ) ) ) $ ( d8 ) ) ) ) $ ( if true then p1 else true )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> x92 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if p1 then d35 else x90 ) ) ) $ ( if false then p1 else false )
        d93 : if false then if true then Bool else Bool else if true then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if d50 then d15 else true ) ) ) $ ( if p1 then false else d65 )
        d95 : if false then if true then Bool else Bool else if false then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if false then x96 else p1 ) ) ) $ ( if d30 then p1 else p1 )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if false then x98 else x98 ) ) ) $ ( if true then Bool else Bool )
        d97 = if if p1 then false else d76 then if d95 then d34 else d10 else if d6 then d8 else true
        d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> Bool ) ) ) $ ( x100 ) ) ) ) $ ( if false then Bool else Bool )
        d99 = if if d7 then true else true then if d62 then p1 else d95 else if true then d59 else d67
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> Bool ) ) ) $ ( x103 ) ) ) ) $ ( if false then Bool else Bool )
        d102 = if if p1 then p1 else p1 then if p1 then p1 else p1 else if false then d56 else p1
        d105 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( Bool -> Bool ) ∋ ( ( λ x107 -> d85 ) ) ) $ ( false ) ) ) ) $ ( if d35 then p1 else p1 )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d109 = if if true then true else d5 then if true then p1 else d7 else if d56 then d6 else true
        d112 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if false then x115 else x115 ) ) ) $ ( if false then Bool else Bool )
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> d102 ) ) ) $ ( d50 ) ) ) ) $ ( if p1 then d54 else d5 )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if false then x118 else x118 ) ) ) $ ( if false then Bool else Bool )
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> if d38 then true else p1 ) ) ) $ ( if d63 then false else false )
        d119 : if false then if true then Bool else Bool else if true then Bool else Bool
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> x121 ) ) ) $ ( d57 ) ) ) ) $ ( if false then false else d12 )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x124 -> if false then x124 else x124 ) ) ) $ ( if false then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> if d8 then d56 else false ) ) ) $ ( if true then d78 else true )
        d125 : if true then if true then Bool else Bool else if true then Bool else Bool
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> if d30 then false else true ) ) ) $ ( if false then d34 else d8 )
        d127 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d127 = if if false then p1 else d2 then if d65 then true else p1 else if d105 then p1 else p1
        d129 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> Bool ) ) ) $ ( x132 ) ) ) ) $ ( if false then Bool else Bool )
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x131 -> d7 ) ) ) $ ( p1 ) ) ) ) $ ( if d102 then p1 else false )
    module M'  = M ( true ) 