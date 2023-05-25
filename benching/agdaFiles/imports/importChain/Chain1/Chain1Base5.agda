module Chain1Base5  where
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

    module M ( p1 : if false then Bool else Bool )  where
        d2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> ( ( Set -> Set ) ∋ ( ( λ x4 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d2 = if if p1 then p1 else p1 then if p1 then false else p1 else if p1 then false else false
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d5 = if if true then false else d2 then if true then p1 else d2 else if false then false else p1
        d8 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if false then x11 else x11 ) ) ) $ ( if false then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> x9 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then false else d2 )
        d12 : if false then if true then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if x13 then false else true ) ) ) $ ( if d8 then p1 else false )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> Bool ) ) ) $ ( x16 ) ) ) ) $ ( if false then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if true then x15 else p1 ) ) ) $ ( if d5 then d2 else true )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d18 = if if d5 then true else true then if true then d2 else p1 else if p1 then p1 else true
        d20 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if false then x22 else x22 ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if false then false else false ) ) ) $ ( if d8 then false else d5 )
        d23 : if true then if true then Bool else Bool else if true then Bool else Bool
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> ( ( Bool -> Bool ) ∋ ( ( λ x25 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if d2 then false else true )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> d8 ) ) ) $ ( true ) ) ) ) $ ( if false then true else p1 )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if true then d8 else d18 ) ) ) $ ( if p1 then false else p1 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> x36 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if p1 then p1 else d8 ) ) ) $ ( if d20 then d14 else false )
        d38 : if true then if true then Bool else Bool else if false then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if d26 then d18 else x39 ) ) ) $ ( if true then true else true )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> ( ( Set -> Set ) ∋ ( ( λ x42 -> Bool ) ) ) $ ( x41 ) ) ) ) $ ( if true then Bool else Bool )
        d40 = if if true then p1 else p1 then if d18 then d18 else p1 else if d5 then true else p1
        d43 : if false then if false then Bool else Bool else if false then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> x45 ) ) ) $ ( true ) ) ) ) $ ( if p1 then d5 else true )
        d46 : if false then if true then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if x47 then d18 else false ) ) ) $ ( if d26 then false else true )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if false then x50 else Bool ) ) ) $ ( if true then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if x49 then x49 else x49 ) ) ) $ ( if d40 then p1 else false )
        d51 : if true then if false then Bool else Bool else if true then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if true then true else false ) ) ) $ ( if p1 then d23 else false )
        d53 : if false then if false then Bool else Bool else if true then Bool else Bool
        d53 = if if false then true else false then if true then true else true else if d38 then d48 else false
        d54 : if true then if false then Bool else Bool else if true then Bool else Bool
        d54 = if if d34 then d8 else true then if d26 then d34 else false else if false then true else true
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> Bool ) ) ) $ ( x56 ) ) ) ) $ ( if false then Bool else Bool )
        d55 = if if p1 then true else true then if p1 then p1 else d48 else if p1 then d46 else p1
        d58 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if true then x61 else Bool ) ) ) $ ( if true then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> d26 ) ) ) $ ( d18 ) ) ) ) $ ( if p1 then d26 else true )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if p1 then d58 else x63 ) ) ) $ ( if p1 then p1 else d8 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if true then true else p1 ) ) ) $ ( if p1 then p1 else false )
        d70 : if false then if true then Bool else Bool else if true then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> if false then p1 else true ) ) ) $ ( if d30 then d30 else d48 )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> x75 ) ) ) $ ( x74 ) ) ) ) $ ( if false then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if p1 then x73 else p1 ) ) ) $ ( if d43 then true else false )
        d76 : if true then if false then Bool else Bool else if true then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> true ) ) ) $ ( d2 ) ) ) ) $ ( if p1 then p1 else d40 )
        d79 : if false then if true then Bool else Bool else if false then Bool else Bool
        d79 = if if false then false else p1 then if d54 then p1 else p1 else if p1 then d43 else false
        d80 : if true then if true then Bool else Bool else if false then Bool else Bool
        d80 = if if false then true else p1 then if d48 then d72 else true else if p1 then d38 else d20
        d81 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> x85 ) ) ) $ ( x84 ) ) ) ) $ ( if true then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if p1 then d66 else p1 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if true then x89 else x89 ) ) ) $ ( if false then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> d30 ) ) ) $ ( d34 ) ) ) ) $ ( if d54 then d54 else d55 )
        d90 : if false then if false then Bool else Bool else if true then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if p1 then d53 else x91 ) ) ) $ ( if p1 then d53 else p1 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if true then x93 else Bool ) ) ) $ ( if true then Bool else Bool )
        d92 = if if true then d51 else p1 then if d26 then p1 else true else if d66 then d72 else p1
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if false then Bool else x95 ) ) ) $ ( if true then Bool else Bool )
        d94 = if if d90 then d43 else d62 then if false then d81 else false else if false then d14 else d18
        d96 : if true then if true then Bool else Bool else if true then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if d86 then p1 else false ) ) ) $ ( if false then true else d48 )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d98 = if if d12 then p1 else d76 then if true then false else p1 else if d53 then false else d58
        d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> x102 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d101 = if if p1 then p1 else d43 then if d5 then true else d48 else if p1 then p1 else p1
        d104 : if true then if true then Bool else Bool else if false then Bool else Bool
        d104 = if if d23 then p1 else false then if p1 then p1 else false else if p1 then p1 else p1
        d105 : if true then if false then Bool else Bool else if true then Bool else Bool
        d105 = if if true then p1 else d12 then if p1 then p1 else true else if p1 then p1 else d34
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d106 = if if d38 then p1 else true then if p1 then false else true else if p1 then d96 else false
        d108 : if true then if true then Bool else Bool else if false then Bool else Bool
        d108 = if if p1 then d96 else p1 then if p1 then d66 else d18 else if d48 then false else p1
        d109 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if true then x112 else x112 ) ) ) $ ( if true then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x111 -> false ) ) ) $ ( d14 ) ) ) ) $ ( if d106 then d46 else true )
        d113 : if false then if true then Bool else Bool else if true then Bool else Bool
        d113 = if if d23 then d51 else d8 then if d30 then p1 else false else if d23 then true else p1
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d114 = if if p1 then true else d58 then if d108 then d66 else d54 else if d101 then d43 else d54
        d116 : if false then if false then Bool else Bool else if false then Bool else Bool
        d116 = if if p1 then false else p1 then if false then d105 else false else if d23 then d98 else false
        d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> x118 ) ) ) $ ( x118 ) ) ) ) $ ( if false then Bool else Bool )
        d117 = if if p1 then d80 else p1 then if false then true else d14 else if p1 then true else false
        d120 : if false then if false then Bool else Bool else if false then Bool else Bool
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if p1 then p1 else false ) ) ) $ ( if d62 then d94 else d104 )
        d122 : if true then if false then Bool else Bool else if true then Bool else Bool
        d122 = if if false then false else p1 then if false then d72 else true else if true then p1 else d104
        d123 : if true then if false then Bool else Bool else if true then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> if true then x124 else d92 ) ) ) $ ( if true then d79 else p1 )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x126 -> ( ( Set -> Set ) ∋ ( ( λ x127 -> x126 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d125 = if if p1 then p1 else d12 then if d46 then true else d62 else if true then d72 else false
        d128 : if true then if false then Bool else Bool else if true then Bool else Bool
        d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> if x129 then true else true ) ) ) $ ( if p1 then true else d76 )
    module M'  = M ( true ) 