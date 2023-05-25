module Chain2Base6  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ( p3 : if false then Bool else Bool )  where
        d4 : if true then if true then Bool else Bool else if true then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if false then x5 else p1 ) ) ) $ ( if p3 then false else p3 )
        d6 : if false then if true then Bool else Bool else if true then Bool else Bool
        d6 = if if d4 then d4 else d4 then if p3 then false else d4 else if false then d4 else false
        d7 : if true then if true then Bool else Bool else if true then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if d4 then p1 else p3 ) ) ) $ ( if true then p1 else p3 )
        d9 : if false then if false then Bool else Bool else if false then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if true then d6 else d6 ) ) ) $ ( if false then p1 else true )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> x13 ) ) ) $ ( x13 ) ) ) ) $ ( if false then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if d4 then p3 else false ) ) ) $ ( if p3 then d7 else p1 )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> Bool ) ) ) $ ( x16 ) ) ) ) $ ( if false then Bool else Bool )
        d15 = if if d4 then p3 else false then if p1 then false else true else if p3 then d4 else d9
        d18 : if true then if true then Bool else Bool else if true then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if true then p3 else d4 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> x22 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d21 = if if true then false else false then if p3 then p1 else d18 else if p3 then p1 else true
        d24 : if false then if false then Bool else Bool else if false then Bool else Bool
        d24 = if if p3 then p1 else d21 then if d15 then false else false else if true then p3 else d7
        d25 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> x29 ) ) ) $ ( x28 ) ) ) ) $ ( if false then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> d4 ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then p1 else p1 )
        d30 : if true then if false then Bool else Bool else if false then Bool else Bool
        d30 = if if p1 then d21 else d7 then if p3 then d9 else p1 else if p1 then p1 else d11
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> x33 ) ) ) $ ( x32 ) ) ) ) $ ( if true then Bool else Bool )
        d31 = if if true then p3 else p3 then if p3 then d24 else p3 else if false then true else p3
        d34 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> x37 ) ) ) $ ( x37 ) ) ) ) $ ( if true then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> d25 ) ) ) $ ( x35 ) ) ) ) $ ( if true then true else p3 )
        d39 : if true then if true then Bool else Bool else if false then Bool else Bool
        d39 = if if p3 then d6 else p1 then if d21 then false else p1 else if d15 then p1 else d25
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> ( ( Set -> Set ) ∋ ( ( λ x42 -> x42 ) ) ) $ ( x41 ) ) ) ) $ ( if false then Bool else Bool )
        d40 = if if p1 then d30 else p1 then if d24 then p3 else false else if p3 then true else true
        d43 : if false then if true then Bool else Bool else if true then Bool else Bool
        d43 = if if p3 then false else p1 then if d34 then false else d30 else if p1 then false else p1
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> ( ( Set -> Set ) ∋ ( ( λ x46 -> Bool ) ) ) $ ( x45 ) ) ) ) $ ( if false then Bool else Bool )
        d44 = if if false then d34 else p1 then if true then d7 else p3 else if p3 then false else d9
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> Bool ) ) ) $ ( x48 ) ) ) ) $ ( if true then Bool else Bool )
        d47 = if if true then false else p3 then if p3 then d6 else d43 else if p1 then d9 else d44
        d50 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if true then x53 else x53 ) ) ) $ ( if true then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> true ) ) ) $ ( d9 ) ) ) ) $ ( if true then false else p1 )
        d54 : if false then if false then Bool else Bool else if false then Bool else Bool
        d54 = if if d43 then d4 else d44 then if p3 then d34 else d43 else if true then false else false
        d55 : if true then if true then Bool else Bool else if true then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if p3 then d25 else d50 ) ) ) $ ( if p3 then false else true )
        d57 : if true then if false then Bool else Bool else if true then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> ( ( Bool -> Bool ) ∋ ( ( λ x59 -> d9 ) ) ) $ ( false ) ) ) ) $ ( if d4 then p3 else false )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> Bool ) ) ) $ ( x61 ) ) ) ) $ ( if false then Bool else Bool )
        d60 = if if p1 then d57 else p3 then if false then d50 else true else if d34 then d4 else false
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x65 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d63 = if if p1 then d21 else p3 then if false then true else d30 else if true then p1 else d6
        d66 : if true then if true then Bool else Bool else if false then Bool else Bool
        d66 = if if d54 then true else d34 then if p3 then d9 else true else if d50 then p1 else p3
        d67 : if false then if false then Bool else Bool else if false then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> false ) ) ) $ ( false ) ) ) ) $ ( if d21 then false else d55 )
        d70 : if false then if false then Bool else Bool else if false then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> d15 ) ) ) $ ( x71 ) ) ) ) $ ( if p3 then true else d4 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if false then Bool else x74 ) ) ) $ ( if false then Bool else Bool )
        d73 = if if d66 then p1 else false then if d4 then d63 else d34 else if p3 then p3 else p1
        d75 : ( ( Set -> Set ) ∋ ( ( λ x76 -> ( ( Set -> Set ) ∋ ( ( λ x77 -> x76 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d75 = if if p1 then d55 else d30 then if p1 then true else p3 else if true then false else d39
        d78 : if true then if true then Bool else Bool else if false then Bool else Bool
        d78 = if if true then p3 else d63 then if p3 then p1 else true else if false then p3 else p3
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> x82 ) ) ) $ ( x82 ) ) ) ) $ ( if false then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> d70 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d57 )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if false then x86 else x86 ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if false then p3 else p1 ) ) ) $ ( if p1 then true else false )
        d87 : if false then if false then Bool else Bool else if true then Bool else Bool
        d87 = if if p3 then d39 else true then if true then true else d40 else if d40 then p1 else p1
        d88 : if true then if true then Bool else Bool else if true then Bool else Bool
        d88 = if if false then p1 else false then if d79 then p3 else p3 else if p1 then d24 else d43
        d89 : if true then if false then Bool else Bool else if false then Bool else Bool
        d89 = if if false then p1 else d18 then if d6 then p3 else d39 else if false then true else p1
        d90 : if true then if true then Bool else Bool else if false then Bool else Bool
        d90 = if if d21 then p3 else true then if p1 then false else p3 else if true then true else false
        d91 : if true then if true then Bool else Bool else if false then Bool else Bool
        d91 = if if p3 then p3 else p1 then if p3 then d66 else p3 else if d9 then p1 else true
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> x93 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d92 = if if d15 then d40 else false then if false then d9 else p3 else if d30 then p1 else false
        d95 : if false then if false then Bool else Bool else if true then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> true ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then d87 else p1 )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if false then Bool else x101 ) ) ) $ ( if false then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> true ) ) ) $ ( x99 ) ) ) ) $ ( if true then false else p3 )
        d102 : if true then if true then Bool else Bool else if true then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> p3 ) ) ) $ ( d47 ) ) ) ) $ ( if true then false else true )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if true then x106 else Bool ) ) ) $ ( if true then Bool else Bool )
        d105 = if if p3 then true else p1 then if p3 then d11 else d95 else if false then p1 else false
        d107 : if false then if false then Bool else Bool else if false then Bool else Bool
        d107 = if if d84 then p1 else d6 then if p1 then true else true else if d7 then false else p3
        d108 : if false then if true then Bool else Bool else if false then Bool else Bool
        d108 = if if d30 then true else p1 then if true then d84 else p1 else if p1 then false else p1
        d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d109 = if if p1 then true else p1 then if d105 then p1 else false else if p1 then p3 else d63
        d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if false then Bool else x112 ) ) ) $ ( if true then Bool else Bool )
        d111 = if if true then p1 else d9 then if p1 then d109 else p3 else if d79 then false else d55
        d113 : if false then if false then Bool else Bool else if true then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> d31 ) ) ) $ ( d89 ) ) ) ) $ ( if true then p1 else false )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d116 = if if p3 then p3 else d89 then if d67 then false else true else if p3 then p3 else false
        d119 : if true then if false then Bool else Bool else if true then Bool else Bool
        d119 = if if d108 then d87 else p1 then if false then d70 else p3 else if p1 then d40 else false
        d120 : if true then if false then Bool else Bool else if false then Bool else Bool
        d120 = if if true then d109 else true then if p3 then true else p3 else if p3 then false else p3
    module M'  = M ( true ) 