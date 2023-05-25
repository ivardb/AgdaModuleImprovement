module Chain2Base3  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ( p3 : if true then Bool else Bool )  where
        d4 : if false then if false then Bool else Bool else if false then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> false ) ) ) $ ( false ) ) ) ) $ ( if p3 then p1 else p1 )
        d7 : if true then if false then Bool else Bool else if false then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( ( Bool -> Bool ) ∋ ( ( λ x9 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then d4 else d4 )
        d10 : if false then if true then Bool else Bool else if false then Bool else Bool
        d10 = if if p3 then false else p3 then if true then d7 else d4 else if false then d7 else false
        d11 : if false then if false then Bool else Bool else if true then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> true ) ) ) $ ( d7 ) ) ) ) $ ( if d4 then d4 else p1 )
        d14 : if false then if false then Bool else Bool else if true then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if false then x15 else false ) ) ) $ ( if p3 then false else true )
        d16 : if true then if true then Bool else Bool else if false then Bool else Bool
        d16 = if if d10 then d7 else false then if d10 then false else p1 else if d4 then p3 else p3
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if false then x18 else x18 ) ) ) $ ( if true then Bool else Bool )
        d17 = if if true then true else d7 then if p3 then true else false else if d4 then p1 else d10
        d19 : if true then if true then Bool else Bool else if true then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if d7 then d14 else x20 ) ) ) $ ( if p3 then p3 else d7 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> x24 ) ) ) $ ( x23 ) ) ) ) $ ( if true then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if d19 then p3 else d4 ) ) ) $ ( if p3 then false else p3 )
        d25 : if false then if true then Bool else Bool else if true then Bool else Bool
        d25 = if if true then d19 else d21 then if d14 then p3 else true else if p1 then true else true
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> Bool ) ) ) $ ( x27 ) ) ) ) $ ( if false then Bool else Bool )
        d26 = if if false then d19 else true then if p3 then d4 else true else if false then p1 else d10
        d29 : if true then if false then Bool else Bool else if false then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if d14 then p3 else d16 ) ) ) $ ( if true then d7 else p1 )
        d31 : if false then if true then Bool else Bool else if false then Bool else Bool
        d31 = if if d7 then d25 else true then if d26 then d29 else d7 else if d4 then true else p3
        d32 : if true then if true then Bool else Bool else if false then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> ( ( Bool -> Bool ) ∋ ( ( λ x34 -> p3 ) ) ) $ ( d7 ) ) ) ) $ ( if false then p3 else p1 )
        d35 : if false then if false then Bool else Bool else if true then Bool else Bool
        d35 = if if d16 then d19 else p1 then if true then p3 else p1 else if false then p3 else p3
        d36 : if false then if true then Bool else Bool else if true then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> d31 ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x42 -> if true then Bool else x42 ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> x41 ) ) ) $ ( false ) ) ) ) $ ( if p1 then true else false )
        d43 : if false then if false then Bool else Bool else if true then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> p1 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d32 )
        d46 : if false then if false then Bool else Bool else if true then Bool else Bool
        d46 = if if d26 then d19 else true then if p1 then true else p1 else if false then p1 else p3
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> Bool ) ) ) $ ( x48 ) ) ) ) $ ( if true then Bool else Bool )
        d47 = if if true then true else true then if true then false else d21 else if p1 then true else d14
        d50 : ( ( Set -> Set ) ∋ ( ( λ x52 -> if false then x52 else x52 ) ) ) $ ( if true then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if false then d21 else d31 ) ) ) $ ( if false then p1 else p1 )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d53 = if if p1 then p3 else p3 then if true then false else p3 else if true then p3 else p1
        d55 : if true then if true then Bool else Bool else if false then Bool else Bool
        d55 = if if p1 then true else d36 then if false then d36 else d53 else if false then p3 else p3
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d56 = if if false then false else p3 then if p3 then true else p3 else if p3 then d47 else d21
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x61 -> x60 ) ) ) $ ( x60 ) ) ) ) $ ( if false then Bool else Bool )
        d59 = if if true then p3 else p3 then if d56 then d11 else p1 else if false then false else p1
        d62 : ( ( Set -> Set ) ∋ ( ( λ x65 -> ( ( Set -> Set ) ∋ ( ( λ x66 -> Bool ) ) ) $ ( x65 ) ) ) ) $ ( if true then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> false ) ) ) $ ( d11 ) ) ) ) $ ( if p1 then p3 else d11 )
        d67 : if true then if true then Bool else Bool else if false then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if true then false else false ) ) ) $ ( if false then true else p3 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> Bool ) ) ) $ ( x70 ) ) ) ) $ ( if false then Bool else Bool )
        d69 = if if p1 then d25 else true then if p1 then p3 else d19 else if false then false else true
        d72 : if false then if false then Bool else Bool else if false then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if false then d50 else x73 ) ) ) $ ( if d67 then false else p1 )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> x76 ) ) ) $ ( x75 ) ) ) ) $ ( if false then Bool else Bool )
        d74 = if if p3 then false else p1 then if d14 then true else d29 else if true then false else d25
        d77 : if false then if true then Bool else Bool else if true then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> d47 ) ) ) $ ( true ) ) ) ) $ ( if true then true else false )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if false then x81 else x81 ) ) ) $ ( if false then Bool else Bool )
        d80 = if if p3 then d74 else false then if p3 then false else d25 else if d59 then d11 else true
        d82 : if false then if true then Bool else Bool else if true then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if d67 then x83 else false ) ) ) $ ( if false then d14 else d55 )
        d84 : if true then if false then Bool else Bool else if true then Bool else Bool
        d84 = if if d43 then false else p1 then if p1 then false else true else if d56 then p1 else false
        d85 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if true then x88 else x88 ) ) ) $ ( if true then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> d11 ) ) ) $ ( p1 ) ) ) ) $ ( if d7 then false else false )
        d89 : if true then if true then Bool else Bool else if false then Bool else Bool
        d89 = if if d36 then p1 else d85 then if true then false else d35 else if false then true else false
        d90 : if true then if false then Bool else Bool else if false then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> x92 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d67 )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x96 -> if true then Bool else x96 ) ) ) $ ( if true then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> false ) ) ) $ ( d17 ) ) ) ) $ ( if d62 then false else true )
        d97 : if false then if true then Bool else Bool else if true then Bool else Bool
        d97 = if if true then d89 else false then if d47 then false else p1 else if p1 then d32 else p3
        d98 : if true then if true then Bool else Bool else if true then Bool else Bool
        d98 = if if d77 then true else p3 then if false then p3 else false else if d56 then p3 else p1
        d99 : if true then if false then Bool else Bool else if false then Bool else Bool
        d99 = if if false then d19 else false then if p3 then p1 else false else if true then false else false
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if true then x101 else x101 ) ) ) $ ( if true then Bool else Bool )
        d100 = if if true then d14 else p3 then if p1 then d55 else false else if d67 then false else false
        d102 : if true then if false then Bool else Bool else if true then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> d14 ) ) ) $ ( d29 ) ) ) ) $ ( if p3 then false else d90 )
        d105 : if true then if false then Bool else Bool else if true then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( Bool -> Bool ) ∋ ( ( λ x107 -> false ) ) ) $ ( d14 ) ) ) ) $ ( if p3 then p3 else p3 )
        d108 : if false then if true then Bool else Bool else if false then Bool else Bool
        d108 = if if p1 then d19 else d14 then if p1 then d16 else true else if p1 then true else true
        d109 : if false then if true then Bool else Bool else if true then Bool else Bool
        d109 = if if p3 then d10 else true then if p3 then d105 else p1 else if d11 then d84 else d32
        d110 : if false then if false then Bool else Bool else if false then Bool else Bool
        d110 = if if p3 then d31 else false then if d39 then p3 else p1 else if p3 then d16 else true
        d111 : if false then if false then Bool else Bool else if false then Bool else Bool
        d111 = if if p1 then p1 else p1 then if p3 then p3 else p3 else if d109 then d69 else false
        d112 : if true then if true then Bool else Bool else if true then Bool else Bool
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> d59 ) ) ) $ ( false ) ) ) ) $ ( if p3 then true else true )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if true then x116 else Bool ) ) ) $ ( if true then Bool else Bool )
        d115 = if if d100 then false else p3 then if false then p1 else p3 else if p1 then d32 else d69
    module M'  = M ( false ) 