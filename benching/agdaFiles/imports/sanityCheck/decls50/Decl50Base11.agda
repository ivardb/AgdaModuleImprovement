module Decl50Base11  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> ( ( Set -> Set ) ∋ ( ( λ x3 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1 = if if true then true else true then if false then true else false else if true then true else false
        d4 : if false then if false then Bool else Bool else if true then Bool else Bool
        d4 = if if false then d1 else false then if true then d1 else true else if d1 then d1 else true
        d5 : if true then if true then Bool else Bool else if false then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if d4 then d4 else x6 ) ) ) $ ( if true then true else true )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if false then Bool else x8 ) ) ) $ ( if true then Bool else Bool )
        d7 = if if false then false else d4 then if d1 then true else true else if d5 then d4 else d5
        d9 : if true then if false then Bool else Bool else if true then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> false ) ) ) $ ( x10 ) ) ) ) $ ( if false then false else d5 )
        d12 : if false then if false then Bool else Bool else if true then Bool else Bool
        d12 = if if d5 then d9 else true then if d9 then d5 else d4 else if true then d7 else false
        d13 : if true then if true then Bool else Bool else if true then Bool else Bool
        d13 = if if true then false else false then if d4 then true else false else if true then d5 else true
        d14 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> x16 ) ) ) $ ( false ) ) ) ) $ ( if true then d1 else d7 )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then Bool else x20 ) ) ) $ ( if false then Bool else Bool )
        d19 = if if true then false else d12 then if true then false else d12 else if true then false else false
        d21 : if true then if false then Bool else Bool else if true then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> d4 ) ) ) $ ( x22 ) ) ) ) $ ( if true then true else false )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then Bool else x25 ) ) ) $ ( if true then Bool else Bool )
        d24 = if if d21 then d19 else true then if true then d19 else d14 else if d13 then true else false
        d26 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if false then Bool else x28 ) ) ) $ ( if false then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> if d14 then true else true ) ) ) $ ( if false then d24 else true )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if false then Bool else x31 ) ) ) $ ( if false then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if true then true else d21 ) ) ) $ ( if true then d24 else true )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if true then Bool else x33 ) ) ) $ ( if true then Bool else Bool )
        d32 = if if d26 then false else true then if d26 then d29 else false else if d12 then true else d5
        d34 : if true then if false then Bool else Bool else if false then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if d9 then x35 else false ) ) ) $ ( if false then false else false )
        d36 : if true then if false then Bool else Bool else if true then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if x37 then x37 else true ) ) ) $ ( if d19 then true else d12 )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if x39 then x39 else false ) ) ) $ ( if true then d26 else true )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if true then x44 else Bool ) ) ) $ ( if false then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if d29 then true else x43 ) ) ) $ ( if true then true else d4 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d45 = if if true then true else d29 then if d34 then false else d32 else if true then false else d14
        d47 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x51 -> x50 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> d45 ) ) ) $ ( d7 ) ) ) ) $ ( if false then d42 else true )
        d52 : if false then if false then Bool else Bool else if true then Bool else Bool
        d52 = if if false then d19 else d45 then if false then false else false else if d45 then false else true
        d53 : if false then if false then Bool else Bool else if false then Bool else Bool
        d53 = if if d4 then false else d29 then if true then true else true else if false then d32 else d29
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d54 = if if d1 then true else d12 then if d24 then d12 else d47 else if d52 then true else true
        d57 : if true then if false then Bool else Bool else if true then Bool else Bool
        d57 = if if true then d47 else d9 then if d21 then d4 else false else if d42 then true else false
        d58 : if true then if true then Bool else Bool else if true then Bool else Bool
        d58 = if if d53 then false else false then if false then false else false else if true then d14 else d14
        d59 : if true then if false then Bool else Bool else if true then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if d38 then true else d32 ) ) ) $ ( if false then d34 else false )
        d61 : if true then if true then Bool else Bool else if true then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> x62 ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if false then x67 else Bool ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> x66 ) ) ) $ ( x65 ) ) ) ) $ ( if false then true else false )
        d68 : if false then if false then Bool else Bool else if true then Bool else Bool
        d68 = if if false then d5 else true then if true then d21 else d7 else if d1 then d13 else false
        d69 : if false then if true then Bool else Bool else if false then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x71 -> d58 ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if true then x75 else Bool ) ) ) $ ( if false then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> ( ( Bool -> Bool ) ∋ ( ( λ x74 -> d68 ) ) ) $ ( true ) ) ) ) $ ( if d53 then d29 else true )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if false then Bool else x78 ) ) ) $ ( if false then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if false then true else x77 ) ) ) $ ( if d4 then d36 else true )
        d79 : if false then if false then Bool else Bool else if false then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> x80 ) ) ) $ ( x80 ) ) ) ) $ ( if d32 then true else false )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if false then x84 else Bool ) ) ) $ ( if true then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if d52 then true else x83 ) ) ) $ ( if d42 then d52 else d79 )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> false ) ) ) $ ( false ) ) ) ) $ ( if d69 then true else false )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> x94 ) ) ) $ ( x93 ) ) ) ) $ ( if false then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> x92 ) ) ) $ ( false ) ) ) ) $ ( if d21 then true else d85 )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if true then x98 else Bool ) ) ) $ ( if false then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> false ) ) ) $ ( x96 ) ) ) ) $ ( if true then false else d64 )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if false then Bool else x101 ) ) ) $ ( if false then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if d82 then d61 else x100 ) ) ) $ ( if false then d9 else d61 )
        d102 : if false then if false then Bool else Bool else if false then Bool else Bool
        d102 = if if true then d76 else false then if true then false else d85 else if d76 then true else false
        d103 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if false then x105 else Bool ) ) ) $ ( if false then Bool else Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if d47 then d90 else x104 ) ) ) $ ( if d68 then d82 else d9 )
        d106 : if true then if false then Bool else Bool else if true then Bool else Bool
        d106 = if if d61 then d99 else false then if false then d9 else false else if false then true else true
        d107 : if false then if false then Bool else Bool else if false then Bool else Bool
        d107 = if if d106 then true else false then if false then d54 else d34 else if true then d103 else true
        d108 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> x110 ) ) ) $ ( x110 ) ) ) ) $ ( if false then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> if d102 then d79 else d5 ) ) ) $ ( if true then false else false )
        d112 : if true then if false then Bool else Bool else if true then Bool else Bool
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> true ) ) ) $ ( x113 ) ) ) ) $ ( if true then d99 else true )
        d115 : if true then if false then Bool else Bool else if false then Bool else Bool
        d115 = if if d54 then d76 else true then if false then true else d5 else if d103 then false else d36
        d116 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> x118 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> if false then x117 else d108 ) ) ) $ ( if d108 then true else true )
        d120 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if d76 then d58 else false ) ) ) $ ( if false then d24 else d52 )
        d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> if false then Bool else x124 ) ) ) $ ( if false then Bool else Bool )
        d123 = if if d38 then true else d76 then if true then d29 else true else if d7 then d68 else d52
        d125 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> if d108 then d95 else d9 ) ) ) $ ( if true then d79 else d58 )
        d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then Bool else x130 ) ) ) $ ( if true then Bool else Bool )
        d129 = if if d72 then false else d4 then if false then d9 else false else if d90 then true else d29