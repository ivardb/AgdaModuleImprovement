module Decl50Base7  where
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
        d1 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1 = if if false then true else true then if false then true else true else if true then false else false
        d2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> ( ( Set -> Set ) ∋ ( ( λ x4 -> Bool ) ) ) $ ( x3 ) ) ) ) $ ( if true then Bool else Bool )
        d2 = if if d1 then false else d1 then if d1 then true else d1 else if true then d1 else d1
        d5 : if false then if true then Bool else Bool else if true then Bool else Bool
        d5 = if if d2 then true else false then if false then d2 else false else if d2 then false else true
        d6 : if false then if true then Bool else Bool else if false then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> x7 ) ) ) $ ( d1 ) ) ) ) $ ( if d2 then true else false )
        d9 : if false then if false then Bool else Bool else if false then Bool else Bool
        d9 = if if false then false else false then if false then false else false else if d5 then d6 else d2
        d10 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if false then Bool else x12 ) ) ) $ ( if false then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if x11 then x11 else d6 ) ) ) $ ( if d9 then d5 else false )
        d13 : if true then if true then Bool else Bool else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> x15 ) ) ) $ ( d9 ) ) ) ) $ ( if true then d10 else true )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if d6 then false else d5 ) ) ) $ ( if false then d13 else true )
        d20 : if false then if false then Bool else Bool else if false then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> x21 ) ) ) $ ( d5 ) ) ) ) $ ( if d1 then d1 else d1 )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> Bool ) ) ) $ ( x24 ) ) ) ) $ ( if true then Bool else Bool )
        d23 = if if false then d13 else false then if d6 then d10 else d1 else if true then d5 else false
        d26 : if true then if false then Bool else Bool else if true then Bool else Bool
        d26 = if if d13 then d5 else true then if true then false else false else if true then false else false
        d27 : if false then if true then Bool else Bool else if true then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if true then true else x28 ) ) ) $ ( if false then d10 else true )
        d29 : if true then if false then Bool else Bool else if true then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> d13 ) ) ) $ ( true ) ) ) ) $ ( if d27 then d2 else true )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( x33 ) ) ) ) $ ( if false then Bool else Bool )
        d32 = if if true then d23 else d1 then if d20 then d20 else d13 else if d5 then false else false
        d35 : if false then if true then Bool else Bool else if false then Bool else Bool
        d35 = if if d6 then false else true then if d9 then false else d13 else if false then false else true
        d36 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if true then Bool else x39 ) ) ) $ ( if false then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> d35 ) ) ) $ ( x37 ) ) ) ) $ ( if false then d9 else d10 )
        d40 : if false then if true then Bool else Bool else if false then Bool else Bool
        d40 = if if d29 then true else true then if true then true else true else if d16 then d13 else false
        d41 : if true then if true then Bool else Bool else if false then Bool else Bool
        d41 = if if d13 then d1 else false then if true then d13 else false else if false then d35 else d26
        d42 : if false then if false then Bool else Bool else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> d9 ) ) ) $ ( d16 ) ) ) ) $ ( if false then false else false )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if d41 then true else true ) ) ) $ ( if d35 then true else d16 )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if false then Bool else x51 ) ) ) $ ( if true then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> d23 ) ) ) $ ( x49 ) ) ) ) $ ( if false then d27 else d36 )
        d52 : if true then if true then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> d26 ) ) ) $ ( d13 ) ) ) ) $ ( if false then true else true )
        d55 : if true then if false then Bool else Bool else if true then Bool else Bool
        d55 = if if d48 then d1 else d42 then if true then true else true else if d26 then false else true
        d56 : if true then if true then Bool else Bool else if true then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if d41 then x57 else true ) ) ) $ ( if d5 then d9 else d5 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d58 = if if true then d23 else false then if false then d2 else false else if true then d52 else false
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if true then x61 else x61 ) ) ) $ ( if false then Bool else Bool )
        d60 = if if d23 then d56 else false then if d16 then d48 else d56 else if true then false else d10
        d62 : if false then if true then Bool else Bool else if true then Bool else Bool
        d62 = if if false then false else d27 then if d48 then true else d29 else if false then true else true
        d63 : if true then if false then Bool else Bool else if true then Bool else Bool
        d63 = if if false then false else d42 then if d13 then false else false else if false then d2 else d56
        d64 : if false then if false then Bool else Bool else if false then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> x65 ) ) ) $ ( d36 ) ) ) ) $ ( if d58 then d29 else d9 )
        d67 : if true then if true then Bool else Bool else if true then Bool else Bool
        d67 = if if true then false else true then if false then d52 else true else if true then d5 else d42
        d68 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> x72 ) ) ) $ ( x71 ) ) ) ) $ ( if true then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> d2 ) ) ) $ ( false ) ) ) ) $ ( if d52 then false else d35 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if true then x75 else x75 ) ) ) $ ( if false then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if x74 then false else x74 ) ) ) $ ( if d27 then true else false )
        d76 : if true then if false then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if d26 then true else x77 ) ) ) $ ( if true then false else true )
        d78 : if true then if true then Bool else Bool else if true then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( x79 ) ) ) ) $ ( if d9 then d56 else d26 )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if false then x82 else x82 ) ) ) $ ( if false then Bool else Bool )
        d81 = if if true then false else true then if d40 then d56 else d45 else if d6 then true else false
        d83 : if true then if true then Bool else Bool else if true then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> ( ( Bool -> Bool ) ∋ ( ( λ x85 -> d73 ) ) ) $ ( d42 ) ) ) ) $ ( if d42 then true else false )
        d86 : if true then if false then Bool else Bool else if true then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if d16 then true else x87 ) ) ) $ ( if false then d56 else d55 )
        d88 : if false then if true then Bool else Bool else if false then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> x89 ) ) ) $ ( x89 ) ) ) ) $ ( if d64 then d36 else false )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> Bool ) ) ) $ ( x93 ) ) ) ) $ ( if true then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if d36 then x92 else d83 ) ) ) $ ( if d20 then d83 else false )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> Bool ) ) ) $ ( x96 ) ) ) ) $ ( if false then Bool else Bool )
        d95 = if if true then d48 else d20 then if false then true else d86 else if d13 then true else d56
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> x99 ) ) ) $ ( x99 ) ) ) ) $ ( if false then Bool else Bool )
        d98 = if if d23 then d6 else d52 then if d27 then false else d2 else if d81 then d63 else true
        d101 : if false then if true then Bool else Bool else if true then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> if x102 then false else x102 ) ) ) $ ( if d48 then d26 else true )
        d103 : if false then if false then Bool else Bool else if true then Bool else Bool
        d103 = if if d23 then true else true then if d32 then d16 else false else if d86 then d76 else true
        d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if true then Bool else x105 ) ) ) $ ( if true then Bool else Bool )
        d104 = if if true then d41 else d2 then if d5 then d78 else true else if d73 then true else true
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d106 = if if d40 then true else true then if true then d60 else d91 else if d26 then d67 else d91
        d109 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> x113 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x111 -> d98 ) ) ) $ ( true ) ) ) ) $ ( if false then d40 else true )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> Bool ) ) ) $ ( x116 ) ) ) ) $ ( if false then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if true then true else d40 ) ) ) $ ( if d23 then d36 else d63 )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> x120 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d118 = if if d6 then false else true then if d83 then d101 else true else if d62 then true else true
        d121 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( ( Bool -> Bool ) ∋ ( ( λ x123 -> d83 ) ) ) $ ( d91 ) ) ) ) $ ( if d91 then false else false )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d126 = if if false then true else true then if false then d114 else false else if d98 then d81 else d88