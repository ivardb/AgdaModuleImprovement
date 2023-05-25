module Chain3Base11  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then x4 else x4 ) ) ) $ ( Bool ) ) ( p5 : if true then Bool else Bool )  where
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d6 = if if p3 then false else true then if p5 then true else true else if p3 then p3 else p5
        d8 : if false then if true then Bool else Bool else if true then Bool else Bool
        d8 = if if true then p1 else p5 then if true then p3 else p5 else if true then false else d6
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if true then x10 else x10 ) ) ) $ ( if false then Bool else Bool )
        d9 = if if true then d8 else p5 then if d8 then false else false else if false then p5 else p5
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if false then Bool else x12 ) ) ) $ ( if false then Bool else Bool )
        d11 = if if true then p1 else d6 then if p1 then d6 else p1 else if true then d9 else d9
        d13 : if false then if false then Bool else Bool else if true then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if d9 then d6 else d8 ) ) ) $ ( if d9 then p5 else p5 )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> p1 ) ) ) $ ( x16 ) ) ) ) $ ( if false then p5 else d13 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if false then x23 else x23 ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> p1 ) ) ) $ ( x21 ) ) ) ) $ ( if d6 then p5 else d6 )
        d24 : if false then if true then Bool else Bool else if false then Bool else Bool
        d24 = if if false then true else p5 then if d20 then p5 else false else if true then false else d8
        d25 : if true then if false then Bool else Bool else if false then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if p1 then true else d9 ) ) ) $ ( if d20 then false else p5 )
        d27 : if false then if false then Bool else Bool else if true then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> d8 ) ) ) $ ( true ) ) ) ) $ ( if p5 then true else d20 )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d30 = if if p5 then p5 else false then if p3 then p3 else d8 else if p5 then p5 else false
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> Bool ) ) ) $ ( x34 ) ) ) ) $ ( if false then Bool else Bool )
        d33 = if if false then d6 else d25 then if d11 then p3 else false else if true then p3 else d6
        d36 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> x39 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if false then x37 else true ) ) ) $ ( if d11 then d11 else d30 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> x43 ) ) ) $ ( x43 ) ) ) ) $ ( if true then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> p1 ) ) ) $ ( x41 ) ) ) ) $ ( if d13 then p3 else false )
        d45 : if true then if false then Bool else Bool else if true then Bool else Bool
        d45 = if if d24 then p3 else d9 then if false then false else p1 else if d20 then false else d15
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if false then x49 else x49 ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> d24 ) ) ) $ ( x47 ) ) ) ) $ ( if p5 then p5 else p3 )
        d50 : if false then if true then Bool else Bool else if false then Bool else Bool
        d50 = if if p3 then true else p5 then if false then d46 else p1 else if d36 then d6 else true
        d51 : if true then if false then Bool else Bool else if true then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> d8 ) ) ) $ ( d30 ) ) ) ) $ ( if d11 then d40 else true )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d54 = if if true then true else false then if p3 then p1 else true else if p3 then d15 else p3
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d56 = if if false then false else d54 then if d51 then p3 else p1 else if d54 then d50 else false
        d58 : if false then if false then Bool else Bool else if false then Bool else Bool
        d58 = if if d27 then d15 else true then if d36 then d33 else d25 else if p1 then d51 else true
        d59 : if true then if false then Bool else Bool else if true then Bool else Bool
        d59 = if if true then p3 else p5 then if d15 then p5 else d46 else if p1 then p5 else true
        d60 : if true then if true then Bool else Bool else if true then Bool else Bool
        d60 = if if p1 then p3 else d50 then if p3 then true else false else if p5 then p1 else p1
        d61 : if true then if true then Bool else Bool else if false then Bool else Bool
        d61 = if if false then p3 else true then if true then p1 else d58 else if p5 then false else false
        d62 : if false then if true then Bool else Bool else if true then Bool else Bool
        d62 = if if d60 then false else p1 then if true then p5 else true else if p3 then p1 else true
        d63 : ( ( Set -> Set ) ∋ ( ( λ x65 -> ( ( Set -> Set ) ∋ ( ( λ x66 -> Bool ) ) ) $ ( x65 ) ) ) ) $ ( if false then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> if d9 then true else d11 ) ) ) $ ( if true then true else false )
        d67 : if true then if false then Bool else Bool else if false then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> x69 ) ) ) $ ( true ) ) ) ) $ ( if d61 then false else p5 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x74 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if d36 then true else false )
        d75 : if false then if false then Bool else Bool else if true then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if d70 then x76 else p3 ) ) ) $ ( if d54 then p3 else d11 )
        d77 : if true then if true then Bool else Bool else if false then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if false then true else false ) ) ) $ ( if d67 then d60 else d11 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> x81 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d79 = if if d40 then false else p1 then if true then true else d60 else if true then d33 else d60
        d82 : if true then if true then Bool else Bool else if true then Bool else Bool
        d82 = if if d6 then true else p1 then if false then d6 else false else if p5 then p1 else false
        d83 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if true then x85 else Bool ) ) ) $ ( if false then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if false then false else d75 ) ) ) $ ( if p5 then d36 else p1 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> x89 ) ) ) $ ( x89 ) ) ) ) $ ( if true then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> d46 ) ) ) $ ( d62 ) ) ) ) $ ( if p1 then d58 else true )
        d91 : if false then if false then Bool else Bool else if true then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if p5 then d61 else d83 ) ) ) $ ( if true then true else p1 )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> Bool ) ) ) $ ( x96 ) ) ) ) $ ( if true then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> p5 ) ) ) $ ( d9 ) ) ) ) $ ( if true then d86 else d51 )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> x99 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d98 = if if true then false else p5 then if false then d25 else p3 else if p1 then p5 else true
        d101 : if false then if true then Bool else Bool else if true then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> if p1 then false else p1 ) ) ) $ ( if false then p3 else p3 )
        d103 : if true then if true then Bool else Bool else if false then Bool else Bool
        d103 = if if false then d30 else p3 then if d11 then d62 else d82 else if false then d11 else true
        d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if false then x105 else Bool ) ) ) $ ( if true then Bool else Bool )
        d104 = if if d63 then p5 else p1 then if d91 then true else true else if d45 then p1 else false
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> x107 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d106 = if if p3 then d25 else p3 then if false then d60 else p3 else if true then false else false
        d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d109 = if if p3 then p1 else true then if p5 then d63 else p3 else if true then d8 else true
        d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> x112 ) ) ) $ ( x112 ) ) ) ) $ ( if true then Bool else Bool )
        d111 = if if p5 then p5 else p5 then if d45 then false else p1 else if true then p1 else true
        d114 : if true then if true then Bool else Bool else if true then Bool else Bool
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( Bool -> Bool ) ∋ ( ( λ x116 -> p5 ) ) ) $ ( p1 ) ) ) ) $ ( if p3 then d109 else p3 )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> x120 ) ) ) $ ( x119 ) ) ) ) $ ( if false then Bool else Bool )
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> if p1 then p5 else d33 ) ) ) $ ( if true then p3 else d50 )
        d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if true then x122 else Bool ) ) ) $ ( if false then Bool else Bool )
        d121 = if if d79 then true else p1 then if d67 then d13 else p5 else if d27 then p1 else p1
        d123 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if false then Bool else x125 ) ) ) $ ( if false then Bool else Bool )
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> if false then d36 else d70 ) ) ) $ ( if d70 then d117 else p1 )
        d126 : if true then if false then Bool else Bool else if false then Bool else Bool
        d126 = if if p3 then false else p1 then if p1 then d46 else false else if d27 then p3 else d27
        d127 : if false then if false then Bool else Bool else if true then Bool else Bool
        d127 = if if d77 then true else p1 then if d86 then false else d98 else if p3 then p5 else false
        d128 : if true then if true then Bool else Bool else if false then Bool else Bool
        d128 = if if true then p5 else p5 then if d62 then false else d9 else if p1 then false else p3
    module M'  = M ( false ) 