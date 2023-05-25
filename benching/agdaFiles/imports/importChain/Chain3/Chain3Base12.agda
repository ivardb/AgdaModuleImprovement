module Chain3Base12  where
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
        d5 : if false then if true then Bool else Bool else if false then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> p4 ) ) ) $ ( x6 ) ) ) ) $ ( if false then p3 else false )
        d8 : if true then if true then Bool else Bool else if false then Bool else Bool
        d8 = if if p4 then p4 else true then if p1 then false else d5 else if d5 then d5 else p3
        d9 : if true then if true then Bool else Bool else if false then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> false ) ) ) $ ( p4 ) ) ) ) $ ( if p4 then p1 else true )
        d12 : if true then if true then Bool else Bool else if true then Bool else Bool
        d12 = if if p1 then d9 else true then if false then d5 else d5 else if p4 then p1 else false
        d13 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x17 ) ) ) $ ( x16 ) ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> x15 ) ) ) $ ( false ) ) ) ) $ ( if true then d5 else p1 )
        d18 : if false then if false then Bool else Bool else if false then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if p4 then false else false ) ) ) $ ( if false then p4 else p1 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> x22 ) ) ) $ ( x22 ) ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if p4 then d12 else d18 ) ) ) $ ( if false then false else d18 )
        d24 : if true then if false then Bool else Bool else if false then Bool else Bool
        d24 = if if p3 then d20 else d20 then if p1 then p3 else false else if p4 then d9 else p4
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d25 = if if true then true else p4 then if false then d5 else p3 else if p1 then p1 else true
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> x28 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d27 = if if p4 then p1 else d25 then if d8 then d12 else p1 else if false then p3 else p3
        d30 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> Bool ) ) ) $ ( x31 ) ) ) ) $ ( if false then Bool else Bool )
        d30 = if if p4 then d13 else d18 then if d20 then true else p4 else if false then p1 else false
        d33 : if false then if true then Bool else Bool else if true then Bool else Bool
        d33 = if if d30 then true else false then if false then d9 else false else if p4 then false else d25
        d34 : if true then if false then Bool else Bool else if true then Bool else Bool
        d34 = if if d30 then d12 else p4 then if p1 then false else p1 else if d13 then true else d25
        d35 : if false then if false then Bool else Bool else if false then Bool else Bool
        d35 = if if p1 then true else d20 then if d12 then p3 else p3 else if d9 then false else d30
        d36 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> x38 ) ) ) $ ( x38 ) ) ) ) $ ( if true then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if true then false else d30 ) ) ) $ ( if d25 then d35 else p3 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if false then x43 else x43 ) ) ) $ ( if false then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> p3 ) ) ) $ ( d33 ) ) ) ) $ ( if p4 then false else p3 )
        d44 : if true then if true then Bool else Bool else if false then Bool else Bool
        d44 = if if true then p3 else d8 then if p4 then true else p1 else if p1 then p3 else d36
        d45 : if true then if true then Bool else Bool else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if true then d35 else d40 ) ) ) $ ( if true then true else d13 )
        d47 : if true then if true then Bool else Bool else if true then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> if d45 then d30 else true ) ) ) $ ( if d12 then p4 else d20 )
        d49 : if true then if true then Bool else Bool else if false then Bool else Bool
        d49 = if if p4 then p3 else d35 then if true then d47 else false else if p1 then true else true
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if true then Bool else x51 ) ) ) $ ( if true then Bool else Bool )
        d50 = if if false then true else p1 then if p1 then true else d5 else if p3 then false else true
        d52 : if false then if true then Bool else Bool else if false then Bool else Bool
        d52 = if if p3 then false else p4 then if d20 then p3 else p3 else if true then d12 else p4
        d53 : if false then if false then Bool else Bool else if true then Bool else Bool
        d53 = if if false then d50 else true then if false then p4 else p3 else if d27 then d8 else true
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if true then Bool else x55 ) ) ) $ ( if true then Bool else Bool )
        d54 = if if d5 then true else p4 then if true then d12 else d20 else if true then d50 else false
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if true then Bool else x57 ) ) ) $ ( if false then Bool else Bool )
        d56 = if if p4 then d8 else d9 then if p1 then d5 else d27 else if true then p4 else p3
        d58 : if false then if true then Bool else Bool else if true then Bool else Bool
        d58 = if if d20 then true else false then if d30 then false else p1 else if d34 then false else false
        d59 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> x62 ) ) ) $ ( x61 ) ) ) ) $ ( if false then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if true then true else p4 ) ) ) $ ( if false then true else false )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> x66 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> p4 ) ) ) $ ( d18 ) ) ) ) $ ( if false then p3 else p4 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if false then Bool else x71 ) ) ) $ ( if false then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> true ) ) ) $ ( p3 ) ) ) ) $ ( if d20 then d5 else d36 )
        d72 : if true then if true then Bool else Bool else if false then Bool else Bool
        d72 = if if false then false else p3 then if true then d8 else d53 else if d54 then p3 else p4
        d73 : if true then if false then Bool else Bool else if false then Bool else Bool
        d73 = if if p4 then d27 else p3 then if p3 then false else true else if d8 then true else p4
        d74 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if true then x77 else x77 ) ) ) $ ( if false then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> true ) ) ) $ ( true ) ) ) ) $ ( if d18 then false else p1 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> x81 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> p4 ) ) ) $ ( true ) ) ) ) $ ( if p1 then true else p4 )
        d83 : if true then if true then Bool else Bool else if true then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if d59 then d68 else d59 ) ) ) $ ( if p3 then false else d13 )
        d85 : if true then if false then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if false then p3 else d34 ) ) ) $ ( if d45 then d68 else d34 )
        d87 : if true then if false then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> x89 ) ) ) $ ( d33 ) ) ) ) $ ( if d83 then p1 else p4 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if false then x92 else x92 ) ) ) $ ( if true then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if x91 then true else d50 ) ) ) $ ( if p1 then false else true )
        d93 : if true then if false then Bool else Bool else if true then Bool else Bool
        d93 = if if d56 then p3 else d18 then if false then p4 else false else if false then d53 else d9
        d94 : if false then if false then Bool else Bool else if true then Bool else Bool
        d94 = if if p3 then d52 else p4 then if false then p1 else d9 else if p4 then p1 else p3
        d95 : ( ( Set -> Set ) ∋ ( ( λ x96 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d95 = if if false then true else p4 then if true then true else true else if p4 then false else false
        d97 : if false then if true then Bool else Bool else if true then Bool else Bool
        d97 = if if false then p3 else false then if d24 then false else true else if p3 then d83 else d18
        d98 : if true then if false then Bool else Bool else if true then Bool else Bool
        d98 = if if true then p3 else d40 then if d35 then true else d59 else if false then d12 else false
        d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if true then x100 else x100 ) ) ) $ ( if true then Bool else Bool )
        d99 = if if p4 then d33 else d83 then if d58 then d93 else d35 else if p3 then d44 else false
        d101 : if false then if false then Bool else Bool else if true then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> if p1 then p3 else d63 ) ) ) $ ( if p3 then d5 else p4 )
        d103 : if true then if true then Bool else Bool else if true then Bool else Bool
        d103 = if if p4 then d101 else d73 then if d78 then p1 else d95 else if false then d83 else p4
        d104 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> p3 ) ) ) $ ( true ) ) ) ) $ ( if p1 then d5 else p4 )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x111 -> if false then x111 else Bool ) ) ) $ ( if false then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if p3 then d49 else d34 ) ) ) $ ( if true then p1 else false )
        d112 : if false then if false then Bool else Bool else if true then Bool else Bool
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> if p4 then d78 else false ) ) ) $ ( if false then p4 else false )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d114 = if if p1 then false else p4 then if d54 then p3 else false else if d8 then p3 else p1
        d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> x118 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d116 = if if p1 then d20 else true then if true then d13 else p4 else if true then false else false
    module M'  = M ( false ) 