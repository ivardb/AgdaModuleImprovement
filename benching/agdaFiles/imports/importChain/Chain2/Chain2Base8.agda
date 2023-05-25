module Chain2Base8  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if true then Bool else Bool ) ) ) $ ( Bool ) )  where
        d4 : if false then if true then Bool else Bool else if false then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if p2 then true else p2 ) ) ) $ ( if false then p2 else true )
        d6 : if true then if false then Bool else Bool else if false then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if false then d4 else false ) ) ) $ ( if p1 then d4 else d4 )
        d8 : if true then if false then Bool else Bool else if false then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> x9 ) ) ) $ ( d4 ) ) ) ) $ ( if false then d6 else true )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if true then x12 else x12 ) ) ) $ ( if false then Bool else Bool )
        d11 = if if d6 then true else p1 then if d6 then p2 else false else if true then p1 else false
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d13 = if if true then d4 else d8 then if d4 then p2 else true else if p2 then p1 else d4
        d15 : if true then if false then Bool else Bool else if true then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if d11 then false else false ) ) ) $ ( if p2 then true else d6 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> x19 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if d15 then false else true ) ) ) $ ( if d15 then false else p1 )
        d21 : if true then if false then Bool else Bool else if false then Bool else Bool
        d21 = if if d6 then d17 else false then if d17 then p2 else true else if d11 then true else false
        d22 : if true then if true then Bool else Bool else if false then Bool else Bool
        d22 = if if d13 then true else d21 then if d13 then d11 else true else if d13 then false else true
        d23 : if false then if true then Bool else Bool else if true then Bool else Bool
        d23 = if if true then false else d13 then if d4 then d4 else p1 else if p1 then d8 else false
        d24 : if false then if true then Bool else Bool else if true then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if d17 then true else d23 ) ) ) $ ( if p1 then p2 else d13 )
        d26 : if true then if false then Bool else Bool else if false then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> p2 ) ) ) $ ( x27 ) ) ) ) $ ( if d17 then false else d4 )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> x32 ) ) ) $ ( x31 ) ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if x30 then false else x30 ) ) ) $ ( if d23 then d17 else p1 )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> Bool ) ) ) $ ( x34 ) ) ) ) $ ( if false then Bool else Bool )
        d33 = if if false then d4 else p2 then if false then p1 else p2 else if false then p1 else d8
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if false then x37 else x37 ) ) ) $ ( if true then Bool else Bool )
        d36 = if if d13 then d24 else p1 then if p1 then d22 else d21 else if d33 then p2 else false
        d38 : if false then if true then Bool else Bool else if false then Bool else Bool
        d38 = if if d26 then d8 else p1 then if false then false else true else if d26 then d26 else d4
        d39 : if true then if false then Bool else Bool else if true then Bool else Bool
        d39 = if if false then p2 else p1 then if d23 then p1 else p1 else if false then p1 else true
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if false then x41 else x41 ) ) ) $ ( if false then Bool else Bool )
        d40 = if if d11 then p2 else p1 then if false then false else p2 else if d21 then p2 else p1
        d42 : if true then if true then Bool else Bool else if false then Bool else Bool
        d42 = if if p1 then d22 else p2 then if d4 then true else p1 else if d26 then false else true
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> ( ( Set -> Set ) ∋ ( ( λ x45 -> x44 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d43 = if if p1 then true else p2 then if d29 then true else true else if d11 then d42 else true
        d46 : if true then if false then Bool else Bool else if false then Bool else Bool
        d46 = if if p1 then p1 else false then if true then p1 else d21 else if p2 then d26 else d43
        d47 : if true then if false then Bool else Bool else if true then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> d8 ) ) ) $ ( d22 ) ) ) ) $ ( if p1 then d23 else p2 )
        d50 : if true then if true then Bool else Bool else if true then Bool else Bool
        d50 = if if d13 then false else d15 then if d47 then true else p2 else if d38 then false else true
        d51 : if true then if false then Bool else Bool else if false then Bool else Bool
        d51 = if if true then d36 else p1 then if d26 then p1 else p1 else if false then d47 else false
        d52 : ( ( Set -> Set ) ∋ ( ( λ x54 -> ( ( Set -> Set ) ∋ ( ( λ x55 -> Bool ) ) ) $ ( x54 ) ) ) ) $ ( if false then Bool else Bool )
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if p2 then d40 else p2 ) ) ) $ ( if false then p2 else p2 )
        d56 : if false then if true then Bool else Bool else if true then Bool else Bool
        d56 = if if d6 then p2 else p1 then if p1 then false else p1 else if d11 then d23 else d39
        d57 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if false then x60 else Bool ) ) ) $ ( if true then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> ( ( Bool -> Bool ) ∋ ( ( λ x59 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then false else d22 )
        d61 : if true then if true then Bool else Bool else if true then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if true then true else d46 ) ) ) $ ( if d24 then d11 else true )
        d63 : if true then if true then Bool else Bool else if true then Bool else Bool
        d63 = if if d22 then true else d51 then if d61 then d43 else d4 else if false then p1 else p1
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x68 ) ) ) $ ( x67 ) ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> x65 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d15 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if false then false else true ) ) ) $ ( if p2 then false else false )
        d72 : if false then if false then Bool else Bool else if true then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if false then true else x73 ) ) ) $ ( if true then p1 else false )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> Bool ) ) ) $ ( x75 ) ) ) ) $ ( if false then Bool else Bool )
        d74 = if if d63 then false else false then if p2 then d17 else d8 else if false then d29 else true
        d77 : if true then if true then Bool else Bool else if false then Bool else Bool
        d77 = if if true then p1 else d43 then if p1 then p2 else false else if d64 then d43 else d64
        d78 : if true then if true then Bool else Bool else if false then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> x79 ) ) ) $ ( true ) ) ) ) $ ( if true then p1 else d50 )
        d81 : if true then if false then Bool else Bool else if false then Bool else Bool
        d81 = if if p2 then true else true then if p1 then d57 else false else if p1 then p1 else p2
        d82 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> x84 ) ) ) $ ( x83 ) ) ) ) $ ( if d39 then false else p1 )
        d86 : if true then if false then Bool else Bool else if true then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if d74 then d23 else d39 ) ) ) $ ( if d13 then false else true )
        d88 : if true then if false then Bool else Bool else if false then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if p2 then false else true ) ) ) $ ( if true then p1 else d43 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d90 = if if true then false else p2 then if p2 then d46 else d63 else if d8 then d72 else true
        d93 : if true then if true then Bool else Bool else if false then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> d26 ) ) ) $ ( p1 ) ) ) ) $ ( if true then d81 else p2 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> x99 ) ) ) $ ( x99 ) ) ) ) $ ( if true then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if p2 then false else d24 )
        d101 : if true then if false then Bool else Bool else if false then Bool else Bool
        d101 = if if p1 then p2 else p1 then if false then d56 else d78 else if p1 then true else d56
        d102 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if d69 then p2 else d21 ) ) ) $ ( if p1 then true else p1 )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if true then x107 else x107 ) ) ) $ ( if false then Bool else Bool )
        d106 = if if p2 then d57 else p1 then if d29 then true else true else if d81 then p2 else d38
        d108 : if true then if false then Bool else Bool else if true then Bool else Bool
        d108 = if if false then true else true then if d86 then false else d81 else if false then false else p2
        d109 : if true then if true then Bool else Bool else if true then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x111 -> p2 ) ) ) $ ( d88 ) ) ) ) $ ( if d43 then true else p1 )
        d112 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> Bool ) ) ) $ ( x114 ) ) ) ) $ ( if false then Bool else Bool )
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> if p2 then p2 else p2 ) ) ) $ ( if d6 then false else d86 )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> x118 ) ) ) $ ( x117 ) ) ) ) $ ( if true then Bool else Bool )
        d116 = if if d72 then false else d102 then if p1 then true else false else if p1 then p1 else d26
        d119 : if false then if true then Bool else Bool else if true then Bool else Bool
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> false ) ) ) $ ( false ) ) ) ) $ ( if p2 then false else true )
    module M'  = M ( false ) 