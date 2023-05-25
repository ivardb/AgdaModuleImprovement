module Chain2Base1  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then Bool else x2 ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then Bool else x4 ) ) ) $ ( Bool ) )  where
        d5 : if false then if false then Bool else Bool else if false then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if p1 then false else false ) ) ) $ ( if false then p3 else p1 )
        d7 : if true then if false then Bool else Bool else if true then Bool else Bool
        d7 = if if true then d5 else d5 then if p3 then p1 else false else if true then p3 else p3
        d8 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if true then x10 else Bool ) ) ) $ ( if true then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if d5 then d5 else x9 ) ) ) $ ( if p1 then d7 else d7 )
        d11 : if false then if false then Bool else Bool else if true then Bool else Bool
        d11 = if if d8 then p1 else d5 then if false then d8 else d5 else if true then p3 else p3
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> Bool ) ) ) $ ( x13 ) ) ) ) $ ( if false then Bool else Bool )
        d12 = if if d5 then d7 else d8 then if false then d7 else d7 else if false then d5 else p3
        d15 : if true then if false then Bool else Bool else if true then Bool else Bool
        d15 = if if false then p3 else p3 then if d5 then d5 else p1 else if p3 then false else p1
        d16 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> Bool ) ) ) $ ( x19 ) ) ) ) $ ( if false then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> p1 ) ) ) $ ( d11 ) ) ) ) $ ( if p3 then true else d15 )
        d21 : if true then if false then Bool else Bool else if true then Bool else Bool
        d21 = if if true then d11 else p3 then if false then true else p3 else if d7 then true else d16
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d22 = if if true then p1 else d12 then if d21 then d16 else d21 else if p1 then true else true
        d25 : if false then if true then Bool else Bool else if false then Bool else Bool
        d25 = if if d8 then d15 else d22 then if false then p1 else p3 else if p1 then p3 else d22
        d26 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if true then Bool else x28 ) ) ) $ ( if true then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> if d8 then d5 else false ) ) ) $ ( if p1 then d22 else d8 )
        d29 : if true then if false then Bool else Bool else if true then Bool else Bool
        d29 = if if false then false else p1 then if d25 then d16 else d21 else if true then false else p1
        d30 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if false then x32 else Bool ) ) ) $ ( if false then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if d21 then p3 else true ) ) ) $ ( if true then d16 else p3 )
        d33 : if true then if true then Bool else Bool else if false then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> d22 ) ) ) $ ( p1 ) ) ) ) $ ( if false then d26 else p1 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> x39 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if true then false else false ) ) ) $ ( if true then true else p1 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x42 -> if true then Bool else x42 ) ) ) $ ( if false then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if d36 then d16 else x41 ) ) ) $ ( if p3 then p1 else true )
        d43 : if true then if true then Bool else Bool else if false then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if d21 then true else d12 ) ) ) $ ( if p1 then true else p1 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> x49 ) ) ) $ ( x48 ) ) ) ) $ ( if true then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> d40 ) ) ) $ ( p3 ) ) ) ) $ ( if d29 then p3 else p3 )
        d50 : if true then if true then Bool else Bool else if true then Bool else Bool
        d50 = if if false then p3 else p1 then if true then d36 else false else if d26 then true else true
        d51 : if true then if true then Bool else Bool else if false then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if true then false else false ) ) ) $ ( if true then p3 else d36 )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if p1 then d29 else true ) ) ) $ ( if false then p3 else false )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if false then Bool else x58 ) ) ) $ ( if false then Bool else Bool )
        d57 = if if p1 then p1 else false then if true then p1 else d21 else if p3 then true else d7
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if true then Bool else x60 ) ) ) $ ( if true then Bool else Bool )
        d59 = if if p1 then p3 else true then if p1 then false else false else if p1 then p3 else d50
        d61 : if true then if true then Bool else Bool else if true then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> x62 ) ) ) $ ( p3 ) ) ) ) $ ( if false then d8 else p3 )
        d64 : if true then if true then Bool else Bool else if false then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if p3 then false else true ) ) ) $ ( if true then false else true )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> x68 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if true then true else p1 ) ) ) $ ( if p3 then p3 else true )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d70 = if if p3 then false else p3 then if p1 then d8 else p1 else if true then d45 else d16
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> x75 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d73 = if if true then d59 else d64 then if p1 then false else p3 else if p1 then true else p1
        d76 : if true then if false then Bool else Bool else if false then Bool else Bool
        d76 = if if d33 then d50 else p1 then if false then p3 else d45 else if p3 then d73 else d26
        d77 : if false then if false then Bool else Bool else if true then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> true ) ) ) $ ( d12 ) ) ) ) $ ( if d40 then true else d25 )
        d80 : if false then if true then Bool else Bool else if true then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if p3 then p3 else true ) ) ) $ ( if false then p1 else true )
        d82 : if true then if false then Bool else Bool else if true then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if true then d57 else true ) ) ) $ ( if false then false else d50 )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> x85 ) ) ) $ ( x85 ) ) ) ) $ ( if false then Bool else Bool )
        d84 = if if d45 then d43 else d22 then if p1 then true else d70 else if p3 then p3 else true
        d87 : if true then if false then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if d30 then true else d59 ) ) ) $ ( if false then p3 else d80 )
        d89 : if true then if false then Bool else Bool else if true then Bool else Bool
        d89 = if if p1 then d51 else true then if d43 then p1 else p1 else if p1 then d57 else p3
        d90 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> d70 ) ) ) $ ( d50 ) ) ) ) $ ( if d59 then p1 else d73 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> x96 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d94 = if if d8 then d5 else true then if p1 then false else p1 else if p3 then d76 else p3
        d97 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if false then Bool else x99 ) ) ) $ ( if false then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if p3 then true else false ) ) ) $ ( if d29 then p1 else p3 )
        d100 : if false then if true then Bool else Bool else if false then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> false ) ) ) $ ( x101 ) ) ) ) $ ( if d21 then p3 else false )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> Bool ) ) ) $ ( x104 ) ) ) ) $ ( if false then Bool else Bool )
        d103 = if if p3 then true else d8 then if d15 then d90 else true else if p3 then p3 else d43
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> Bool ) ) ) $ ( x107 ) ) ) ) $ ( if false then Bool else Bool )
        d106 = if if d87 then p1 else p3 then if p3 then true else d84 else if d36 then p1 else d73
        d109 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> x112 ) ) ) $ ( x111 ) ) ) ) $ ( if false then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if x110 then x110 else p1 ) ) ) $ ( if true then d26 else d66 )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> x117 ) ) ) $ ( x116 ) ) ) ) $ ( if true then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> p1 ) ) ) $ ( p3 ) ) ) ) $ ( if p3 then false else false )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> x120 ) ) ) $ ( x119 ) ) ) ) $ ( if true then Bool else Bool )
        d118 = if if p1 then false else false then if d8 then false else p3 else if d21 then d21 else d73
        d121 : if true then if false then Bool else Bool else if true then Bool else Bool
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> if false then p3 else x122 ) ) ) $ ( if d84 then false else true )
        d123 : if true then if true then Bool else Bool else if true then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( Bool -> Bool ) ∋ ( ( λ x125 -> p3 ) ) ) $ ( p3 ) ) ) ) $ ( if false then d8 else p1 )
        d126 : if true then if true then Bool else Bool else if false then Bool else Bool
        d126 = if if d94 then d100 else p1 then if false then false else p3 else if p3 then false else false
        d127 : if true then if true then Bool else Bool else if false then Bool else Bool
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> if d36 then d53 else p3 ) ) ) $ ( if true then true else d84 )
        d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x131 -> x131 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d129 = if if p3 then true else true then if d127 then d57 else false else if p3 then d76 else p1
        d132 : if false then if false then Bool else Bool else if true then Bool else Bool
        d132 = ( ( Bool -> Bool ) ∋ ( ( λ x133 -> if d21 then p1 else p3 ) ) ) $ ( if p1 then p1 else d59 )
    module M'  = M ( true ) 