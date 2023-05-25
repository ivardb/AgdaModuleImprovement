module Decl50Base6  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> true ) ) ) $ ( x2 ) ) ) ) $ ( if true then true else true )
        d6 : if true then if false then Bool else Bool else if true then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> d1 ) ) ) $ ( true ) ) ) ) $ ( if d1 then d1 else d1 )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> Bool ) ) ) $ ( x12 ) ) ) ) $ ( if false then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> x10 ) ) ) $ ( false ) ) ) ) $ ( if true then d6 else d1 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x17 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if d9 then d6 else true ) ) ) $ ( if d6 then false else d1 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x21 -> ( ( Set -> Set ) ∋ ( ( λ x22 -> Bool ) ) ) $ ( x21 ) ) ) ) $ ( if true then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> false ) ) ) $ ( false ) ) ) ) $ ( if d9 then false else d1 )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if true then Bool else x24 ) ) ) $ ( if true then Bool else Bool )
        d23 = if if true then false else d6 then if d9 then true else d14 else if false then d18 else d9
        d25 : if false then if true then Bool else Bool else if false then Bool else Bool
        d25 = if if true then true else false then if false then d6 else false else if false then d1 else true
        d26 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> x29 ) ) ) $ ( x28 ) ) ) ) $ ( if true then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> if false then x27 else d23 ) ) ) $ ( if d23 then d18 else d1 )
        d30 : if false then if false then Bool else Bool else if true then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> d9 ) ) ) $ ( d6 ) ) ) ) $ ( if d26 then false else false )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if false then x34 else Bool ) ) ) $ ( if true then Bool else Bool )
        d33 = if if d9 then false else d26 then if d25 then d18 else true else if d9 then false else d9
        d35 : if true then if false then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> d18 ) ) ) $ ( d6 ) ) ) ) $ ( if false then true else d26 )
        d38 : if true then if true then Bool else Bool else if false then Bool else Bool
        d38 = if if d33 then false else d33 then if d26 then true else d14 else if d26 then true else d14
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> x40 ) ) ) $ ( x40 ) ) ) ) $ ( if false then Bool else Bool )
        d39 = if if d25 then d1 else d33 then if d6 then d33 else d23 else if false then false else d35
        d42 : ( ( Set -> Set ) ∋ ( ( λ x45 -> ( ( Set -> Set ) ∋ ( ( λ x46 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> false ) ) ) $ ( d9 ) ) ) ) $ ( if d1 then d23 else true )
        d47 : if false then if false then Bool else Bool else if true then Bool else Bool
        d47 = if if false then false else d18 then if false then false else d14 else if true then d39 else d42
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if false then x49 else Bool ) ) ) $ ( if true then Bool else Bool )
        d48 = if if d33 then false else d6 then if d1 then d39 else d39 else if false then true else false
        d50 : if true then if true then Bool else Bool else if true then Bool else Bool
        d50 = if if d6 then d23 else d26 then if d47 then true else true else if d23 then d33 else true
        d51 : if true then if true then Bool else Bool else if false then Bool else Bool
        d51 = if if d23 then d33 else false then if d48 then false else true else if true then d48 else d42
        d52 : if true then if false then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if d50 then d1 else d48 ) ) ) $ ( if d30 then d1 else true )
        d54 : if false then if false then Bool else Bool else if false then Bool else Bool
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> if d30 then d18 else x55 ) ) ) $ ( if d48 then false else d14 )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if x57 then x57 else d6 ) ) ) $ ( if true then true else false )
        d60 : if false then if true then Bool else Bool else if true then Bool else Bool
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if x61 then x61 else d30 ) ) ) $ ( if false then false else true )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if d23 then false else d18 ) ) ) $ ( if false then false else true )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> Bool ) ) ) $ ( x67 ) ) ) ) $ ( if true then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if d39 then true else false ) ) ) $ ( if d50 then d54 else d50 )
        d69 : if false then if false then Bool else Bool else if true then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if x70 then d51 else true ) ) ) $ ( if true then false else d9 )
        d71 : if true then if false then Bool else Bool else if false then Bool else Bool
        d71 = if if true then d14 else true then if d33 then d18 else true else if d52 then d25 else true
        d72 : if true then if false then Bool else Bool else if true then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if x73 then true else x73 ) ) ) $ ( if d51 then false else d18 )
        d74 : if true then if true then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> false ) ) ) $ ( d26 ) ) ) ) $ ( if true then d18 else true )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d77 = if if false then false else false then if false then d60 else d23 else if false then false else d33
        d79 : if true then if false then Bool else Bool else if true then Bool else Bool
        d79 = if if true then d9 else true then if true then d47 else true else if d23 then d52 else true
        d80 : if false then if false then Bool else Bool else if true then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if false then true else x81 ) ) ) $ ( if d79 then false else d6 )
        d82 : if false then if true then Bool else Bool else if false then Bool else Bool
        d82 = if if true then d62 else d30 then if true then true else true else if true then false else true
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if true then x84 else Bool ) ) ) $ ( if false then Bool else Bool )
        d83 = if if d14 then true else false then if d18 then d26 else d9 else if false then d52 else d50
        d85 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if false then Bool else x88 ) ) ) $ ( if true then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> d62 ) ) ) $ ( x86 ) ) ) ) $ ( if false then true else d1 )
        d89 : if true then if false then Bool else Bool else if true then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if x90 then true else true ) ) ) $ ( if d47 then d50 else d80 )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> ( ( Set -> Set ) ∋ ( ( λ x93 -> x92 ) ) ) $ ( x92 ) ) ) ) $ ( if false then Bool else Bool )
        d91 = if if d80 then false else d30 then if true then d35 else true else if d69 then false else true
        d94 : if true then if false then Bool else Bool else if false then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if true then x95 else d23 ) ) ) $ ( if d69 then false else false )
        d96 : if false then if true then Bool else Bool else if true then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if d71 then true else x97 ) ) ) $ ( if d6 then d54 else false )
        d98 : if false then if true then Bool else Bool else if false then Bool else Bool
        d98 = if if d85 then d65 else true then if d39 then d42 else d26 else if d96 then d94 else false
        d99 : if false then if true then Bool else Bool else if false then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if x100 then false else x100 ) ) ) $ ( if d62 then d91 else d48 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if true then Bool else x102 ) ) ) $ ( if false then Bool else Bool )
        d101 = if if false then d42 else false then if d99 then false else false else if true then true else d23
        d103 : if true then if false then Bool else Bool else if true then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> ( ( Bool -> Bool ) ∋ ( ( λ x105 -> true ) ) ) $ ( x104 ) ) ) ) $ ( if true then d50 else false )
        d106 : if false then if true then Bool else Bool else if false then Bool else Bool
        d106 = if if d91 then true else d23 then if false then d26 else d33 else if d79 then d82 else d62
        d107 : if false then if true then Bool else Bool else if false then Bool else Bool
        d107 = if if d52 then d98 else d89 then if false then d9 else false else if d83 then true else d1
        d108 : if false then if true then Bool else Bool else if true then Bool else Bool
        d108 = if if true then d101 else false then if true then d23 else false else if d77 then false else d62
        d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d109 = if if true then d42 else true then if d35 then d30 else true else if false then true else false
        d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d111 = if if true then true else d52 then if d54 then d82 else false else if d91 then false else false
        d113 : if true then if false then Bool else Bool else if false then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> x114 ) ) ) $ ( d72 ) ) ) ) $ ( if d89 then d80 else true )
        d116 : if false then if true then Bool else Bool else if true then Bool else Bool
        d116 = if if d74 then false else true then if d25 then d80 else d107 else if false then d79 else true
        d117 : if false then if true then Bool else Bool else if true then Bool else Bool
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( Bool -> Bool ) ∋ ( ( λ x119 -> x119 ) ) ) $ ( true ) ) ) ) $ ( if d33 then d79 else true )