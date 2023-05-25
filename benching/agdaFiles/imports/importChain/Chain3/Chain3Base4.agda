module Chain3Base4  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then x2 else x2 ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ( p5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if false then Bool else Bool ) ) ) $ ( Bool ) )  where
        d7 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if true then p1 else p1 ) ) ) $ ( if p5 then p5 else p3 )
        d11 : if true then if false then Bool else Bool else if false then Bool else Bool
        d11 = if if false then p5 else p5 then if d7 then p3 else true else if true then false else false
        d12 : if false then if false then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> d11 ) ) ) $ ( false ) ) ) ) $ ( if p1 then p3 else p3 )
        d15 : if true then if false then Bool else Bool else if true then Bool else Bool
        d15 = if if p3 then d7 else p3 then if false then p5 else d12 else if d7 then p1 else true
        d16 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if false then x19 else x19 ) ) ) $ ( if false then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> d11 ) ) ) $ ( p1 ) ) ) ) $ ( if false then p1 else p5 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> d12 ) ) ) $ ( p1 ) ) ) ) $ ( if false then false else true )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if false then x25 else Bool ) ) ) $ ( if false then Bool else Bool )
        d24 = if if d7 then d12 else p3 then if p3 then false else true else if true then true else d7
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> Bool ) ) ) $ ( x27 ) ) ) ) $ ( if false then Bool else Bool )
        d26 = if if p3 then d7 else p3 then if true then p1 else false else if d24 then p3 else false
        d29 : if false then if false then Bool else Bool else if true then Bool else Bool
        d29 = if if p3 then p5 else p3 then if d24 then p3 else p1 else if p3 then d26 else d11
        d30 : if true then if false then Bool else Bool else if false then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> p1 ) ) ) $ ( d20 ) ) ) ) $ ( if d15 then false else p1 )
        d33 : if true then if false then Bool else Bool else if true then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if false then d30 else p3 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> Bool ) ) ) $ ( x38 ) ) ) ) $ ( if false then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if d11 then p1 else d16 ) ) ) $ ( if true then false else p3 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> true ) ) ) $ ( p3 ) ) ) ) $ ( if d7 then true else p5 )
        d44 : if false then if false then Bool else Bool else if false then Bool else Bool
        d44 = if if p1 then d16 else true then if p5 then d24 else d16 else if d24 then true else true
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if true then x46 else Bool ) ) ) $ ( if false then Bool else Bool )
        d45 = if if p5 then p1 else d36 then if false then d7 else false else if true then p5 else d33
        d47 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> x50 ) ) ) $ ( x49 ) ) ) ) $ ( if false then Bool else Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> if p5 then d11 else p3 ) ) ) $ ( if d44 then true else true )
        d51 : if false then if false then Bool else Bool else if true then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if p3 then d45 else d44 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if false then Bool else x55 ) ) ) $ ( if false then Bool else Bool )
        d54 = if if d44 then true else d20 then if d16 then d51 else d7 else if false then p3 else p3
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> Bool ) ) ) $ ( x57 ) ) ) ) $ ( if true then Bool else Bool )
        d56 = if if d44 then true else p5 then if p5 then p3 else p3 else if d15 then false else false
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d59 = if if false then p3 else d16 then if d45 then true else p3 else if true then p3 else d16
        d61 : if true then if true then Bool else Bool else if true then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then d12 else true )
        d64 : if true then if true then Bool else Bool else if false then Bool else Bool
        d64 = if if false then false else p3 then if true then p5 else false else if p3 then p5 else p5
        d65 : if true then if false then Bool else Bool else if false then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> d40 ) ) ) $ ( d40 ) ) ) ) $ ( if d11 then true else d12 )
        d68 : if true then if true then Bool else Bool else if true then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if p3 then x69 else true ) ) ) $ ( if d44 then true else d47 )
        d70 : if false then if true then Bool else Bool else if false then Bool else Bool
        d70 = if if p3 then true else p1 then if d64 then d47 else d65 else if d36 then d15 else d47
        d71 : if true then if false then Bool else Bool else if false then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if d68 then p3 else p1 ) ) ) $ ( if p5 then p3 else true )
        d73 : if false then if true then Bool else Bool else if true then Bool else Bool
        d73 = if if p1 then p5 else true then if d33 then false else false else if p1 then d59 else true
        d74 : if false then if false then Bool else Bool else if true then Bool else Bool
        d74 = if if p1 then false else true then if d59 then true else p5 else if d20 then true else false
        d75 : if true then if true then Bool else Bool else if true then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> x76 ) ) ) $ ( p5 ) ) ) ) $ ( if p1 then p5 else p3 )
        d78 : if true then if true then Bool else Bool else if false then Bool else Bool
        d78 = if if p1 then p5 else true then if false then p5 else p3 else if false then false else false
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if true then Bool else x82 ) ) ) $ ( if true then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> d71 ) ) ) $ ( d78 ) ) ) ) $ ( if d12 then p5 else false )
        d83 : if true then if false then Bool else Bool else if false then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if true then p5 else p3 ) ) ) $ ( if p5 then p1 else d7 )
        d85 : if false then if true then Bool else Bool else if true then Bool else Bool
        d85 = if if p1 then p1 else false then if true then p5 else d12 else if p5 then d73 else d74
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if true then Bool else x87 ) ) ) $ ( if true then Bool else Bool )
        d86 = if if p1 then p5 else d51 then if true then d85 else d56 else if p3 then d11 else p1
        d88 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d88 = if if d30 then d11 else d33 then if p3 then p5 else d44 else if p5 then p5 else true
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> Bool ) ) ) $ ( x91 ) ) ) ) $ ( if true then Bool else Bool )
        d90 = if if d56 then true else d65 then if p1 then p5 else true else if false then d65 else p3
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if true then x94 else x94 ) ) ) $ ( if true then Bool else Bool )
        d93 = if if p3 then d68 else p5 then if p1 then d36 else d12 else if true then p3 else p3
        d95 : if false then if true then Bool else Bool else if true then Bool else Bool
        d95 = if if p1 then d24 else true then if d26 then p3 else false else if false then p3 else d12
        d96 : if true then if true then Bool else Bool else if false then Bool else Bool
        d96 = if if d11 then p3 else p3 then if d90 then p5 else p3 else if false then d64 else d7
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d97 = if if d45 then true else false then if d15 then true else p1 else if true then d36 else d12
        d99 : if false then if false then Bool else Bool else if false then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if d64 then d56 else false ) ) ) $ ( if false then d16 else p5 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if false then Bool else x104 ) ) ) $ ( if false then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> ( ( Bool -> Bool ) ∋ ( ( λ x103 -> p5 ) ) ) $ ( d54 ) ) ) ) $ ( if p5 then d29 else p3 )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if true then Bool else x106 ) ) ) $ ( if false then Bool else Bool )
        d105 = if if p5 then false else d86 then if d45 then true else false else if p3 then d59 else d45
        d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if false then x108 else Bool ) ) ) $ ( if false then Bool else Bool )
        d107 = if if d95 then false else p3 then if false then p1 else true else if p1 then false else d74
        d109 : if false then if true then Bool else Bool else if true then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if false then true else d56 ) ) ) $ ( if d70 then p5 else p5 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if false then x112 else x112 ) ) ) $ ( if true then Bool else Bool )
        d111 = if if true then d109 else false then if false then d99 else d59 else if p5 then d109 else p3
        d113 : if false then if true then Bool else Bool else if false then Bool else Bool
        d113 = if if p1 then false else true then if p5 then true else p1 else if p5 then d101 else false
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> x115 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d114 = if if p1 then false else p3 then if d86 then true else d88 else if d11 then p1 else p5
        d117 : if true then if false then Bool else Bool else if true then Bool else Bool
        d117 = if if false then false else p3 then if d30 then d20 else true else if d59 then p1 else d59
        d118 : if true then if false then Bool else Bool else if false then Bool else Bool
        d118 = if if false then false else d93 then if true then p5 else true else if d70 then p1 else true
    module M'  = M ( false ) 