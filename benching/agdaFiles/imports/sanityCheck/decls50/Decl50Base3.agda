module Decl50Base3  where
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
        d1 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1 = if if false then false else false then if false then true else false else if false then false else false
        d2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if false then x3 else Bool ) ) ) $ ( if true then Bool else Bool )
        d2 = if if false then false else false then if d1 then false else d1 else if true then true else false
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> ( ( Set -> Set ) ∋ ( ( λ x6 -> x6 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d4 = if if d1 then d1 else d1 then if d1 then true else false else if d2 then true else false
        d7 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if d2 then x8 else x8 ) ) ) $ ( if d4 then d1 else d2 )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d10 = if if true then false else d2 then if false then false else d1 else if true then d2 else d2
        d13 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if true then x15 else x15 ) ) ) $ ( if false then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if false then x14 else x14 ) ) ) $ ( if d4 then true else d4 )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> x18 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d16 = if if false then d1 else false then if true then d13 else d2 else if false then true else d2
        d19 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> d4 ) ) ) $ ( x20 ) ) ) ) $ ( if d13 then false else d1 )
        d24 : if false then if false then Bool else Bool else if true then Bool else Bool
        d24 = if if d19 then d2 else false then if d13 then false else true else if d2 then d13 else false
        d25 : ( ( Set -> Set ) ∋ ( ( λ x27 -> if true then x27 else Bool ) ) ) $ ( if false then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if x26 then false else d4 ) ) ) $ ( if d13 then true else true )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> Bool ) ) ) $ ( x29 ) ) ) ) $ ( if false then Bool else Bool )
        d28 = if if d7 then d10 else true then if d13 then false else d7 else if d16 then d7 else d13
        d31 : if true then if true then Bool else Bool else if false then Bool else Bool
        d31 = if if d19 then d19 else d10 then if d4 then d2 else d28 else if false then false else true
        d32 : if false then if true then Bool else Bool else if false then Bool else Bool
        d32 = if if d10 then d1 else false then if true then false else d10 else if true then d16 else true
        d33 : if false then if true then Bool else Bool else if true then Bool else Bool
        d33 = if if true then d31 else d24 then if d16 then d2 else d19 else if d28 then d32 else false
        d34 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> x35 ) ) ) $ ( d31 ) ) ) ) $ ( if d13 then true else d10 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> Bool ) ) ) $ ( x40 ) ) ) ) $ ( if false then Bool else Bool )
        d39 = if if false then true else d19 then if d24 then false else d32 else if d16 then false else d16
        d42 : ( ( Set -> Set ) ∋ ( ( λ x45 -> ( ( Set -> Set ) ∋ ( ( λ x46 -> Bool ) ) ) $ ( x45 ) ) ) ) $ ( if false then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> x44 ) ) ) $ ( d13 ) ) ) ) $ ( if true then d1 else d2 )
        d47 : if false then if false then Bool else Bool else if false then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> true ) ) ) $ ( d10 ) ) ) ) $ ( if false then d10 else false )
        d50 : if true then if false then Bool else Bool else if true then Bool else Bool
        d50 = if if d19 then d42 else true then if true then true else d32 else if d34 then true else false
        d51 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> x53 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if x52 then d2 else d39 ) ) ) $ ( if false then false else false )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> Bool ) ) ) $ ( x56 ) ) ) ) $ ( if false then Bool else Bool )
        d55 = if if d50 then true else d16 then if d16 then d34 else d7 else if d47 then false else d31
        d58 : if true then if true then Bool else Bool else if false then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> false ) ) ) $ ( true ) ) ) ) $ ( if d51 then true else d33 )
        d61 : if false then if true then Bool else Bool else if true then Bool else Bool
        d61 = if if true then false else d50 then if d31 then false else d39 else if d39 then d47 else d58
        d62 : if true then if false then Bool else Bool else if false then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> d47 ) ) ) $ ( false ) ) ) ) $ ( if d32 then d1 else d1 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d65 = if if false then d34 else d1 then if d58 then d34 else d33 else if false then true else d58
        d68 : if false then if true then Bool else Bool else if true then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> d61 ) ) ) $ ( false ) ) ) ) $ ( if d39 then true else d50 )
        d71 : if false then if false then Bool else Bool else if false then Bool else Bool
        d71 = if if d55 then d10 else true then if false then d10 else false else if d42 then d68 else d50
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x74 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d72 = if if true then d47 else false then if d61 then d61 else d34 else if false then d24 else true
        d75 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> x76 ) ) ) $ ( true ) ) ) ) $ ( if true then d68 else false )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if true then Bool else x80 ) ) ) $ ( if true then Bool else Bool )
        d79 = if if d33 then true else true then if false then false else d4 else if d33 then false else d2
        d81 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> x83 ) ) ) $ ( x82 ) ) ) ) $ ( if true then Bool else Bool )
        d81 = if if d65 then d58 else d79 then if false then true else false else if d71 then true else false
        d84 : if true then if false then Bool else Bool else if true then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if x85 then x85 else x85 ) ) ) $ ( if d75 then d10 else true )
        d86 : if true then if true then Bool else Bool else if true then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if true then x87 else d84 ) ) ) $ ( if true then false else false )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d88 = if if false then false else false then if d62 then d55 else false else if true then true else d1
        d91 : if false then if false then Bool else Bool else if false then Bool else Bool
        d91 = if if true then true else d10 then if d51 then true else true else if d62 then true else d7
        d92 : if false then if false then Bool else Bool else if false then Bool else Bool
        d92 = if if false then true else true then if d24 then d88 else true else if true then d79 else true
        d93 : if false then if true then Bool else Bool else if false then Bool else Bool
        d93 = if if d86 then true else true then if d50 then d58 else false else if true then false else true
        d94 : if true then if false then Bool else Bool else if false then Bool else Bool
        d94 = if if false then false else false then if false then false else d10 else if d86 then true else false
        d95 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> x96 ) ) ) $ ( x96 ) ) ) ) $ ( if true then Bool else Bool )
        d95 = if if d32 then false else false then if true then false else true else if true then false else false
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d98 = if if false then true else d7 then if false then d39 else d28 else if true then d2 else true
        d100 : if false then if false then Bool else Bool else if false then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if x101 then true else true ) ) ) $ ( if true then d72 else d31 )
        d102 : if true then if true then Bool else Bool else if false then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> false ) ) ) $ ( true ) ) ) ) $ ( if false then true else d65 )
        d105 : if false then if false then Bool else Bool else if true then Bool else Bool
        d105 = if if false then d75 else false then if d13 then d39 else true else if d75 then false else d102
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d106 = if if true then false else d65 then if true then d16 else d100 else if d7 then d33 else d95
        d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( x109 ) ) ) ) $ ( if true then Bool else Bool )
        d108 = if if d86 then true else d91 then if true then d91 else d71 else if d13 then d65 else d68
        d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> x112 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d111 = if if d19 then d16 else d10 then if d71 then d65 else d98 else if false then true else d7
        d114 : if true then if false then Bool else Bool else if true then Bool else Bool
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if x115 then false else false ) ) ) $ ( if d61 then false else d47 )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d116 = if if true then d72 else false then if d1 then d79 else d50 else if d102 then true else d106
        d119 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> d16 ) ) ) $ ( x120 ) ) ) ) $ ( if d81 then d86 else d42 )
        d123 : if true then if true then Bool else Bool else if false then Bool else Bool
        d123 = if if d68 then false else false then if true then true else false else if true then d16 else d98