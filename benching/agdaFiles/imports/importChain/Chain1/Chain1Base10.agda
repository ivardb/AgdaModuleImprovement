module Chain1Base10  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then Bool else Bool ) ) ) $ ( Bool ) )  where
        d3 : if true then if false then Bool else Bool else if false then Bool else Bool
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> if false then x4 else x4 ) ) ) $ ( if p1 then p1 else false )
        d5 : if false then if true then Bool else Bool else if true then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> x6 ) ) ) $ ( p1 ) ) ) ) $ ( if true then p1 else p1 )
        d8 : if true then if false then Bool else Bool else if true then Bool else Bool
        d8 = if if p1 then p1 else d3 then if d5 then true else p1 else if d3 then d5 else p1
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d9 = if if p1 then d8 else d5 then if true then d5 else d3 else if d3 then true else p1
        d12 : if true then if true then Bool else Bool else if true then Bool else Bool
        d12 = if if d3 then true else false then if d8 then true else d5 else if d9 then p1 else p1
        d13 : ( ( Set -> Set ) ∋ ( ( λ x16 -> if true then Bool else x16 ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> x14 ) ) ) $ ( true ) ) ) ) $ ( if d5 then false else d12 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> Bool ) ) ) $ ( x20 ) ) ) ) $ ( if false then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then p1 else d5 )
        d22 : if true then if true then Bool else Bool else if true then Bool else Bool
        d22 = if if true then true else d8 then if p1 then d12 else p1 else if false then p1 else d12
        d23 : if true then if true then Bool else Bool else if true then Bool else Bool
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> ( ( Bool -> Bool ) ∋ ( ( λ x25 -> p1 ) ) ) $ ( x24 ) ) ) ) $ ( if false then false else d17 )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if false then x29 else Bool ) ) ) $ ( if false then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> x28 ) ) ) $ ( d13 ) ) ) ) $ ( if false then p1 else p1 )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> x33 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if true then p1 else d12 )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x36 -> if true then Bool else x36 ) ) ) $ ( if false then Bool else Bool )
        d35 = if if true then false else p1 then if false then true else d23 else if false then true else p1
        d37 : if true then if false then Bool else Bool else if true then Bool else Bool
        d37 = if if d13 then d23 else p1 then if false then d13 else p1 else if d9 then false else p1
        d38 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> x40 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if true then false else true ) ) ) $ ( if d3 then true else p1 )
        d42 : if true then if true then Bool else Bool else if false then Bool else Bool
        d42 = if if true then p1 else d5 then if d8 then p1 else false else if d12 then d38 else false
        d43 : if false then if true then Bool else Bool else if false then Bool else Bool
        d43 = if if d38 then true else true then if p1 then d12 else true else if d38 then p1 else d8
        d44 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> x46 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if true then d8 else d5 ) ) ) $ ( if p1 then true else p1 )
        d48 : if false then if false then Bool else Bool else if false then Bool else Bool
        d48 = if if p1 then d44 else false then if d17 then p1 else true else if true then p1 else d12
        d49 : if false then if false then Bool else Bool else if false then Bool else Bool
        d49 = if if false then p1 else d9 then if p1 then false else d9 else if false then d12 else false
        d50 : if false then if false then Bool else Bool else if false then Bool else Bool
        d50 = if if p1 then p1 else p1 then if p1 then false else d38 else if d8 then d35 else p1
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> if true then x52 else Bool ) ) ) $ ( if false then Bool else Bool )
        d51 = if if true then d8 else p1 then if p1 then p1 else true else if d30 then true else true
        d53 : if false then if false then Bool else Bool else if false then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> p1 ) ) ) $ ( x54 ) ) ) ) $ ( if true then d42 else true )
        d56 : if true then if false then Bool else Bool else if true then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> d37 ) ) ) $ ( true ) ) ) ) $ ( if p1 then d48 else false )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x61 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d59 = if if p1 then p1 else p1 then if p1 then p1 else d22 else if p1 then true else d5
        d62 : ( ( Set -> Set ) ∋ ( ( λ x65 -> if false then x65 else x65 ) ) ) $ ( if false then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then d23 else d50 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if true then x68 else x68 ) ) ) $ ( if false then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if d38 then x67 else false ) ) ) $ ( if true then d5 else false )
        d69 : if false then if true then Bool else Bool else if false then Bool else Bool
        d69 = if if d3 then d22 else d22 then if p1 then d26 else true else if p1 then p1 else d51
        d70 : if false then if false then Bool else Bool else if true then Bool else Bool
        d70 = if if d69 then true else d59 then if d44 then p1 else false else if false then d62 else p1
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> ( ( Set -> Set ) ∋ ( ( λ x73 -> x73 ) ) ) $ ( x72 ) ) ) ) $ ( if true then Bool else Bool )
        d71 = if if p1 then false else p1 then if p1 then d22 else p1 else if false then p1 else p1
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if true then x75 else Bool ) ) ) $ ( if false then Bool else Bool )
        d74 = if if true then p1 else false then if d53 then true else d70 else if d9 then d17 else p1
        d76 : if false then if false then Bool else Bool else if true then Bool else Bool
        d76 = if if true then true else false then if p1 then p1 else d22 else if false then p1 else p1
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> ( ( Set -> Set ) ∋ ( ( λ x79 -> Bool ) ) ) $ ( x78 ) ) ) ) $ ( if true then Bool else Bool )
        d77 = if if true then p1 else false then if d74 then false else p1 else if p1 then p1 else d22
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if true then x81 else Bool ) ) ) $ ( if false then Bool else Bool )
        d80 = if if d77 then p1 else p1 then if p1 then p1 else p1 else if d70 then d76 else d23
        d82 : if true then if true then Bool else Bool else if false then Bool else Bool
        d82 = if if p1 then d9 else true then if d8 then false else d23 else if true then false else p1
        d83 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> Bool ) ) ) $ ( x85 ) ) ) ) $ ( if true then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if d62 then true else x84 ) ) ) $ ( if d77 then d53 else p1 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if false then x88 else Bool ) ) ) $ ( if true then Bool else Bool )
        d87 = if if true then false else p1 then if p1 then d70 else d37 else if d37 then p1 else false
        d89 : if true then if true then Bool else Bool else if false then Bool else Bool
        d89 = if if d42 then false else p1 then if p1 then p1 else p1 else if d13 then p1 else d53
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> x91 ) ) ) $ ( x91 ) ) ) ) $ ( if true then Bool else Bool )
        d90 = if if p1 then p1 else d8 then if p1 then false else false else if d26 then p1 else false
        d93 : if false then if false then Bool else Bool else if true then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> true ) ) ) $ ( d12 ) ) ) ) $ ( if false then true else true )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d96 = if if true then d93 else d9 then if p1 then true else p1 else if p1 then d51 else false
        d98 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if false then false else x99 ) ) ) $ ( if false then false else true )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if p1 then d30 else false ) ) ) $ ( if p1 then p1 else false )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if false then x107 else Bool ) ) ) $ ( if true then Bool else Bool )
        d106 = if if d23 then d83 else p1 then if p1 then p1 else p1 else if false then d66 else true
        d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if false then x109 else x109 ) ) ) $ ( if true then Bool else Bool )
        d108 = if if false then true else p1 then if true then false else d38 else if false then d70 else false
        d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> Bool ) ) ) $ ( x111 ) ) ) ) $ ( if false then Bool else Bool )
        d110 = if if false then d17 else true then if false then d49 else d8 else if false then true else p1
        d113 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if false then x115 else x115 ) ) ) $ ( if false then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if d76 then d8 else x114 ) ) ) $ ( if true then p1 else d53 )
        d116 : if false then if true then Bool else Bool else if false then Bool else Bool
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> ( ( Bool -> Bool ) ∋ ( ( λ x118 -> d38 ) ) ) $ ( d82 ) ) ) ) $ ( if true then p1 else d5 )
        d119 : if false then if true then Bool else Bool else if true then Bool else Bool
        d119 = if if p1 then true else false then if d102 then p1 else d38 else if false then false else d89
        d120 : if true then if true then Bool else Bool else if false then Bool else Bool
        d120 = if if p1 then d3 else d43 then if d17 then p1 else true else if false then d89 else true
        d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if false then x122 else x122 ) ) ) $ ( if true then Bool else Bool )
        d121 = if if d83 then d93 else d69 then if d23 then p1 else p1 else if p1 then p1 else p1
    module M'  = M ( false ) 