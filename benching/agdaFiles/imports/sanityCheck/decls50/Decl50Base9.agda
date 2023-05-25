module Decl50Base9  where
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

    module M  where
        d1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> ( ( Set -> Set ) ∋ ( ( λ x3 -> x3 ) ) ) $ ( x2 ) ) ) ) $ ( if false then Bool else Bool )
        d1 = if if true then false else true then if true then false else true else if false then false else true
        d4 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> x8 ) ) ) $ ( x7 ) ) ) ) $ ( if false then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> d1 ) ) ) $ ( false ) ) ) ) $ ( if false then d1 else d1 )
        d9 : if false then if true then Bool else Bool else if true then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> x10 ) ) ) $ ( true ) ) ) ) $ ( if d4 then d4 else true )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> x13 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d12 = if if d1 then d4 else false then if d9 then d9 else d4 else if false then d1 else d4
        d15 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if true then x18 else x18 ) ) ) $ ( if false then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> false ) ) ) $ ( true ) ) ) ) $ ( if true then d4 else d12 )
        d19 : if true then if false then Bool else Bool else if true then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if false then false else d4 ) ) ) $ ( if false then true else d12 )
        d21 : if true then if false then Bool else Bool else if false then Bool else Bool
        d21 = if if d19 then false else d15 then if d9 then true else d4 else if d1 then false else false
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> Bool ) ) ) $ ( x23 ) ) ) ) $ ( if false then Bool else Bool )
        d22 = if if d12 then d1 else false then if true then d12 else true else if true then d4 else d19
        d25 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if false then x28 else x28 ) ) ) $ ( if true then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> x27 ) ) ) $ ( x26 ) ) ) ) $ ( if true then d12 else d19 )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> x33 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> true ) ) ) $ ( x30 ) ) ) ) $ ( if d1 then true else d15 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> Bool ) ) ) $ ( x35 ) ) ) ) $ ( if true then Bool else Bool )
        d34 = if if true then d29 else true then if false then d9 else true else if false then true else d9
        d37 : if true then if false then Bool else Bool else if false then Bool else Bool
        d37 = if if true then false else d34 then if true then d34 else false else if d12 then d34 else d4
        d38 : if false then if false then Bool else Bool else if false then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( ( Bool -> Bool ) ∋ ( ( λ x40 -> x40 ) ) ) $ ( x39 ) ) ) ) $ ( if true then false else d4 )
        d41 : if false then if true then Bool else Bool else if true then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if x42 then false else false ) ) ) $ ( if d12 then false else true )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if true then x44 else Bool ) ) ) $ ( if false then Bool else Bool )
        d43 = if if d1 then d19 else true then if true then d15 else d12 else if d12 then false else d41
        d45 : if false then if true then Bool else Bool else if false then Bool else Bool
        d45 = if if false then true else false then if false then d15 else true else if true then true else true
        d46 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> x48 ) ) ) $ ( x48 ) ) ) ) $ ( if false then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if d12 then true else false ) ) ) $ ( if d12 then d45 else false )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if false then x51 else x51 ) ) ) $ ( if false then Bool else Bool )
        d50 = if if true then d4 else false then if d19 then d4 else d12 else if d21 then true else d15
        d52 : if true then if true then Bool else Bool else if false then Bool else Bool
        d52 = if if false then d41 else d41 then if false then d37 else true else if false then true else true
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> ( ( Set -> Set ) ∋ ( ( λ x55 -> Bool ) ) ) $ ( x54 ) ) ) ) $ ( if true then Bool else Bool )
        d53 = if if true then d22 else false then if true then d12 else false else if d38 then d50 else d34
        d56 : if true then if true then Bool else Bool else if false then Bool else Bool
        d56 = if if d53 then false else false then if d1 then d37 else true else if true then true else false
        d57 : if true then if true then Bool else Bool else if false then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> ( ( Bool -> Bool ) ∋ ( ( λ x59 -> true ) ) ) $ ( d22 ) ) ) ) $ ( if d43 then false else true )
        d60 : if false then if false then Bool else Bool else if false then Bool else Bool
        d60 = if if true then false else false then if false then d34 else false else if true then true else d25
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> x63 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d61 = if if true then d15 else true then if d9 then d60 else d50 else if true then true else false
        d64 : if false then if true then Bool else Bool else if true then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if d12 then false else false ) ) ) $ ( if true then d9 else true )
        d66 : if false then if true then Bool else Bool else if false then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if true then d57 else d38 ) ) ) $ ( if true then false else true )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if true then x69 else Bool ) ) ) $ ( if false then Bool else Bool )
        d68 = if if d60 then true else d25 then if false then false else d19 else if d34 then false else false
        d70 : if false then if false then Bool else Bool else if false then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> x72 ) ) ) $ ( x71 ) ) ) ) $ ( if true then d41 else d61 )
        d73 : if true then if true then Bool else Bool else if true then Bool else Bool
        d73 = if if d53 then d53 else true then if true then false else d41 else if d34 then false else false
        d74 : if false then if true then Bool else Bool else if true then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if d22 then false else x75 ) ) ) $ ( if false then true else d68 )
        d76 : if true then if false then Bool else Bool else if true then Bool else Bool
        d76 = if if d45 then d60 else false then if false then d53 else false else if d56 then true else false
        d77 : if false then if true then Bool else Bool else if true then Bool else Bool
        d77 = if if true then true else false then if true then true else d38 else if true then false else false
        d78 : if false then if false then Bool else Bool else if true then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( x79 ) ) ) ) $ ( if d56 then true else d57 )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> x84 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> x83 ) ) ) $ ( x82 ) ) ) ) $ ( if d41 then true else true )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> Bool ) ) ) $ ( x89 ) ) ) ) $ ( if false then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> d45 ) ) ) $ ( false ) ) ) ) $ ( if d73 then true else d78 )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> ( ( Set -> Set ) ∋ ( ( λ x93 -> x92 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d91 = if if true then false else true then if d22 then false else false else if d15 then d57 else d74
        d94 : if true then if true then Bool else Bool else if true then Bool else Bool
        d94 = if if false then d37 else false then if d15 then false else true else if true then true else d38
        d95 : if false then if false then Bool else Bool else if true then Bool else Bool
        d95 = if if d9 then d56 else d4 then if true then true else d77 else if d64 then true else true
        d96 : if false then if false then Bool else Bool else if false then Bool else Bool
        d96 = if if d1 then true else false then if d25 then d57 else d73 else if d22 then d41 else false
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> x98 ) ) ) $ ( x98 ) ) ) ) $ ( if true then Bool else Bool )
        d97 = if if true then true else d68 then if true then d78 else d37 else if true then false else false
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if true then Bool else x101 ) ) ) $ ( if true then Bool else Bool )
        d100 = if if true then true else true then if false then d15 else d19 else if d64 then true else d74
        d102 : if true then if true then Bool else Bool else if true then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if d61 then d50 else x103 ) ) ) $ ( if true then false else false )
        d104 : if true then if false then Bool else Bool else if true then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> false ) ) ) $ ( x105 ) ) ) ) $ ( if true then d68 else d66 )
        d107 : if true then if true then Bool else Bool else if true then Bool else Bool
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> x108 ) ) ) $ ( x108 ) ) ) ) $ ( if d12 then d64 else false )
        d110 : if false then if true then Bool else Bool else if true then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> d104 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d66 )
        d113 : if true then if false then Bool else Bool else if false then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> x114 ) ) ) $ ( d43 ) ) ) ) $ ( if false then false else false )
        d116 : if false then if false then Bool else Bool else if true then Bool else Bool
        d116 = if if false then true else d38 then if d15 then true else d46 else if d74 then d104 else false
        d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> x119 ) ) ) $ ( x118 ) ) ) ) $ ( if false then Bool else Bool )
        d117 = if if true then true else false then if d57 then false else false else if true then d38 else true
        d120 : if false then if true then Bool else Bool else if false then Bool else Bool
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( Bool -> Bool ) ∋ ( ( λ x122 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then d41 else false )
        d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d123 = if if d45 then d81 else d61 then if d107 then d15 else d45 else if d19 then true else d107