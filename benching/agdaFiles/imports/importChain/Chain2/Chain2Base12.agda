module Chain2Base12  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if true then Bool else Bool )  where
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then x4 else Bool ) ) ) $ ( if false then Bool else Bool )
        d3 = if if p2 then false else p1 then if p1 then p2 else true else if false then false else p2
        d5 : if false then if false then Bool else Bool else if false then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> p1 ) ) ) $ ( d3 ) ) ) ) $ ( if p2 then true else d3 )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if false then x9 else x9 ) ) ) $ ( if false then Bool else Bool )
        d8 = if if p1 then true else true then if d5 then false else p2 else if d5 then true else p1
        d10 : if true then if true then Bool else Bool else if false then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if x11 then x11 else d3 ) ) ) $ ( if p2 then p2 else true )
        d12 : if true then if false then Bool else Bool else if false then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> d5 ) ) ) $ ( d5 ) ) ) ) $ ( if false then d10 else d10 )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> if true then x16 else Bool ) ) ) $ ( if false then Bool else Bool )
        d15 = if if d12 then true else false then if false then p1 else d5 else if p2 then d10 else p2
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> Bool ) ) ) $ ( x18 ) ) ) ) $ ( if true then Bool else Bool )
        d17 = if if false then p1 else p1 then if false then d5 else d5 else if d5 then p2 else p2
        d20 : if true then if true then Bool else Bool else if false then Bool else Bool
        d20 = if if p2 then d17 else false then if false then p2 else d17 else if true then d10 else false
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> Bool ) ) ) $ ( x22 ) ) ) ) $ ( if false then Bool else Bool )
        d21 = if if p2 then d5 else true then if d3 then false else false else if p1 then p1 else true
        d24 : if false then if false then Bool else Bool else if true then Bool else Bool
        d24 = if if true then p2 else p2 then if p1 then d21 else p1 else if p1 then p1 else d10
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if true then x26 else x26 ) ) ) $ ( if false then Bool else Bool )
        d25 = if if p2 then d21 else p1 then if false then d15 else p1 else if d10 then d10 else d15
        d27 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> false ) ) ) $ ( true ) ) ) ) $ ( if p2 then true else false )
        d31 : if true then if false then Bool else Bool else if true then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> d25 ) ) ) $ ( p1 ) ) ) ) $ ( if false then p1 else d3 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x36 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if d24 then true else d12 ) ) ) $ ( if p2 then p2 else false )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then Bool else x40 ) ) ) $ ( if false then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> false ) ) ) $ ( d12 ) ) ) ) $ ( if false then d27 else d27 )
        d41 : if true then if false then Bool else Bool else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> p2 ) ) ) $ ( x42 ) ) ) ) $ ( if d27 then d17 else p1 )
        d44 : if true then if false then Bool else Bool else if true then Bool else Bool
        d44 = if if p1 then true else false then if d21 then true else d12 else if d37 then true else false
        d45 : if true then if true then Bool else Bool else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if d15 then true else d37 ) ) ) $ ( if true then p2 else true )
        d47 : if true then if true then Bool else Bool else if false then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> d34 ) ) ) $ ( x48 ) ) ) ) $ ( if true then false else true )
        d50 : if true then if false then Bool else Bool else if false then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if p2 then false else p1 ) ) ) $ ( if p1 then d21 else d8 )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d52 = if if d37 then d3 else p2 then if d3 then p1 else p2 else if d3 then p1 else d3
        d55 : if false then if false then Bool else Bool else if true then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if x56 then false else d50 ) ) ) $ ( if p1 then d20 else p2 )
        d57 : if true then if false then Bool else Bool else if false then Bool else Bool
        d57 = if if p2 then false else true then if d25 then false else d41 else if true then false else d47
        d58 : if true then if true then Bool else Bool else if false then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if p2 then true else d52 ) ) ) $ ( if false then p1 else d3 )
        d60 : if true then if true then Bool else Bool else if false then Bool else Bool
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if d50 then true else true ) ) ) $ ( if d58 then true else p2 )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> Bool ) ) ) $ ( x63 ) ) ) ) $ ( if false then Bool else Bool )
        d62 = if if p1 then p1 else p2 then if d10 then false else true else if false then d20 else d41
        d65 : ( ( Set -> Set ) ∋ ( ( λ x66 -> if true then x66 else x66 ) ) ) $ ( if true then Bool else Bool )
        d65 = if if d57 then p1 else d62 then if p1 then p1 else p1 else if true then d25 else d34
        d67 : if true then if true then Bool else Bool else if true then Bool else Bool
        d67 = if if true then true else false then if false then false else false else if d55 then p1 else p2
        d68 : if false then if false then Bool else Bool else if false then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if d5 then false else false ) ) ) $ ( if d12 then d3 else d8 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> x71 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d70 = if if true then true else d37 then if d60 then p2 else p2 else if p1 then false else d47
        d73 : if false then if false then Bool else Bool else if true then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> d60 ) ) ) $ ( false ) ) ) ) $ ( if d57 then p2 else d52 )
        d76 : if true then if false then Bool else Bool else if true then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if d21 then p1 else d34 ) ) ) $ ( if p1 then d44 else false )
        d78 : if false then if true then Bool else Bool else if false then Bool else Bool
        d78 = if if true then true else p2 then if d25 then p1 else false else if d10 then p2 else p2
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if true then Bool else x80 ) ) ) $ ( if true then Bool else Bool )
        d79 = if if p1 then d8 else d70 then if false then p1 else p2 else if d65 then d57 else d27
        d81 : if true then if true then Bool else Bool else if true then Bool else Bool
        d81 = if if p2 then d79 else false then if d65 then false else p1 else if p1 then false else false
        d82 : if true then if false then Bool else Bool else if true then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if false then false else true ) ) ) $ ( if d20 then false else p1 )
        d84 : if false then if true then Bool else Bool else if false then Bool else Bool
        d84 = if if p2 then false else p1 then if d17 then false else false else if p2 then p1 else d45
        d85 : if false then if true then Bool else Bool else if true then Bool else Bool
        d85 = if if true then true else d76 then if d5 then p2 else false else if false then true else p2
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if false then x87 else x87 ) ) ) $ ( if true then Bool else Bool )
        d86 = if if p1 then d85 else d45 then if true then p2 else true else if true then d20 else false
        d88 : if false then if true then Bool else Bool else if true then Bool else Bool
        d88 = if if p1 then p1 else d84 then if true then false else p1 else if p1 then p1 else p1
        d89 : if true then if true then Bool else Bool else if true then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if d81 then true else true ) ) ) $ ( if p1 then p1 else d78 )
        d91 : if true then if false then Bool else Bool else if false then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> x93 ) ) ) $ ( p1 ) ) ) ) $ ( if d44 then d37 else false )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> x97 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if d68 then false else p1 ) ) ) $ ( if false then d27 else true )
        d98 : if true then if true then Bool else Bool else if true then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if true then p1 else true ) ) ) $ ( if false then p1 else d34 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> ( ( Set -> Set ) ∋ ( ( λ x102 -> x102 ) ) ) $ ( x101 ) ) ) ) $ ( if true then Bool else Bool )
        d100 = if if d47 then p2 else true then if p1 then true else d45 else if true then true else true
        d103 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if false then x105 else x105 ) ) ) $ ( if false then Bool else Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if x104 then false else false ) ) ) $ ( if d70 then p1 else d89 )
        d106 : if false then if false then Bool else Bool else if true then Bool else Bool
        d106 = if if p2 then p1 else p1 then if d24 then d34 else p2 else if d67 then p2 else false
        d107 : if false then if true then Bool else Bool else if false then Bool else Bool
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> x109 ) ) ) $ ( d70 ) ) ) ) $ ( if d10 then true else true )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> x111 ) ) ) $ ( x111 ) ) ) ) $ ( if false then Bool else Bool )
        d110 = if if p2 then p2 else true then if p2 then p1 else d58 else if true then p1 else false
        d113 : if true then if false then Bool else Bool else if false then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> x114 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then true else d76 )
    module M'  = M ( true ) 